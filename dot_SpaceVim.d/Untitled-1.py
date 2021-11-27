#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import re
import os
import signal


def kill_lynx(pid):
    """убийство(pid, signal, /)
    Убейте процесс с сигналом."""
    os.kill(pid, signal.SIGKILL)
    os.waitpid(-1, os.WNOHANG)
    print("lynx killed")

def get_url(url):   
    web_data = ""
    url = "https://www.linux.org.ru/"

    cmd = "lynx -dump -nolist -notitle \"{0}\"".format(url)
    lynx = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    t = threading.Timer(300.0, kill_lynx, args=[lynx.pid])
    t.start()

    web_data = lynx.stdout.read()
    t.cancel()

    web_data = web_data.decode("utf-8", 'replace')
    return web_data

    _LINK_BRACKETS = re.compile(r"\[\d+]", re.U)
    _LEFT_BRACKETS = re.compile(r"\[", re.U)
    _RIGHT_BRACKETS = re.compile(r"]", re.U)
    _NEW_LINE = re.compile(r"([^\r\n])\r?\n([^\r\n])", re.U)
    _SPECIAL_CHARS = re.compile(r"\f|\r|\t|_", re.U)
    _WHITE_SPACE = re.compile(r" [ ]+", re.U)

    MS_CHARS = {
        u"\u2018": "'",
        u"\u2019": "'",
        u"\u201c": "\"",
        u"\u201d": "\"",
        u"\u2020": " ",
        u"\u2026": " ",
         u"\u25BC": " ",
        u"\u2665": " "
    }


def clean_lynx(input):

    for i in MS_CHARS.keys():
        input = input.replace(i, MS_CHARS[i])

        input = _NEW_LINE.sub("\g<1> \g<2>", input)
        input = _LINK_BRACKETS.sub("", input)
        input = _LEFT_BRACKETS.sub("(", input)
        input = _RIGHT_BRACKETS.sub(")", input)
        input = _SPECIAL_CHARS.sub(" ", input)
        input = _WHITE_SPACE.sub(" ", input)

        return input
        

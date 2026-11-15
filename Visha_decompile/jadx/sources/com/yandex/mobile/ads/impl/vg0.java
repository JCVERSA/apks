package com.yandex.mobile.ads.impl;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import defpackage.y45;

public final class vg0 extends WebChromeClient {
    @Override
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        y45.j(consoleMessage, "consoleMessage");
        sp0.f(consoleMessage.message(), consoleMessage.sourceId(), Integer.valueOf(consoleMessage.lineNumber()));
        return true;
    }
}

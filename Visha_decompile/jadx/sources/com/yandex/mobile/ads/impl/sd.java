package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;

public final class sd extends Handler {
    public static final sd a = new sd();

    private sd() {
    }

    @Override
    public final void close() {
    }

    @Override
    public final void flush() {
    }

    @Override
    public final void publish(LogRecord logRecord) {
        int i;
        y45.j(logRecord, "record");
        int i2 = rd.c;
        String loggerName = logRecord.getLoggerName();
        y45.i(loggerName, "getLoggerName(...)");
        int iIntValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        if (iIntValue > level.intValue()) {
            i = 5;
        } else {
            i = logRecord.getLevel().intValue() == level.intValue() ? 4 : 3;
        }
        String message = logRecord.getMessage();
        y45.i(message, "getMessage(...)");
        rd.a(loggerName, i, message, logRecord.getThrown());
    }
}

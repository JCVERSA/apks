package com.amazonaws.logging;

import java.io.PrintStream;

public final class ConsoleLog implements Log {

    private final String f17811a;

    private LogFactory.Level f17812b = null;

    public ConsoleLog(String str) {
        this.f17811a = str;
    }

    private LogFactory.Level l() {
        LogFactory.Level level = this.f17812b;
        return level != null ? level : LogFactory.a();
    }

    private void o(LogFactory.Level level, Object obj, Throwable th2) {
        PrintStream printStream = System.out;
        printStream.printf("%s/%s: %s\n", this.f17811a, level.name(), obj);
        if (th2 != null) {
            printStream.println(th2.toString());
        }
    }

    @Override
    public void a(Object obj) {
        if (b()) {
            o(LogFactory.Level.DEBUG, obj, null);
        }
    }

    @Override
    public boolean b() {
        return l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue();
    }

    @Override
    public boolean c() {
        return l() == null || l().getValue() <= LogFactory.Level.INFO.getValue();
    }

    @Override
    public void d(Object obj) {
        if (c()) {
            o(LogFactory.Level.INFO, obj, null);
        }
    }

    @Override
    public void e(Object obj, Throwable th2) {
        if (h()) {
            o(LogFactory.Level.ERROR, obj, th2);
        }
    }

    @Override
    public void f(Object obj) {
        if (h()) {
            o(LogFactory.Level.ERROR, obj, null);
        }
    }

    @Override
    public void g(Object obj, Throwable th2) {
        if (b()) {
            o(LogFactory.Level.DEBUG, obj, th2);
        }
    }

    @Override
    public boolean h() {
        return l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue();
    }

    @Override
    public void i(Object obj, Throwable th2) {
        if (n()) {
            o(LogFactory.Level.WARN, obj, th2);
        }
    }

    @Override
    public void j(Object obj) {
        if (n()) {
            o(LogFactory.Level.WARN, obj, null);
        }
    }

    @Override
    public void k(Object obj) {
        if (m()) {
            o(LogFactory.Level.TRACE, obj, null);
        }
    }

    public boolean m() {
        return l() == null || l().getValue() <= LogFactory.Level.TRACE.getValue();
    }

    public boolean n() {
        return l() == null || l().getValue() <= LogFactory.Level.WARN.getValue();
    }
}

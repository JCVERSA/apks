package com.amazonaws.logging;

public class AndroidLog implements Log {

    private final String f17809a;

    private LogFactory.Level f17810b = null;

    public AndroidLog(String str) {
        this.f17809a = str;
    }

    private LogFactory.Level l() {
        LogFactory.Level level = this.f17810b;
        return level != null ? level : LogFactory.a();
    }

    @Override
    public void a(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue()) {
            obj.toString();
        }
    }

    @Override
    public boolean b() {
        return android.util.Log.isLoggable(this.f17809a, 3) && (l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue());
    }

    @Override
    public boolean c() {
        return android.util.Log.isLoggable(this.f17809a, 4) && (l() == null || l().getValue() <= LogFactory.Level.INFO.getValue());
    }

    @Override
    public void d(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.INFO.getValue()) {
            obj.toString();
        }
    }

    @Override
    public void e(Object obj, Throwable th2) {
        if (l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue()) {
            android.util.Log.e(this.f17809a, obj.toString(), th2);
        }
    }

    @Override
    public void f(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue()) {
            android.util.Log.e(this.f17809a, obj.toString());
        }
    }

    @Override
    public void g(Object obj, Throwable th2) {
        if (l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue()) {
            obj.toString();
        }
    }

    @Override
    public boolean h() {
        return android.util.Log.isLoggable(this.f17809a, 6) && (l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue());
    }

    @Override
    public void i(Object obj, Throwable th2) {
        if (l() == null || l().getValue() <= LogFactory.Level.WARN.getValue()) {
            android.util.Log.w(this.f17809a, obj.toString(), th2);
        }
    }

    @Override
    public void j(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.WARN.getValue()) {
            android.util.Log.w(this.f17809a, obj.toString());
        }
    }

    @Override
    public void k(Object obj) {
        if (l() == null || l().getValue() <= LogFactory.Level.TRACE.getValue()) {
            android.util.Log.v(this.f17809a, obj.toString());
        }
    }
}

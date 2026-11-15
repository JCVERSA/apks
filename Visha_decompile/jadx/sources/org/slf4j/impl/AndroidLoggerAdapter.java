package org.slf4j.impl;

import android.util.Log;
import defpackage.t44;
import defpackage.tn6;
import org.slf4j.helpers.MarkerIgnoringBase;

class AndroidLoggerAdapter extends MarkerIgnoringBase {
    private static final long serialVersionUID = -1227274521521287937L;

    public AndroidLoggerAdapter(String str) {
        this.name = str;
    }

    public final void a(int i, String str, Object... objArr) {
        if (b(i)) {
            t44 t44VarA = tn6.a(str, objArr);
            d(i, t44VarA.a(), t44VarA.b());
        }
    }

    public final boolean b(int i) {
        return Log.isLoggable(this.name, i);
    }

    public final void c(int i, String str, Throwable th) {
        if (b(i)) {
            d(i, str, th);
        }
    }

    public final void d(int i, String str, Throwable th) {
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        Log.println(i, this.name, str);
    }

    @Override
    public void debug(String str) {
        c(3, str, null);
    }

    @Override
    public void error(String str) {
        c(6, str, null);
    }

    @Override
    public void info(String str) {
        c(4, str, null);
    }

    @Override
    public boolean isDebugEnabled() {
        return b(3);
    }

    @Override
    public boolean isErrorEnabled() {
        return b(6);
    }

    @Override
    public boolean isInfoEnabled() {
        return b(4);
    }

    @Override
    public boolean isTraceEnabled() {
        return b(2);
    }

    @Override
    public boolean isWarnEnabled() {
        return b(5);
    }

    @Override
    public void trace(String str) {
        c(2, str, null);
    }

    @Override
    public void warn(String str) {
        c(5, str, null);
    }

    @Override
    public void debug(String str, Object obj) {
        a(3, str, obj);
    }

    @Override
    public void error(String str, Object obj) {
        a(6, str, obj);
    }

    @Override
    public void info(String str, Object obj) {
        a(4, str, obj);
    }

    @Override
    public void trace(String str, Object obj) {
        a(2, str, obj);
    }

    @Override
    public void warn(String str, Object obj) {
        a(5, str, obj);
    }

    @Override
    public void debug(String str, Object obj, Object obj2) {
        a(3, str, obj, obj2);
    }

    @Override
    public void error(String str, Object obj, Object obj2) {
        a(6, str, obj, obj2);
    }

    @Override
    public void info(String str, Object obj, Object obj2) {
        a(4, str, obj, obj2);
    }

    @Override
    public void trace(String str, Object obj, Object obj2) {
        a(2, str, obj, obj2);
    }

    @Override
    public void warn(String str, Object obj, Object obj2) {
        a(5, str, obj, obj2);
    }

    @Override
    public void debug(String str, Object... objArr) {
        a(3, str, objArr);
    }

    @Override
    public void error(String str, Object... objArr) {
        a(6, str, objArr);
    }

    @Override
    public void info(String str, Object... objArr) {
        a(4, str, objArr);
    }

    @Override
    public void trace(String str, Object... objArr) {
        a(2, str, objArr);
    }

    @Override
    public void warn(String str, Object... objArr) {
        a(5, str, objArr);
    }

    @Override
    public void debug(String str, Throwable th) {
        c(2, str, th);
    }

    @Override
    public void error(String str, Throwable th) {
        c(6, str, th);
    }

    @Override
    public void info(String str, Throwable th) {
        c(4, str, th);
    }

    @Override
    public void trace(String str, Throwable th) {
        c(2, str, th);
    }

    @Override
    public void warn(String str, Throwable th) {
        c(5, str, th);
    }
}

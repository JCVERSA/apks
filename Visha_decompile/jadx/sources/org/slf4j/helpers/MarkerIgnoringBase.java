package org.slf4j.helpers;

import defpackage.qq5;
import org.slf4j.Marker;

public abstract class MarkerIgnoringBase extends NamedLoggerBase implements qq5 {
    private static final long serialVersionUID = 9044267456635152283L;

    @Override
    public abstract void debug(String str);

    @Override
    public abstract void debug(String str, Object obj);

    @Override
    public abstract void debug(String str, Object obj, Object obj2);

    @Override
    public abstract void debug(String str, Throwable th);

    @Override
    public abstract void debug(String str, Object... objArr);

    @Override
    public void debug(Marker marker, String str) {
        debug(str);
    }

    @Override
    public abstract void error(String str);

    @Override
    public abstract void error(String str, Object obj);

    @Override
    public abstract void error(String str, Object obj, Object obj2);

    @Override
    public abstract void error(String str, Throwable th);

    @Override
    public abstract void error(String str, Object... objArr);

    @Override
    public void error(Marker marker, String str) {
        error(str);
    }

    @Override
    public String getName() {
        return super.getName();
    }

    @Override
    public abstract void info(String str);

    @Override
    public abstract void info(String str, Object obj);

    @Override
    public abstract void info(String str, Object obj, Object obj2);

    @Override
    public abstract void info(String str, Throwable th);

    @Override
    public abstract void info(String str, Object... objArr);

    @Override
    public void info(Marker marker, String str) {
        info(str);
    }

    @Override
    public abstract boolean isDebugEnabled();

    @Override
    public boolean isDebugEnabled(Marker marker) {
        return isDebugEnabled();
    }

    @Override
    public abstract boolean isErrorEnabled();

    @Override
    public boolean isErrorEnabled(Marker marker) {
        return isErrorEnabled();
    }

    @Override
    public abstract boolean isInfoEnabled();

    @Override
    public boolean isInfoEnabled(Marker marker) {
        return isInfoEnabled();
    }

    @Override
    public abstract boolean isTraceEnabled();

    @Override
    public boolean isTraceEnabled(Marker marker) {
        return isTraceEnabled();
    }

    @Override
    public abstract boolean isWarnEnabled();

    @Override
    public boolean isWarnEnabled(Marker marker) {
        return isWarnEnabled();
    }

    public String toString() {
        return getClass().getName() + "(" + getName() + ")";
    }

    @Override
    public abstract void trace(String str);

    @Override
    public abstract void trace(String str, Object obj);

    @Override
    public abstract void trace(String str, Object obj, Object obj2);

    @Override
    public abstract void trace(String str, Throwable th);

    @Override
    public abstract void trace(String str, Object... objArr);

    @Override
    public void trace(Marker marker, String str) {
        trace(str);
    }

    @Override
    public abstract void warn(String str);

    @Override
    public abstract void warn(String str, Object obj);

    @Override
    public abstract void warn(String str, Object obj, Object obj2);

    @Override
    public abstract void warn(String str, Throwable th);

    @Override
    public abstract void warn(String str, Object... objArr);

    @Override
    public void warn(Marker marker, String str) {
        warn(str);
    }

    @Override
    public void debug(Marker marker, String str, Object obj) {
        debug(str, obj);
    }

    @Override
    public void error(Marker marker, String str, Object obj) {
        error(str, obj);
    }

    @Override
    public void info(Marker marker, String str, Object obj) {
        info(str, obj);
    }

    @Override
    public void trace(Marker marker, String str, Object obj) {
        trace(str, obj);
    }

    @Override
    public void warn(Marker marker, String str, Object obj) {
        warn(str, obj);
    }

    @Override
    public void debug(Marker marker, String str, Object obj, Object obj2) {
        debug(str, obj, obj2);
    }

    @Override
    public void error(Marker marker, String str, Object obj, Object obj2) {
        error(str, obj, obj2);
    }

    @Override
    public void info(Marker marker, String str, Object obj, Object obj2) {
        info(str, obj, obj2);
    }

    @Override
    public void trace(Marker marker, String str, Object obj, Object obj2) {
        trace(str, obj, obj2);
    }

    @Override
    public void warn(Marker marker, String str, Object obj, Object obj2) {
        warn(str, obj, obj2);
    }

    @Override
    public void debug(Marker marker, String str, Object... objArr) {
        debug(str, objArr);
    }

    @Override
    public void error(Marker marker, String str, Object... objArr) {
        error(str, objArr);
    }

    @Override
    public void info(Marker marker, String str, Object... objArr) {
        info(str, objArr);
    }

    @Override
    public void trace(Marker marker, String str, Object... objArr) {
        trace(str, objArr);
    }

    @Override
    public void warn(Marker marker, String str, Object... objArr) {
        warn(str, objArr);
    }

    @Override
    public void debug(Marker marker, String str, Throwable th) {
        debug(str, th);
    }

    @Override
    public void error(Marker marker, String str, Throwable th) {
        error(str, th);
    }

    @Override
    public void info(Marker marker, String str, Throwable th) {
        info(str, th);
    }

    @Override
    public void trace(Marker marker, String str, Throwable th) {
        trace(str, th);
    }

    @Override
    public void warn(Marker marker, String str, Throwable th) {
        warn(str, th);
    }
}

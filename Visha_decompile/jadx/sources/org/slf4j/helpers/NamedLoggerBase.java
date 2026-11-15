package org.slf4j.helpers;

import defpackage.qq5;
import defpackage.sq5;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.slf4j.Marker;

public abstract class NamedLoggerBase implements qq5, Serializable {
    private static final long serialVersionUID = 7535258609338176893L;
    protected String name;

    @Override
    public abstract void debug(String str);

    public abstract void debug(String str, Object obj);

    public abstract void debug(String str, Object obj, Object obj2);

    public abstract void debug(String str, Throwable th);

    public abstract void debug(String str, Object... objArr);

    public abstract void debug(Marker marker, String str);

    public abstract void debug(Marker marker, String str, Object obj);

    public abstract void debug(Marker marker, String str, Object obj, Object obj2);

    public abstract void debug(Marker marker, String str, Throwable th);

    public abstract void debug(Marker marker, String str, Object... objArr);

    @Override
    public abstract void error(String str);

    public abstract void error(String str, Object obj);

    public abstract void error(String str, Object obj, Object obj2);

    @Override
    public abstract void error(String str, Throwable th);

    public abstract void error(String str, Object... objArr);

    public abstract void error(Marker marker, String str);

    public abstract void error(Marker marker, String str, Object obj);

    public abstract void error(Marker marker, String str, Object obj, Object obj2);

    public abstract void error(Marker marker, String str, Throwable th);

    public abstract void error(Marker marker, String str, Object... objArr);

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public abstract void info(String str);

    public abstract void info(String str, Object obj);

    public abstract void info(String str, Object obj, Object obj2);

    public abstract void info(String str, Throwable th);

    public abstract void info(String str, Object... objArr);

    public abstract void info(Marker marker, String str);

    public abstract void info(Marker marker, String str, Object obj);

    public abstract void info(Marker marker, String str, Object obj, Object obj2);

    public abstract void info(Marker marker, String str, Throwable th);

    public abstract void info(Marker marker, String str, Object... objArr);

    public abstract boolean isDebugEnabled();

    public abstract boolean isDebugEnabled(Marker marker);

    public abstract boolean isErrorEnabled();

    public abstract boolean isErrorEnabled(Marker marker);

    public abstract boolean isInfoEnabled();

    public abstract boolean isInfoEnabled(Marker marker);

    public abstract boolean isTraceEnabled();

    public abstract boolean isTraceEnabled(Marker marker);

    public abstract boolean isWarnEnabled();

    public abstract boolean isWarnEnabled(Marker marker);

    public Object readResolve() throws ObjectStreamException {
        return sq5.j(getName());
    }

    public abstract void trace(String str);

    public abstract void trace(String str, Object obj);

    public abstract void trace(String str, Object obj, Object obj2);

    public abstract void trace(String str, Throwable th);

    public abstract void trace(String str, Object... objArr);

    public abstract void trace(Marker marker, String str);

    public abstract void trace(Marker marker, String str, Object obj);

    public abstract void trace(Marker marker, String str, Object obj, Object obj2);

    public abstract void trace(Marker marker, String str, Throwable th);

    public abstract void trace(Marker marker, String str, Object... objArr);

    @Override
    public abstract void warn(String str);

    @Override
    public abstract void warn(String str, Object obj);

    @Override
    public abstract void warn(String str, Object obj, Object obj2);

    @Override
    public abstract void warn(String str, Throwable th);

    public abstract void warn(String str, Object... objArr);

    public abstract void warn(Marker marker, String str);

    public abstract void warn(Marker marker, String str, Object obj);

    public abstract void warn(Marker marker, String str, Object obj, Object obj2);

    public abstract void warn(Marker marker, String str, Throwable th);

    public abstract void warn(Marker marker, String str, Object... objArr);
}

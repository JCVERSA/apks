package com.google.zxing;

public abstract class ReaderException extends Exception {
    protected static final StackTraceElement[] NO_TRACE;
    protected static boolean isStackTrace;

    static {
        isStackTrace = System.getProperty("surefire.test.class.path") != null;
        NO_TRACE = new StackTraceElement[0];
    }

    ReaderException() {
    }

    public static void setStackTrace(boolean z10) {
        isStackTrace = z10;
    }

    @Override
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }

    ReaderException(Throwable th2) {
        super(th2);
    }
}

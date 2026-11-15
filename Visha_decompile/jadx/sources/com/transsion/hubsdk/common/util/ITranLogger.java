package com.transsion.hubsdk.common.util;

public interface ITranLogger {
    int d(String str, String str2);

    int d(String str, String str2, Throwable th);

    int e(String str, String str2);

    int e(String str, String str2, Throwable th);

    int getLogLevel();

    int i(String str, String str2);

    int i(String str, String str2, Throwable th);

    boolean isLoggable(String str, int i);

    void printStackTrace(Throwable th);

    int setLogLevel(int i);

    int v(String str, String str2);

    int v(String str, String str2, Throwable th);

    int w(String str, String str2);

    int w(String str, String str2, Throwable th);
}

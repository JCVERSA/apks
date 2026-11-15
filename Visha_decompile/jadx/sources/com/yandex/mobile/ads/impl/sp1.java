package com.yandex.mobile.ads.impl;

import java.util.Map;

public interface sp1 {
    void a(op1 op1Var);

    void a(boolean z);

    void reportAnr(Map<Thread, StackTraceElement[]> map);

    void reportError(String str, Throwable th);

    void reportUnhandledException(Throwable th);
}

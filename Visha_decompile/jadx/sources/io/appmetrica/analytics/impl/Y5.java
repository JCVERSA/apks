package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

public class Y5 extends BaseRequestConfig {
    public String a;
    public String b;
    public Hl c;

    public final String b() {
        return this.b;
    }

    @Override
    public String toString() {
        return "CoreRequestConfig{mAppDebuggable='" + this.a + "', mAppSystem='" + this.b + "', startupState=" + this.c + '}';
    }

    @NonNull
    public final String a() {
        return this.a;
    }
}

package io.appmetrica.analytics.impl;

public final class Ne {
    public final String a;
    public final String b;

    public Ne(String str, String str2) {
        this.a = str;
        this.b = a(str2);
    }

    public final String a(String str) {
        if (str == null) {
            return this.a;
        }
        return this.a + str;
    }
}

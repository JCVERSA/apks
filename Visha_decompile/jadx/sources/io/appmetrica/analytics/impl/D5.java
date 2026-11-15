package io.appmetrica.analytics.impl;

import defpackage.y45;

public final class D5 implements Wc {
    public final String a;

    public D5(String str) {
        this.a = str;
    }

    public final D5 a(String str) {
        return new D5(str);
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof D5) && y45.e(this.a, ((D5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ConstantModuleEntryPointProvider(className=" + this.a + ')';
    }

    public static D5 a(D5 d5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = d5.a;
        }
        d5.getClass();
        return new D5(str);
    }

    @Override
    public final String a() {
        return this.a;
    }
}

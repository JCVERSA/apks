package io.appmetrica.analytics.impl;

public abstract class AbstractC2988xd extends Me implements Wk {
    public AbstractC2988xd(Oa oa, String str) {
        super(oa, str);
    }

    public final String c(String str, String str2) {
        return this.a.getString(f(str), str2);
    }

    public final Wk d(String str, String str2) {
        return (Wk) b(f(str), str2);
    }

    public final boolean e(String str) {
        return this.a.a(f(str));
    }

    public abstract String f(String str);

    public Wk g(String str) {
        return (Wk) d(f(str));
    }

    public AbstractC2988xd(Oa oa) {
        this(oa, null);
    }

    public final Wk d(String str, int i) {
        return (Wk) b(f(str), i);
    }

    public final int c(String str, int i) {
        return this.a.getInt(f(str), i);
    }

    public final Wk d(String str, long j) {
        return (Wk) b(f(str), j);
    }

    public final Wk d(String str, boolean z) {
        return (Wk) b(f(str), z);
    }

    public final long c(String str, long j) {
        return this.a.getLong(f(str), j);
    }

    public final boolean c(String str, boolean z) {
        return this.a.getBoolean(f(str), z);
    }
}

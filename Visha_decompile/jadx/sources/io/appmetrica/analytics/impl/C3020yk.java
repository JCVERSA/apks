package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class C3020yk {
    public static final String d = "SESSION_SLEEP_START";
    public static final String e = "SESSION_LAST_EVENT_OFFSET";
    public static final String f = "SESSION_ID";
    public static final String g = "SESSION_COUNTER_ID";
    public static final String h = "SESSION_INIT_TIME";
    public static final String i = "SESSION_IS_ALIVE_REPORT_NEEDED";
    public final String a;

    @NonNull
    protected final Le b;
    public C2687lb c;

    public C3020yk(@NonNull Le le, @NonNull String str) {
        this.b = le;
        this.a = str;
        C2687lb c2687lb = new C2687lb();
        try {
            String strH = le.h(str);
            if (!TextUtils.isEmpty(strH)) {
                c2687lb = new C2687lb(strH);
            }
        } catch (Throwable unused) {
        }
        this.c = c2687lb;
    }

    public final C3020yk a(long j) {
        a(h, Long.valueOf(j));
        return this;
    }

    public final C3020yk b(long j) {
        a(e, Long.valueOf(j));
        return this;
    }

    @Nullable
    public final Long c() {
        return this.c.a(h);
    }

    public final C3020yk d(long j) {
        a(f, Long.valueOf(j));
        return this;
    }

    @Nullable
    public final Long e() {
        return this.c.a(g);
    }

    @Nullable
    public final Long f() {
        return this.c.a(f);
    }

    @Nullable
    public final Long g() {
        return this.c.a(d);
    }

    public final boolean h() {
        return this.c.length() > 0;
    }

    @Nullable
    public final Boolean i() {
        C2687lb c2687lb = this.c;
        c2687lb.getClass();
        try {
            return Boolean.valueOf(c2687lb.getBoolean(i));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final C3020yk a(boolean z) {
        a(i, Boolean.valueOf(z));
        return this;
    }

    public final void b() {
        this.b.e(this.a, this.c.toString());
        this.b.b();
    }

    public final C3020yk c(long j) {
        a(g, Long.valueOf(j));
        return this;
    }

    @Nullable
    public final Long d() {
        return this.c.a(e);
    }

    public final C3020yk e(long j) {
        a(d, Long.valueOf(j));
        return this;
    }

    public final void a(String str, Object obj) {
        try {
            this.c.put(str, obj);
        } catch (Throwable unused) {
        }
    }

    public final void a() {
        this.c = new C2687lb();
        b();
    }
}

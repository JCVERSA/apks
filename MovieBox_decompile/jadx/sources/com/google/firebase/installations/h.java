package com.google.firebase.installations;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class h {

    public static final long f31079b = TimeUnit.HOURS.toSeconds(1);

    private static final Pattern f31080c = Pattern.compile("\\AA[\\w-]{38}\\z");

    private static h f31081d;

    private final nc.a f31082a;

    private h(nc.a aVar) {
        this.f31082a = aVar;
    }

    public static h c() {
        return d(nc.b.a());
    }

    public static h d(nc.a aVar) {
        if (f31081d == null) {
            f31081d = new h(aVar);
        }
        return f31081d;
    }

    static boolean g(String str) {
        return f31080c.matcher(str).matches();
    }

    static boolean h(String str) {
        return str.contains(":");
    }

    public long a() {
        return this.f31082a.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(com.google.firebase.installations.local.b bVar) {
        return TextUtils.isEmpty(bVar.b()) || bVar.h() + bVar.c() < b() + f31079b;
    }
}

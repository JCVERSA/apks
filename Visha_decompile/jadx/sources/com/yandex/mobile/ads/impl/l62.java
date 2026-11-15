package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import defpackage.y45;

public final class l62 {
    private final String a;
    private final String b;
    private final na2 c;

    public l62(String str, String str2, na2 na2Var) {
        y45.j(str, NotificationCompat.CATEGORY_EVENT);
        y45.j(str2, "trackingUrl");
        this.a = str;
        this.b = str2;
        this.c = na2Var;
    }

    public final String a() {
        return this.a;
    }

    public final na2 b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l62)) {
            return false;
        }
        l62 l62Var = (l62) obj;
        return y45.e(this.a, l62Var.a) && y45.e(this.b, l62Var.b) && y45.e(this.c, l62Var.c);
    }

    public final int hashCode() {
        int iA = v3.a(this.b, this.a.hashCode() * 31, 31);
        na2 na2Var = this.c;
        return iA + (na2Var == null ? 0 : na2Var.hashCode());
    }

    public final String toString() {
        return "TrackingEvent(event=" + this.a + ", trackingUrl=" + this.b + ", offset=" + this.c + ")";
    }
}

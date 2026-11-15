package com.cloud.hisavana.sdk;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private int f21069a;

    private String f21070b;

    private long f21071c;

    private String f21072d;

    public b(int i10, String pkg, long j10, String ad_creative_id) {
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(ad_creative_id, "ad_creative_id");
        this.f21069a = i10;
        this.f21070b = pkg;
        this.f21071c = j10;
        this.f21072d = ad_creative_id;
    }

    public final String a() {
        return this.f21072d;
    }

    public final long b() {
        return this.f21071c;
    }

    public final String c() {
        return this.f21070b;
    }

    public final int d() {
        return this.f21069a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f21069a == bVar.f21069a && Intrinsics.c(this.f21070b, bVar.f21070b) && this.f21071c == bVar.f21071c && Intrinsics.c(this.f21072d, bVar.f21072d);
    }

    public int hashCode() {
        return (((((this.f21069a * 31) + this.f21070b.hashCode()) * 31) + androidx.collection.s.a(this.f21071c)) * 31) + this.f21072d.hashCode();
    }

    public String toString() {
        return "AttrImpressionEntity(_id=" + this.f21069a + ", pkg=" + this.f21070b + ", imp_ts=" + this.f21071c + ", ad_creative_id=" + this.f21072d + ')';
    }

    public b(int i10, String str, long j10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, str, (i11 & 4) != 0 ? 0L : j10, str2);
    }
}

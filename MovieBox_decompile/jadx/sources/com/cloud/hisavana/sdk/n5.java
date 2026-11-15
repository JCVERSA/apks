package com.cloud.hisavana.sdk;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n5 {

    private int f22076a;

    private int f22077b;

    private String f22078c;

    private String f22079d;

    private String f22080e;

    private long f22081f;

    private String f22082g;

    public n5(int i10, int i11, String pkg, String dl_type, String codeSeatId, long j10, String ad_creative_id) {
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(dl_type, "dl_type");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(ad_creative_id, "ad_creative_id");
        this.f22076a = i10;
        this.f22077b = i11;
        this.f22078c = pkg;
        this.f22079d = dl_type;
        this.f22080e = codeSeatId;
        this.f22081f = j10;
        this.f22082g = ad_creative_id;
    }

    public final int a() {
        return this.f22077b;
    }

    public final String b() {
        return this.f22082g;
    }

    public final long c() {
        return this.f22081f;
    }

    public final String d() {
        return this.f22080e;
    }

    public final String e() {
        return this.f22079d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n5)) {
            return false;
        }
        n5 n5Var = (n5) obj;
        return this.f22076a == n5Var.f22076a && this.f22077b == n5Var.f22077b && Intrinsics.c(this.f22078c, n5Var.f22078c) && Intrinsics.c(this.f22079d, n5Var.f22079d) && Intrinsics.c(this.f22080e, n5Var.f22080e) && this.f22081f == n5Var.f22081f && Intrinsics.c(this.f22082g, n5Var.f22082g);
    }

    public final String f() {
        return this.f22078c;
    }

    public final int g() {
        return this.f22076a;
    }

    public int hashCode() {
        return (((((((((((this.f22076a * 31) + this.f22077b) * 31) + this.f22078c.hashCode()) * 31) + this.f22079d.hashCode()) * 31) + this.f22080e.hashCode()) * 31) + androidx.collection.s.a(this.f22081f)) * 31) + this.f22082g.hashCode();
    }

    public String toString() {
        return "AttrClickEntity(_id=" + this.f22076a + ", ac_type=" + this.f22077b + ", pkg=" + this.f22078c + ", dl_type=" + this.f22079d + ", codeSeatId=" + this.f22080e + ", click_ts=" + this.f22081f + ", ad_creative_id=" + this.f22082g + ')';
    }

    public n5(int i10, int i11, String str, String str2, String str3, long j10, String str4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11, str, str2, str3, (i12 & 32) != 0 ? 0L : j10, str4);
    }
}

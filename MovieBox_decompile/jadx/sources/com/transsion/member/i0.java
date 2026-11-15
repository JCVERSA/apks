package com.transsion.member;

import com.transsion.member.bean.request.MemberPromoCodeRes;
import kotlin.jvm.internal.Intrinsics;

public final class i0 {

    private final boolean f45117a;

    private final String f45118b;

    private final String f45119c;

    private final MemberPromoCodeRes f45120d;

    public i0(boolean z10, String str, String str2, MemberPromoCodeRes memberPromoCodeRes) {
        this.f45117a = z10;
        this.f45118b = str;
        this.f45119c = str2;
        this.f45120d = memberPromoCodeRes;
    }

    public final String a() {
        return this.f45118b;
    }

    public final MemberPromoCodeRes b() {
        return this.f45120d;
    }

    public final boolean c() {
        return this.f45117a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        return this.f45117a == i0Var.f45117a && Intrinsics.c(this.f45118b, i0Var.f45118b) && Intrinsics.c(this.f45119c, i0Var.f45119c) && Intrinsics.c(this.f45120d, i0Var.f45120d);
    }

    public int hashCode() {
        int iA = androidx.compose.foundation.e.a(this.f45117a) * 31;
        String str = this.f45118b;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45119c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        MemberPromoCodeRes memberPromoCodeRes = this.f45120d;
        return iHashCode2 + (memberPromoCodeRes != null ? memberPromoCodeRes.hashCode() : 0);
    }

    public String toString() {
        return "PromoCodeRes(res=" + this.f45117a + ", code=" + this.f45118b + ", message=" + this.f45119c + ", data=" + this.f45120d + ")";
    }
}

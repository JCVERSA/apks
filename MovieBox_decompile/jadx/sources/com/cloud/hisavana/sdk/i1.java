package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class i1 {

    public static final a f21896f = new a(null);

    private String f21897a;

    private Long f21898b;

    private Integer f21899c;

    private String f21900d;

    private String f21901e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i1 a(DiskTrackingBean bean) {
            Intrinsics.h(bean, "bean");
            i1 i1Var = new i1(null, null, null, null, null, 31, null);
            i1Var.h(bean.getUuid());
            i1Var.c(Long.valueOf(bean.getCreateTime()));
            i1Var.b(Integer.valueOf(bean.getRetryTimes().get()));
            i1Var.f(GsonUtil.d(bean));
            i1Var.d(bean.getMd5());
            return i1Var;
        }

        private a() {
        }
    }

    public i1() {
        this(null, null, null, null, null, 31, null);
    }

    public final Long a() {
        return this.f21898b;
    }

    public final void b(Integer num) {
        this.f21899c = num;
    }

    public final void c(Long l10) {
        this.f21898b = l10;
    }

    public final void d(String str) {
        this.f21901e = str;
    }

    public final String e() {
        return this.f21901e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i1)) {
            return false;
        }
        i1 i1Var = (i1) obj;
        return Intrinsics.c(this.f21897a, i1Var.f21897a) && Intrinsics.c(this.f21898b, i1Var.f21898b) && Intrinsics.c(this.f21899c, i1Var.f21899c) && Intrinsics.c(this.f21900d, i1Var.f21900d) && Intrinsics.c(this.f21901e, i1Var.f21901e);
    }

    public final void f(String str) {
        this.f21900d = str;
    }

    public final Integer g() {
        return this.f21899c;
    }

    public final void h(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f21897a = str;
    }

    public int hashCode() {
        int iHashCode = this.f21897a.hashCode() * 31;
        Long l10 = this.f21898b;
        int iHashCode2 = (iHashCode + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num = this.f21899c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f21900d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f21901e;
        return iHashCode4 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String i() {
        return this.f21900d;
    }

    public final String j() {
        return this.f21897a;
    }

    public String toString() {
        return "RetryTrackingEntity(uuid=" + this.f21897a + ", create_time=" + this.f21898b + ", retry_times=" + this.f21899c + ", tracking_data=" + this.f21900d + ", md5=" + this.f21901e + ')';
    }

    public i1(String uuid, Long l10, Integer num, String str, String str2) {
        Intrinsics.h(uuid, "uuid");
        this.f21897a = uuid;
        this.f21898b = l10;
        this.f21899c = num;
        this.f21900d = str;
        this.f21901e = str2;
    }

    public i1(String str, Long l10, Integer num, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0L : l10, (i10 & 4) != 0 ? 0 : num, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : str3);
    }
}

package com.cloud.hisavana.sdk;

import androidx.room.Ignore;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class s {
    public static final a f = new a(null);
    public String a;
    public Long b;
    public Integer c;
    public String d;
    public String e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s a(DiskTrackingBean diskTrackingBean) {
            y45.j(diskTrackingBean, "bean");
            s sVar = new s();
            sVar.h(diskTrackingBean.getUuid());
            sVar.c(Long.valueOf(diskTrackingBean.getCreateTime()));
            sVar.b(Integer.valueOf(diskTrackingBean.getRetryTimes().get()));
            sVar.f(GsonUtil.d(diskTrackingBean));
            sVar.d(diskTrackingBean.getMd5());
            return sVar;
        }

        public a() {
        }
    }

    public s(String str, Long l, Integer num, String str2, String str3) {
        y45.j(str, "uuid");
        this.a = str;
        this.b = l;
        this.c = num;
        this.d = str2;
        this.e = str3;
    }

    public final Long a() {
        return this.b;
    }

    public final void b(Integer num) {
        this.c = num;
    }

    public final void c(Long l) {
        this.b = l;
    }

    public final void d(String str) {
        this.e = str;
    }

    public final String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return y45.e(this.a, sVar.a) && y45.e(this.b, sVar.b) && y45.e(this.c, sVar.c) && y45.e(this.d, sVar.d) && y45.e(this.e, sVar.e);
    }

    public final void f(String str) {
        this.d = str;
    }

    public final Integer g() {
        return this.c;
    }

    public final void h(String str) {
        y45.j(str, "<set-?>");
        this.a = str;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Integer num = this.c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        return iHashCode4 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String i() {
        return this.d;
    }

    public final String j() {
        return this.a;
    }

    public String toString() {
        return "RetryTrackingEntity(uuid=" + this.a + ", create_time=" + this.b + ", retry_times=" + this.c + ", tracking_data=" + this.d + ", md5=" + this.e + ')';
    }

    @Ignore
    public s() {
        this("", 0L, 0, null, null);
    }
}

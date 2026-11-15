package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class y3 {

    public static final a f22448i = new a(null);

    private int f22449a;

    private String f22450b;

    private String f22451c;

    private String f22452d;

    private Double f22453e;

    private Integer f22454f;

    private Integer f22455g;

    private String f22456h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(List list) {
            if (list == null) {
                return CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdsDTO adsDTO = (AdsDTO) it.next();
                y3 y3Var = new y3(0, null, null, null, null, null, null, null, 255, null);
                y3Var.b(adsDTO.getTableId());
                y3Var.h(adsDTO.getAdCreativeId());
                y3Var.j(adsDTO.getCodeSeatId());
                y3Var.l(adsDTO.getFilePath());
                y3Var.c(adsDTO.getFirstPrice());
                y3Var.g(Integer.valueOf(adsDTO.isOfflineAd() ? 1 : 0));
                y3Var.d(Integer.valueOf(adsDTO.getAdRequestVer()));
                y3Var.e(GsonUtil.d(adsDTO));
                arrayList.add(y3Var);
            }
            return arrayList;
        }

        private a() {
        }
    }

    public y3() {
        this(0, null, null, null, null, null, null, null, 255, null);
    }

    public final String a() {
        return this.f22456h;
    }

    public final void b(int i10) {
        this.f22449a = i10;
    }

    public final void c(Double d10) {
        this.f22453e = d10;
    }

    public final void d(Integer num) {
        this.f22455g = num;
    }

    public final void e(String str) {
        this.f22456h = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y3)) {
            return false;
        }
        y3 y3Var = (y3) obj;
        return this.f22449a == y3Var.f22449a && Intrinsics.c(this.f22450b, y3Var.f22450b) && Intrinsics.c(this.f22451c, y3Var.f22451c) && Intrinsics.c(this.f22452d, y3Var.f22452d) && Intrinsics.c(this.f22453e, y3Var.f22453e) && Intrinsics.c(this.f22454f, y3Var.f22454f) && Intrinsics.c(this.f22455g, y3Var.f22455g) && Intrinsics.c(this.f22456h, y3Var.f22456h);
    }

    public final String f() {
        return this.f22450b;
    }

    public final void g(Integer num) {
        this.f22454f = num;
    }

    public final void h(String str) {
        this.f22450b = str;
    }

    public int hashCode() {
        int i10 = this.f22449a * 31;
        String str = this.f22450b;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f22451c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f22452d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d10 = this.f22453e;
        int iHashCode4 = (iHashCode3 + (d10 == null ? 0 : d10.hashCode())) * 31;
        Integer num = this.f22454f;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f22455g;
        int iHashCode6 = (iHashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.f22456h;
        return iHashCode6 + (str4 != null ? str4.hashCode() : 0);
    }

    public final Integer i() {
        return this.f22455g;
    }

    public final void j(String str) {
        this.f22451c = str;
    }

    public final String k() {
        return this.f22451c;
    }

    public final void l(String str) {
        this.f22452d = str;
    }

    public final String m() {
        return this.f22452d;
    }

    public final Double n() {
        return this.f22453e;
    }

    public final int o() {
        return this.f22449a;
    }

    public final Integer p() {
        return this.f22454f;
    }

    public String toString() {
        return "AdListEntity(_id=" + this.f22449a + ", ad_creative_id=" + this.f22450b + ", codeSeatId=" + this.f22451c + ", file_path=" + this.f22452d + ", price=" + this.f22453e + ", is_offline_ad=" + this.f22454f + ", ad_request_ver=" + this.f22455g + ", ad_bean=" + this.f22456h + ')';
    }

    public y3(int i10, String str, String str2, String str3, Double d10, Integer num, Integer num2, String str4) {
        this.f22449a = i10;
        this.f22450b = str;
        this.f22451c = str2;
        this.f22452d = str3;
        this.f22453e = d10;
        this.f22454f = num;
        this.f22455g = num2;
        this.f22456h = str4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public y3(int i10, String str, String str2, String str3, Double d10, Integer num, Integer num2, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        Integer num3 = 0;
        this((i11 & 1) == 0 ? i10 : 0, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? Double.valueOf(0.0d) : d10, (i11 & 32) != 0 ? num3 : num, (i11 & 64) == 0 ? num2 : 0, (i11 & 128) == 0 ? str4 : null);
    }
}

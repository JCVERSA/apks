package defpackage;

import androidx.room.Ignore;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class pid {
    public static final a i = new a(null);
    public int a;
    public String b;
    public String c;
    public String d;
    public Double e;
    public Integer f;
    public Integer g;
    public String h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(List list) {
            if (list == null) {
                return y71.k();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdsDTO adsDTO = (AdsDTO) it.next();
                pid pidVar = new pid();
                pidVar.b(adsDTO.getTableId());
                pidVar.h(adsDTO.getAdCreativeId());
                pidVar.j(adsDTO.getCodeSeatId());
                pidVar.l(adsDTO.getFilePath());
                pidVar.c(adsDTO.getFirstPrice());
                pidVar.g(Integer.valueOf(adsDTO.isOfflineAd() ? 1 : 0));
                pidVar.d(Integer.valueOf(adsDTO.getAdRequestVer()));
                pidVar.e(GsonUtil.d(adsDTO));
                arrayList.add(pidVar);
            }
            return arrayList;
        }

        public a() {
        }
    }

    public pid(int i2, String str, String str2, String str3, Double d, Integer num, Integer num2, String str4) {
        this.a = i2;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = d;
        this.f = num;
        this.g = num2;
        this.h = str4;
    }

    public final String a() {
        return this.h;
    }

    public final void b(int i2) {
        this.a = i2;
    }

    public final void c(Double d) {
        this.e = d;
    }

    public final void d(Integer num) {
        this.g = num;
    }

    public final void e(String str) {
        this.h = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pid)) {
            return false;
        }
        pid pidVar = (pid) obj;
        return this.a == pidVar.a && y45.e(this.b, pidVar.b) && y45.e(this.c, pidVar.c) && y45.e(this.d, pidVar.d) && y45.e(this.e, pidVar.e) && y45.e(this.f, pidVar.f) && y45.e(this.g, pidVar.g) && y45.e(this.h, pidVar.h);
    }

    public final String f() {
        return this.b;
    }

    public final void g(Integer num) {
        this.f = num;
    }

    public final void h(String str) {
        this.b = str;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d = this.e;
        int iHashCode5 = (iHashCode4 + (d == null ? 0 : d.hashCode())) * 31;
        Integer num = this.f;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.g;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.h;
        return iHashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    public final Integer i() {
        return this.g;
    }

    public final void j(String str) {
        this.c = str;
    }

    public final String k() {
        return this.c;
    }

    public final void l(String str) {
        this.d = str;
    }

    public final String m() {
        return this.d;
    }

    public final Double n() {
        return this.e;
    }

    public final int o() {
        return this.a;
    }

    public final Integer p() {
        return this.f;
    }

    public String toString() {
        return "AdListEntity(_id=" + this.a + ", ad_creative_id=" + this.b + ", codeSeatId=" + this.c + ", file_path=" + this.d + ", price=" + this.e + ", is_offline_ad=" + this.f + ", ad_request_ver=" + this.g + ", ad_bean=" + this.h + ')';
    }

    @Ignore
    public pid() {
        this(0, null, null, null, Double.valueOf(0.0d), 0, 0, null);
    }
}

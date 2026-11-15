package du;

import android.app.Application;
import android.os.Build;
import android.text.TextUtils;
import androidx.compose.foundation.e;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.d;
import java.util.Locale;
import jg.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0711a f59084r = new C0711a(null);

    private String f59085a;

    private String f59086b;

    private String f59087c;

    private String f59088d;

    private String f59089e;

    private String f59090f;

    private String f59091g;

    private String f59092h;

    private String f59093i;

    private String f59094j;

    private String f59095k;

    private String f59096l;

    private String f59097m;

    private String f59098n;

    private String f59099o;

    private String f59100p;

    private boolean f59101q;

    public static final class C0711a {
        public C0711a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String a(a aVar) {
            if (aVar.q()) {
                throw new RuntimeException("the device isn‘t sender");
            }
            if (aVar.a()) {
                String strB = b();
                String upperCase = d.f53893a.a(4).toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                return strB + "-5G-" + upperCase;
            }
            String strB2 = b();
            String upperCase2 = d.f53893a.a(4).toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase2, "toUpperCase(...)");
            return strB2 + "-" + upperCase2;
        }

        private final String b() {
            String upperCase = d.f53893a.a(2).toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            return "DIRECT-" + upperCase + "-MOVIEBOX";
        }

        public final a c(boolean z10) {
            String str = null;
            a aVar = new a(null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, str, false, 131071, null);
            aVar.y("mb_unique");
            aVar.u(Build.DEVICE);
            aVar.s(Build.BRAND);
            aVar.w(Build.PRODUCT);
            aVar.C(Build.VERSION.RELEASE);
            aVar.D(String.valueOf(Build.VERSION.SDK_INT));
            aVar.A(String.valueOf(c.f()));
            aVar.B(c.h());
            aVar.v(c.e());
            b.a aVar2 = b.f63119a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            aVar.t(aVar2.e(applicationA));
            aVar.z("userId");
            aVar.r("avatarIndex");
            if (z10) {
                aVar.E(NetworkUtil.NETWORK_TYPE_5G);
            } else {
                aVar.E("2.4G");
            }
            aVar.H(a(aVar));
            com.transsion.transfer.wifi.util.b bVar = com.transsion.transfer.wifi.util.b.f53891a;
            String strP = aVar.p();
            if (strP == null) {
                strP = "";
            }
            String strSubstring = bVar.a(strP).substring(0, 8);
            Intrinsics.g(strSubstring, "substring(...)");
            aVar.G(strSubstring);
            aVar.x(true);
            return aVar;
        }

        private C0711a() {
        }
    }

    public a() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, 131071, null);
    }

    public final void A(String str) {
        this.f59091g = str;
    }

    public final void B(String str) {
        this.f59092h = str;
    }

    public final void C(String str) {
        this.f59089e = str;
    }

    public final void D(String str) {
        this.f59090f = str;
    }

    public final void E(String str) {
        this.f59099o = str;
    }

    public final void F(String str) {
        this.f59100p = str;
    }

    public final void G(String str) {
        this.f59098n = str;
    }

    public final void H(String str) {
        this.f59097m = str;
    }

    public final boolean a() {
        return WifiUtils.f53888a.n() && TextUtils.equals(this.f59099o, NetworkUtil.NETWORK_TYPE_5G);
    }

    public final String b() {
        return this.f59096l;
    }

    public final String c() {
        return this.f59087c;
    }

    public final String d() {
        return this.f59094j;
    }

    public final String e() {
        return this.f59086b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f59085a, aVar.f59085a) && Intrinsics.c(this.f59086b, aVar.f59086b) && Intrinsics.c(this.f59087c, aVar.f59087c) && Intrinsics.c(this.f59088d, aVar.f59088d) && Intrinsics.c(this.f59089e, aVar.f59089e) && Intrinsics.c(this.f59090f, aVar.f59090f) && Intrinsics.c(this.f59091g, aVar.f59091g) && Intrinsics.c(this.f59092h, aVar.f59092h) && Intrinsics.c(this.f59093i, aVar.f59093i) && Intrinsics.c(this.f59094j, aVar.f59094j) && Intrinsics.c(this.f59095k, aVar.f59095k) && Intrinsics.c(this.f59096l, aVar.f59096l) && Intrinsics.c(this.f59097m, aVar.f59097m) && Intrinsics.c(this.f59098n, aVar.f59098n) && Intrinsics.c(this.f59099o, aVar.f59099o) && Intrinsics.c(this.f59100p, aVar.f59100p) && this.f59101q == aVar.f59101q;
    }

    public final String f() {
        return this.f59093i;
    }

    public final String g() {
        return this.f59088d;
    }

    public final String h() {
        return this.f59095k;
    }

    public int hashCode() {
        String str = this.f59085a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f59086b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f59087c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f59088d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f59089e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f59090f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f59091g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f59092h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f59093i;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f59094j;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.f59095k;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.f59096l;
        int iHashCode12 = (iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.f59097m;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.f59098n;
        int iHashCode14 = (iHashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.f59099o;
        int iHashCode15 = (iHashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.f59100p;
        return ((iHashCode15 + (str16 != null ? str16.hashCode() : 0)) * 31) + e.a(this.f59101q);
    }

    public final String i() {
        return this.f59091g;
    }

    public final String j() {
        return this.f59092h;
    }

    public final String k() {
        return this.f59089e;
    }

    public final String l() {
        return this.f59090f;
    }

    public final String m() {
        return this.f59099o;
    }

    public final String n() {
        return this.f59100p;
    }

    public final String o() {
        return this.f59098n;
    }

    public final String p() {
        return this.f59097m;
    }

    public final boolean q() {
        return this.f59101q;
    }

    public final void r(String str) {
        this.f59096l = str;
    }

    public final void s(String str) {
        this.f59087c = str;
    }

    public final void t(String str) {
        this.f59094j = str;
    }

    public String toString() {
        return "WifiInfoModel(unique=" + this.f59085a + ", device=" + this.f59086b + ", brand=" + this.f59087c + ", product=" + this.f59088d + ", versionRelease=" + this.f59089e + ", versionSdkInt=" + this.f59090f + ", versionCode=" + this.f59091g + ", versionName=" + this.f59092h + ", packageName=" + this.f59093i + ", channel=" + this.f59094j + ", userId=" + this.f59095k + ", avatarIndex=" + this.f59096l + ", wifiSsid=" + this.f59097m + ", wifiPwd=" + this.f59098n + ", wifiChannel=" + this.f59099o + ", wifiIp=" + this.f59100p + ", isSender=" + this.f59101q + ")";
    }

    public final void u(String str) {
        this.f59086b = str;
    }

    public final void v(String str) {
        this.f59093i = str;
    }

    public final void w(String str) {
        this.f59088d = str;
    }

    public final void x(boolean z10) {
        this.f59101q = z10;
    }

    public final void y(String str) {
        this.f59085a = str;
    }

    public final void z(String str) {
        this.f59095k = str;
    }

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, boolean z10) {
        this.f59085a = str;
        this.f59086b = str2;
        this.f59087c = str3;
        this.f59088d = str4;
        this.f59089e = str5;
        this.f59090f = str6;
        this.f59091g = str7;
        this.f59092h = str8;
        this.f59093i = str9;
        this.f59094j = str10;
        this.f59095k = str11;
        this.f59096l = str12;
        this.f59097m = str13;
        this.f59098n = str14;
        this.f59099o = str15;
        this.f59100p = str16;
        this.f59101q = z10;
    }

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, (i10 & 32) != 0 ? null : str6, (i10 & 64) != 0 ? null : str7, (i10 & 128) != 0 ? null : str8, (i10 & 256) != 0 ? null : str9, (i10 & 512) != 0 ? null : str10, (i10 & 1024) != 0 ? null : str11, (i10 & 2048) != 0 ? null : str12, (i10 & 4096) != 0 ? null : str13, (i10 & 8192) != 0 ? null : str14, (i10 & 16384) != 0 ? null : str15, (i10 & 32768) != 0 ? null : str16, (i10 & 65536) != 0 ? false : z10);
    }
}

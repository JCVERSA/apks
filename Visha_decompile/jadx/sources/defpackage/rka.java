package defpackage;

import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TNativeAd;

public final class rka {
    public final int a;
    public final TNativeAd b;
    public final TAdNativeInfo c;
    public final String d;
    public int e;
    public boolean f;

    public rka(int i, TNativeAd tNativeAd, TAdNativeInfo tAdNativeInfo, String str) {
        y45.j(tNativeAd, "nativeAd");
        y45.j(tAdNativeInfo, "nativeInfo");
        y45.j(str, "advertisingId");
        this.a = i;
        this.b = tNativeAd;
        this.c = tAdNativeInfo;
        this.d = str;
        this.e = -1;
    }

    public final int a() {
        return this.e;
    }

    public final boolean b() {
        return this.f;
    }

    public final int c() {
        return this.a;
    }

    public final TNativeAd d() {
        return this.b;
    }

    public final TAdNativeInfo e() {
        return this.c;
    }

    public final boolean f() {
        return !this.c.isExpired();
    }

    public final void g() {
        try {
            this.c.release();
        } catch (Throwable unused) {
        }
        try {
            this.b.destroy();
        } catch (Throwable unused2) {
        }
    }

    public final void h(int i) {
        this.e = i;
    }

    public final void i(boolean z) {
        this.f = z;
    }
}

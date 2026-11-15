package defpackage;

import android.os.IBinder;

public final class l0i extends m1i {
    public final IBinder a;
    public final String b;
    public final int c;
    public final float d;
    public final int e;
    public final String f;

    public l0i(IBinder iBinder, String str, int i, float f, int i2, int i3, String str2, int i4, String str3, String str4, String str5, k0i k0iVar) {
        this.a = iBinder;
        this.b = str;
        this.c = i;
        this.d = f;
        this.e = i4;
        this.f = str4;
    }

    @Override
    public final float a() {
        return this.d;
    }

    @Override
    public final int b() {
        return 0;
    }

    @Override
    public final int c() {
        return this.c;
    }

    @Override
    public final int d() {
        return 0;
    }

    @Override
    public final int e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof m1i) {
            m1i m1iVar = (m1i) obj;
            if (this.a.equals(m1iVar.f()) && ((str = this.b) != null ? str.equals(m1iVar.h()) : m1iVar.h() == null) && this.c == m1iVar.c() && Float.floatToIntBits(this.d) == Float.floatToIntBits(m1iVar.a())) {
                m1iVar.b();
                m1iVar.d();
                m1iVar.j();
                if (this.e == m1iVar.e()) {
                    m1iVar.i();
                    String str2 = this.f;
                    if (str2 != null ? str2.equals(m1iVar.g()) : m1iVar.g() == null) {
                        m1iVar.k();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public final IBinder f() {
        return this.a;
    }

    @Override
    public final String g() {
        return this.f;
    }

    @Override
    public final String h() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        String str = this.b;
        int iHashCode2 = (((((iHashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.c) * 1000003) ^ Float.floatToIntBits(this.d);
        int i = this.e;
        String str2 = this.f;
        return ((((iHashCode2 * 1525764945) ^ i) * (-721379959)) ^ (str2 != null ? str2.hashCode() : 0)) * 1000003;
    }

    @Override
    public final String i() {
        return null;
    }

    @Override
    public final String j() {
        return null;
    }

    @Override
    public final String k() {
        return null;
    }

    public final String toString() {
        return "OverlayDisplayShowRequest{windowToken=" + this.a.toString() + ", appId=" + this.b + ", layoutGravity=" + this.c + ", layoutVerticalMargin=" + this.d + ", displayMode=0, triggerMode=0, sessionToken=null, windowWidthPx=" + this.e + ", deeplinkUrl=null, adFieldEnifd=" + this.f + ", thirdPartyAuthCallerId=null}";
    }
}

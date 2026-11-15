package androidx.media3.exoplayer;

public final class k {

    public final String f11738a;

    public final androidx.media3.common.r f11739b;

    public final androidx.media3.common.r f11740c;

    public final int f11741d;

    public final int f11742e;

    public k(String str, androidx.media3.common.r rVar, androidx.media3.common.r rVar2, int i10, int i11) {
        androidx.media3.common.util.a.a(i10 == 0 || i11 == 0);
        this.f11738a = androidx.media3.common.util.a.d(str);
        this.f11739b = (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar);
        this.f11740c = (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar2);
        this.f11741d = i10;
        this.f11742e = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f11741d == kVar.f11741d && this.f11742e == kVar.f11742e && this.f11738a.equals(kVar.f11738a) && this.f11739b.equals(kVar.f11739b) && this.f11740c.equals(kVar.f11740c);
    }

    public int hashCode() {
        return ((((((((527 + this.f11741d) * 31) + this.f11742e) * 31) + this.f11738a.hashCode()) * 31) + this.f11739b.hashCode()) * 31) + this.f11740c.hashCode();
    }
}

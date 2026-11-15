package defpackage;

import com.google.android.gms.ads.internal.client.zzr;

public final class kkf {
    public final int a;
    public final int b;
    public final int c;

    public kkf(int i, int i2, int i3) {
        this.a = i;
        this.c = i2;
        this.b = i3;
    }

    public static kkf a() {
        return new kkf(0, 0, 0);
    }

    public static kkf b(int i, int i2) {
        return new kkf(1, i, i2);
    }

    public static kkf c(zzr zzrVar) {
        if (zzrVar.zzd) {
            return new kkf(3, 0, 0);
        }
        if (zzrVar.zzi) {
            return new kkf(2, 0, 0);
        }
        return zzrVar.zzh ? new kkf(0, 0, 0) : new kkf(1, zzrVar.zzf, zzrVar.zzc);
    }

    public static kkf d() {
        return new kkf(5, 0, 0);
    }

    public static kkf e() {
        return new kkf(4, 0, 0);
    }

    public final boolean f() {
        return this.a == 0;
    }

    public final boolean g() {
        return this.a == 2;
    }

    public final boolean h() {
        return this.a == 5;
    }

    public final boolean i() {
        return this.a == 3;
    }

    public final boolean j() {
        return this.a == 4;
    }
}

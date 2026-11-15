package defpackage;

import com.google.android.gms.internal.ads.ca;
import com.google.android.gms.internal.ads.ea;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.io.InputStream;

public abstract class vri {
    public static volatile int d = 100;
    public int a;
    public final int b = d;
    public wri c;

    public vri(uri uriVar) {
    }

    public static int c(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static long d(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static vri e(InputStream inputStream, int i) {
        if (inputStream != null) {
            return new ea(inputStream, 4096, null);
        }
        byte[] bArr = zsi.b;
        int length = bArr.length;
        return f(bArr, 0, 0, false);
    }

    public static vri f(byte[] bArr, int i, int i2, boolean z) {
        ca caVar = new ca(bArr, i, i2, z, null);
        try {
            caVar.j(i2);
            return caVar;
        } catch (zzgyk e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract void A(int i);

    public abstract boolean a();

    public abstract boolean b();

    public abstract double g();

    public abstract float h();

    public abstract int i();

    public abstract int j(int i);

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public abstract int o();

    public abstract int p();

    public abstract int q();

    public abstract long r();

    public abstract long s();

    public abstract long t();

    public abstract long u();

    public abstract long v();

    public abstract zzgwn w();

    public abstract String x();

    public abstract String y();

    public abstract void z(int i);
}

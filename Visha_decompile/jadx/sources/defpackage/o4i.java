package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;

public abstract class o4i extends srh {
    public Object a;

    public o4i(x3i x3iVar) {
    }

    public static int v(g0j g0jVar) {
        int iZzn = g0jVar.zzn();
        return w(iZzn) + iZzn;
    }

    public static int w(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int x(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public final void a() {
        if (b() > 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
        if (b() < 0) {
            throw new IllegalStateException("Wrote more data than expected.");
        }
    }

    public abstract int b();

    public abstract void c(byte b);

    public abstract void d(int i, boolean z);

    public abstract void e(byte[] bArr, int i, int i2);

    public abstract void f(int i, zzfp zzfpVar);

    public abstract void g(zzfp zzfpVar);

    public abstract void h(int i, int i2);

    public abstract void i(int i);

    public abstract void j(int i, long j);

    public abstract void k(long j);

    public abstract void l(int i, int i2);

    public abstract void m(int i);

    public abstract void n(g0j g0jVar);

    public abstract void o(int i, String str);

    public abstract void p(String str);

    public abstract void q(int i, int i2);

    public abstract void r(int i, int i2);

    public abstract void s(int i);

    public abstract void t(int i, long j);

    public abstract void u(long j);
}

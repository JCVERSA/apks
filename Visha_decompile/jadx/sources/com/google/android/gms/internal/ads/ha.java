package com.google.android.gms.internal.ads;

import defpackage.asi;
import defpackage.cui;
import defpackage.pri;
import defpackage.rti;
import defpackage.vui;
import defpackage.yri;
import defpackage.zsi;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class ha extends pri {
    public static final Logger b = Logger.getLogger(ha.class.getName());
    public static final boolean c = vui.a();
    public asi a;

    public ha(yri yriVar) {
    }

    public static int B(int i, rti rtiVar, cui cuiVar) {
        int iE = e(i << 3);
        return iE + iE + ((aa) rtiVar).f(cuiVar);
    }

    public static int b(rti rtiVar, cui cuiVar) {
        int iF = ((aa) rtiVar).f(cuiVar);
        return e(iF) + iF;
    }

    public static int c(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    public static int d(String str) {
        int length;
        try {
            length = ra.e(str);
        } catch (zzhaw unused) {
            length = str.getBytes(zsi.a).length;
        }
        return e(length) + length;
    }

    public static int e(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int f(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public abstract void A(long j);

    @Override
    public abstract void a(byte[] bArr, int i, int i2);

    public final void g() {
        if (n() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void h(String str, zzhaw zzhawVar) throws zzgwx {
        b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhawVar);
        byte[] bytes = str.getBytes(zsi.a);
        try {
            int length = bytes.length;
            y(length);
            a(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgwx(e);
        }
    }

    public abstract void j();

    public abstract void k(byte b2);

    public abstract void l(int i, boolean z);

    public abstract void m(int i, zzgwn zzgwnVar);

    public abstract int n();

    public abstract void o(int i, int i2);

    public abstract void p(int i);

    public abstract void q(int i, long j);

    public abstract void r(long j);

    public abstract void s(int i, int i2);

    public abstract void t(int i);

    public abstract void u(int i, rti rtiVar, cui cuiVar);

    public abstract void v(int i, String str);

    public abstract void w(int i, int i2);

    public abstract void x(int i, int i2);

    public abstract void y(int i);

    public abstract void z(int i, long j);
}

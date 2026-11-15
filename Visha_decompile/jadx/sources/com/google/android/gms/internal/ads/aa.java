package com.google.android.gms.internal.ads;

import defpackage.cui;
import defpackage.gri;
import defpackage.rti;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.logging.Logger;

public abstract class aa implements rti {
    protected int zzq = 0;

    public static void i(Iterable iterable, List list) {
        gri.j(iterable, list);
    }

    public abstract int b();

    public abstract int f(cui cuiVar);

    public zzgwn g() {
        try {
            int iA = a();
            zzgwn zzgwnVar = zzgwn.zzb;
            byte[] bArr = new byte[iA];
            Logger logger = ha.b;
            fa faVar = new fa(bArr, 0, iA);
            c(faVar);
            faVar.g();
            return new zzgwk(bArr);
        } catch (IOException e) {
            throw new RuntimeException(m("ByteString"), e);
        }
    }

    public zzhak h() {
        return new zzhak(this);
    }

    public abstract void j(int i);

    public void k(OutputStream outputStream) {
        ga gaVar = new ga(outputStream, ha.c(a()));
        c(gaVar);
        gaVar.j();
    }

    public byte[] l() {
        try {
            int iA = a();
            byte[] bArr = new byte[iA];
            Logger logger = ha.b;
            fa faVar = new fa(bArr, 0, iA);
            c(faVar);
            faVar.g();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(m("byte array"), e);
        }
    }

    public final String m(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }
}

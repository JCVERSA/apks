package defpackage;

import java.io.EOFException;

public final class s9e {
    public final u4h a = new u4h(10);

    public final hre a(d9e d9eVar, zce zceVar) {
        hre hreVarA = null;
        int i = 0;
        while (true) {
            try {
                u4h u4hVar = this.a;
                d9eVar.i(u4hVar.n(), 0, 10);
                u4hVar.l(0);
                if (u4hVar.I() != 4801587) {
                    break;
                }
                u4hVar.m(3);
                int iF = u4hVar.F();
                int i2 = iF + 10;
                if (hreVarA == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(u4hVar.n(), 0, bArr, 0, 10);
                    d9eVar.i(bArr, 10, iF);
                    hreVarA = bde.a(bArr, i2, zceVar, new ice());
                } else {
                    d9eVar.zzg(iF);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        d9eVar.zzj();
        d9eVar.zzg(i);
        return hreVarA;
    }
}

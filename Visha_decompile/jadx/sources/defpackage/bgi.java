package defpackage;

import com.google.android.gms.internal.ads.j9;
import com.google.android.gms.internal.ads.zzgtt;
import java.security.GeneralSecurityException;
import java.util.Arrays;

public final class bgi implements q8i {
    public final q8i a;
    public final byte[] b;

    public bgi(q8i q8iVar, byte[] bArr) {
        this.a = q8iVar;
        int length = bArr.length;
        if (length != 0 && length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.b = bArr;
    }

    public static q8i b(thi thiVar) throws GeneralSecurityException {
        byte[] bArrD;
        uji ujiVarB = thiVar.b(a9i.a());
        koi koiVarB0 = j9.b0();
        koiVarB0.w(ujiVarB.f());
        koiVarB0.x(ujiVarB.d());
        koiVarB0.v(ujiVarB.b());
        q8i q8iVar = (q8i) s9i.a((j9) koiVarB0.q(), q8i.class);
        zzgtt zzgttVarC = ujiVarB.c();
        int iOrdinal = zzgttVarC.ordinal();
        if (iOrdinal == 1) {
            bArrD = rii.b(thiVar.d().intValue()).d();
        } else if (iOrdinal == 2) {
            bArrD = rii.a(thiVar.d().intValue()).d();
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type ".concat(String.valueOf(zzgttVarC)));
            }
            bArrD = rii.a(thiVar.d().intValue()).d();
        } else {
            bArrD = rii.a.d();
        }
        return new bgi(q8iVar, bArrD);
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.b;
        if (bArr3.length == 0) {
            return this.a.a(bArr, bArr2);
        }
        if (fki.c(bArr3, bArr)) {
            return this.a.a(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}

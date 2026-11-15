package defpackage;

import com.google.android.gms.internal.ads.c9;
import com.google.android.gms.internal.ads.d9;
import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class mfi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return mfi.d((jci) p9iVar);
            }
        }, jci.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return mfi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return mfi.c((bci) b9iVar, t9iVar);
            }
        }, bci.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return mfi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static bci a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
        }
        try {
            c9 c9VarE0 = c9.e0(ujiVar.d(), esi.a());
            if (c9VarE0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            gci gciVarC = jci.c();
            gciVarC.a(c9VarE0.f0().zzd());
            gciVarC.b(f(ujiVar.c()));
            jci jciVarC = gciVarC.c();
            zbi zbiVarC = bci.c();
            zbiVarC.c(jciVarC);
            zbiVarC.b(fri.b(c9VarE0.f0().zzA(), t9iVar));
            zbiVarC.a(ujiVar.e());
            return zbiVarC.d();
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
        }
    }

    public static jci b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            d9 d9VarF0 = d9.f0(vjiVar.c().g0(), esi.a());
            if (d9VarF0.c0() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            gci gciVarC = jci.c();
            gciVarC.a(d9VarF0.b0());
            gciVarC.b(f(vjiVar.c().f0()));
            return gciVarC.c();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e2);
        }
    }

    public static uji c(bci bciVar, t9i t9iVar) {
        uni uniVarC0 = c9.c0();
        byte[] bArrD = bciVar.e().d(t9iVar);
        uniVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((c9) uniVarC0.q()).g(), zzgsn.SYMMETRIC, g(bciVar.d().d()), bciVar.f());
    }

    public static vji d(jci jciVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        wni wniVarD0 = d9.d0();
        wniVarD0.v(jciVar.b());
        noiVarB0.x(((d9) wniVarD0.q()).g());
        noiVarB0.v(g(jciVar.d()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static hci f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return hci.b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return hci.d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
        }
        return hci.c;
    }

    public static zzgtt g(hci hciVar) throws GeneralSecurityException {
        if (hci.b.equals(hciVar)) {
            return zzgtt.TINK;
        }
        if (hci.c.equals(hciVar)) {
            return zzgtt.CRUNCHY;
        }
        if (hci.d.equals(hciVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(hciVar)));
    }
}

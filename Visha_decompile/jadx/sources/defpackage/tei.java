package defpackage;

import com.google.android.gms.internal.ads.g9;
import com.google.android.gms.internal.ads.h9;
import com.google.android.gms.internal.ads.i9;
import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.s8;
import com.google.android.gms.internal.ads.t8;
import com.google.android.gms.internal.ads.u8;
import com.google.android.gms.internal.ads.v8;
import com.google.android.gms.internal.ads.w8;
import com.google.android.gms.internal.ads.zzgsc;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class tei {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return tei.d((bbi) p9iVar);
            }
        }, bbi.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return tei.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return tei.c((rai) b9iVar, t9iVar);
            }
        }, rai.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return tei.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static rai a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
        }
        try {
            s8 s8VarE0 = s8.e0(ujiVar.d(), esi.a());
            if (s8VarE0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (s8VarE0.f0().b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
            }
            if (s8VarE0.g0().b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
            }
            xai xaiVarF = bbi.f();
            xaiVarF.a(s8VarE0.f0().g0().zzd());
            xaiVarF.c(s8VarE0.g0().h0().zzd());
            xaiVarF.d(s8VarE0.f0().f0().b0());
            xaiVarF.e(s8VarE0.g0().g0().b0());
            xaiVarF.b(f(s8VarE0.g0().g0().c0()));
            xaiVarF.f(g(ujiVar.c()));
            bbi bbiVarG = xaiVarF.g();
            pai paiVarC = rai.c();
            paiVarC.d(bbiVarG);
            paiVarC.a(fri.b(s8VarE0.f0().g0().zzA(), t9iVar));
            paiVarC.b(fri.b(s8VarE0.g0().h0().zzA(), t9iVar));
            paiVarC.c(ujiVar.e());
            return paiVarC.e();
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
        }
    }

    public static bbi b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            t8 t8VarD0 = t8.d0(vjiVar.c().g0(), esi.a());
            if (t8VarD0.f0().c0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            xai xaiVarF = bbi.f();
            xaiVarF.a(t8VarD0.e0().b0());
            xaiVarF.c(t8VarD0.f0().b0());
            xaiVarF.d(t8VarD0.e0().f0().b0());
            xaiVarF.e(t8VarD0.f0().h0().b0());
            xaiVarF.b(f(t8VarD0.f0().h0().c0()));
            xaiVarF.f(g(vjiVar.c().f0()));
            return xaiVarF.g();
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e2);
        }
    }

    public static uji c(rai raiVar, t9i t9iVar) {
        xmi xmiVarC0 = s8.c0();
        bni bniVarC0 = u8.c0();
        fni fniVarC0 = w8.c0();
        fniVarC0.v(raiVar.d().d());
        bniVarC0.w((w8) fniVarC0.q());
        byte[] bArrD = raiVar.e().d(t9iVar);
        bniVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        xmiVarC0.v((u8) bniVarC0.q());
        eoi eoiVarC0 = g9.c0();
        eoiVarC0.w(h(raiVar.d()));
        byte[] bArrD2 = raiVar.f().d(t9iVar);
        eoiVarC0.v(zzgwn.zzv(bArrD2, 0, bArrD2.length));
        xmiVarC0.w((g9) eoiVarC0.q());
        return uji.a("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((s8) xmiVarC0.q()).g(), zzgsn.SYMMETRIC, i(raiVar.d().h()), raiVar.g());
    }

    public static vji d(bbi bbiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zmi zmiVarB0 = t8.b0();
        dni dniVarC0 = v8.c0();
        fni fniVarC0 = w8.c0();
        fniVarC0.v(bbiVar.d());
        dniVarC0.w((w8) fniVarC0.q());
        dniVarC0.v(bbiVar.b());
        zmiVarB0.v((v8) dniVarC0.q());
        goi goiVarD0 = h9.d0();
        goiVarD0.w(h(bbiVar));
        goiVarD0.v(bbiVar.c());
        zmiVarB0.w((h9) goiVarD0.q());
        noiVarB0.x(((t8) zmiVarB0.q()).g());
        noiVarB0.v(i(bbiVar.h()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static yai f(zzgsc zzgscVar) throws GeneralSecurityException {
        int iOrdinal = zzgscVar.ordinal();
        if (iOrdinal == 1) {
            return yai.b;
        }
        if (iOrdinal == 2) {
            return yai.e;
        }
        if (iOrdinal == 3) {
            return yai.d;
        }
        if (iOrdinal == 4) {
            return yai.f;
        }
        if (iOrdinal == 5) {
            return yai.c;
        }
        throw new GeneralSecurityException("Unable to parse HashType: " + zzgscVar.zza());
    }

    public static zai g(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return zai.b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return zai.d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
        }
        return zai.c;
    }

    public static i9 h(bbi bbiVar) throws GeneralSecurityException {
        zzgsc zzgscVar;
        ioi ioiVarD0 = i9.d0();
        ioiVarD0.w(bbiVar.e());
        yai yaiVarG = bbiVar.g();
        if (yai.b.equals(yaiVarG)) {
            zzgscVar = zzgsc.SHA1;
        } else if (yai.c.equals(yaiVarG)) {
            zzgscVar = zzgsc.SHA224;
        } else if (yai.d.equals(yaiVarG)) {
            zzgscVar = zzgsc.SHA256;
        } else if (yai.e.equals(yaiVarG)) {
            zzgscVar = zzgsc.SHA384;
        } else {
            if (!yai.f.equals(yaiVarG)) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(yaiVarG)));
            }
            zzgscVar = zzgsc.SHA512;
        }
        ioiVarD0.v(zzgscVar);
        return (i9) ioiVarD0.q();
    }

    public static zzgtt i(zai zaiVar) throws GeneralSecurityException {
        if (zai.b.equals(zaiVar)) {
            return zzgtt.TINK;
        }
        if (zai.c.equals(zaiVar)) {
            return zzgtt.CRUNCHY;
        }
        if (zai.d.equals(zaiVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zaiVar)));
    }
}

package defpackage;

import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.v9;
import com.google.android.gms.internal.ads.w9;
import com.google.android.gms.internal.ads.x9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;
import java.util.Objects;

public abstract class kgi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return kgi.d((hei) p9iVar);
            }
        }, hei.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return kgi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return kgi.c((cei) b9iVar, t9iVar);
            }
        }, cei.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return kgi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static cei a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
        }
        try {
            v9 v9VarE0 = v9.e0(ujiVar.d(), esi.a());
            if (v9VarE0.b0() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (v9VarE0.g0().zzd() == 32) {
                return cei.c(hei.d(f(ujiVar.c()), v9VarE0.f0().b0()), fri.b(v9VarE0.g0().zzA(), t9iVar), ujiVar.e());
            }
            throw new GeneralSecurityException("Only 32 byte key size is accepted");
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing XAesGcmKey failed");
        }
    }

    public static hei b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            w9 w9VarE0 = w9.e0(vjiVar.c().g0(), esi.a());
            if (w9VarE0.b0() == 0) {
                return hei.d(f(vjiVar.c().f0()), w9VarE0.f0().b0());
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e2);
        }
    }

    public static uji c(cei ceiVar, t9i t9iVar) {
        kpi kpiVarC0 = v9.c0();
        byte[] bArrD = ceiVar.e().d(t9iVar);
        kpiVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        qpi qpiVarC0 = x9.c0();
        qpiVarC0.v(ceiVar.d().b());
        kpiVarC0.w((x9) qpiVarC0.q());
        return uji.a("type.googleapis.com/google.crypto.tink.XAesGcmKey", ((v9) kpiVarC0.q()).g(), zzgsn.SYMMETRIC, g(ceiVar.d().c()), ceiVar.f());
    }

    public static vji d(hei heiVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        opi opiVarC0 = w9.c0();
        qpi qpiVarC0 = x9.c0();
        qpiVarC0.v(heiVar.b());
        opiVarC0.v((x9) qpiVarC0.q());
        noiVarB0.x(((w9) opiVarC0.q()).g());
        noiVarB0.v(g(heiVar.c()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static gei f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return gei.b;
        }
        if (iOrdinal == 3) {
            return gei.c;
        }
        throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
    }

    public static zzgtt g(gei geiVar) throws GeneralSecurityException {
        if (Objects.equals(geiVar, gei.b)) {
            return zzgtt.TINK;
        }
        if (Objects.equals(geiVar, gei.c)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(geiVar.toString()));
    }
}

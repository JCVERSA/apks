package defpackage;

import com.google.android.gms.internal.ads.e9;
import com.google.android.gms.internal.ads.f9;
import com.google.android.gms.internal.ads.k9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.security.GeneralSecurityException;

public abstract class tfi {
    public static final eri a;
    public static final zii b;
    public static final vii c;
    public static final mhi d;
    public static final ihi e;

    static {
        eri eriVarB = fki.b("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        a = eriVarB;
        b = zii.b(new xii() {
            @Override
            public final yji a(p9i p9iVar) {
                return tfi.d((pci) p9iVar);
            }
        }, pci.class, vji.class);
        c = vii.b(new tii() {
            @Override
            public final p9i a(yji yjiVar) {
                return tfi.b((vji) yjiVar);
            }
        }, eriVarB, vji.class);
        d = mhi.b(new khi() {
            @Override
            public final yji a(b9i b9iVar, t9i t9iVar) {
                return tfi.c((kci) b9iVar, t9iVar);
            }
        }, kci.class, uji.class);
        e = ihi.b(new ehi() {
            @Override
            public final b9i a(yji yjiVar, t9i t9iVar) {
                return tfi.a((uji) yjiVar, t9iVar);
            }
        }, eriVarB, uji.class);
    }

    public static kci a(uji ujiVar, t9i t9iVar) throws GeneralSecurityException {
        if (!ujiVar.f().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            e9 e9VarE0 = e9.e0(ujiVar.d(), esi.a());
            if (e9VarE0.b0() == 0) {
                return kci.c(f(ujiVar.c()), fri.b(e9VarE0.f0().zzA(), t9iVar), ujiVar.e());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgyk unused) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
        }
    }

    public static pci b(vji vjiVar) throws GeneralSecurityException {
        if (!vjiVar.c().h0().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(vjiVar.c().h0())));
        }
        try {
            f9.d0(vjiVar.c().g0(), esi.a());
            return pci.c(f(vjiVar.c().f0()));
        } catch (zzgyk e2) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e2);
        }
    }

    public static uji c(kci kciVar, t9i t9iVar) {
        yni yniVarC0 = e9.c0();
        byte[] bArrD = kciVar.e().d(t9iVar);
        yniVarC0.v(zzgwn.zzv(bArrD, 0, bArrD.length));
        return uji.a("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((e9) yniVarC0.q()).g(), zzgsn.SYMMETRIC, g(kciVar.d().b()), kciVar.f());
    }

    public static vji d(pci pciVar) {
        noi noiVarB0 = k9.b0();
        noiVarB0.w("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        noiVarB0.x(f9.c0().g());
        noiVarB0.v(g(pciVar.b()));
        return vji.b((k9) noiVarB0.q());
    }

    public static void e(qii qiiVar) {
        qiiVar.i(b);
        qiiVar.h(c);
        qiiVar.g(d);
        qiiVar.f(e);
    }

    public static oci f(zzgtt zzgttVar) throws GeneralSecurityException {
        int iOrdinal = zzgttVar.ordinal();
        if (iOrdinal == 1) {
            return oci.b;
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3) {
                return oci.d;
            }
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zzgttVar.zza());
            }
        }
        return oci.c;
    }

    public static zzgtt g(oci ociVar) throws GeneralSecurityException {
        if (oci.b.equals(ociVar)) {
            return zzgtt.TINK;
        }
        if (oci.c.equals(ociVar)) {
            return zzgtt.CRUNCHY;
        }
        if (oci.d.equals(ociVar)) {
            return zzgtt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(ociVar.toString()));
    }
}

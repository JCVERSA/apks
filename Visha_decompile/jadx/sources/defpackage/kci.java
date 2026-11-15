package defpackage;

import java.security.GeneralSecurityException;

public final class kci extends iai {
    public final pci a;
    public final fri b;
    public final eri c;
    public final Integer d;

    public kci(pci pciVar, fri friVar, eri eriVar, Integer num) {
        this.a = pciVar;
        this.b = friVar;
        this.c = eriVar;
        this.d = num;
    }

    public static kci c(oci ociVar, fri friVar, Integer num) throws GeneralSecurityException {
        eri eriVarB;
        oci ociVar2 = oci.d;
        if (ociVar != ociVar2 && num == null) {
            throw new GeneralSecurityException("For given Variant " + ociVar.toString() + " the value of idRequirement must be non-null");
        }
        if (ociVar == ociVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (friVar.a() != 32) {
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + friVar.a());
        }
        pci pciVarC = pci.c(ociVar);
        if (pciVarC.b() == ociVar2) {
            eriVarB = rii.a;
        } else if (pciVarC.b() == oci.c) {
            eriVarB = rii.a(num.intValue());
        } else {
            if (pciVarC.b() != oci.b) {
                throw new IllegalStateException("Unknown Variant: ".concat(pciVarC.b().toString()));
            }
            eriVarB = rii.b(num.intValue());
        }
        return new kci(pciVarC, friVar, eriVarB, num);
    }

    @Override
    public final p9i a() {
        return this.a;
    }

    @Override
    public final eri b() {
        return this.c;
    }

    public final pci d() {
        return this.a;
    }

    public final fri e() {
        return this.b;
    }

    public final Integer f() {
        return this.d;
    }
}

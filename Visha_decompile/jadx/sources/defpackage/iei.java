package defpackage;

import java.security.GeneralSecurityException;

public final class iei extends iai {
    public final oei a;
    public final fri b;
    public final eri c;
    public final Integer d;

    public iei(oei oeiVar, fri friVar, eri eriVar, Integer num) {
        this.a = oeiVar;
        this.b = friVar;
        this.c = eriVar;
        this.d = num;
    }

    public static iei c(nei neiVar, fri friVar, Integer num) throws GeneralSecurityException {
        eri eriVarB;
        nei neiVar2 = nei.d;
        if (neiVar != neiVar2 && num == null) {
            throw new GeneralSecurityException("For given Variant " + neiVar.toString() + " the value of idRequirement must be non-null");
        }
        if (neiVar == neiVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (friVar.a() != 32) {
            throw new GeneralSecurityException("XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + friVar.a());
        }
        oei oeiVarC = oei.c(neiVar);
        if (oeiVarC.b() == neiVar2) {
            eriVarB = rii.a;
        } else if (oeiVarC.b() == nei.c) {
            eriVarB = rii.a(num.intValue());
        } else {
            if (oeiVarC.b() != nei.b) {
                throw new IllegalStateException("Unknown Variant: ".concat(oeiVarC.b().toString()));
            }
            eriVarB = rii.b(num.intValue());
        }
        return new iei(oeiVarC, friVar, eriVarB, num);
    }

    @Override
    public final p9i a() {
        return this.a;
    }

    @Override
    public final eri b() {
        return this.c;
    }

    public final oei d() {
        return this.a;
    }

    public final fri e() {
        return this.b;
    }

    public final Integer f() {
        return this.d;
    }
}

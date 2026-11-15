package defpackage;

import java.security.GeneralSecurityException;

public final class cei extends iai {
    public final hei a;
    public final fri b;
    public final eri c;
    public final Integer d;

    public cei(hei heiVar, fri friVar, eri eriVar, Integer num) {
        this.a = heiVar;
        this.b = friVar;
        this.c = eriVar;
        this.d = num;
    }

    public static cei c(hei heiVar, fri friVar, Integer num) throws GeneralSecurityException {
        eri eriVarB;
        gei geiVarC = heiVar.c();
        gei geiVar = gei.c;
        if (geiVarC != geiVar && num == null) {
            throw new GeneralSecurityException("For given Variant " + heiVar.c().toString() + " the value of idRequirement must be non-null");
        }
        if (heiVar.c() == geiVar && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (friVar.a() != 32) {
            throw new GeneralSecurityException("XAesGcmKey key must be constructed with key of length 32 bytes, not " + friVar.a());
        }
        if (heiVar.c() == geiVar) {
            eriVarB = rii.a;
        } else {
            if (heiVar.c() != gei.b) {
                throw new IllegalStateException("Unknown Variant: ".concat(heiVar.c().toString()));
            }
            eriVarB = rii.b(num.intValue());
        }
        return new cei(heiVar, friVar, eriVarB, num);
    }

    @Override
    public final p9i a() {
        return this.a;
    }

    @Override
    public final eri b() {
        return this.c;
    }

    public final hei d() {
        return this.a;
    }

    public final fri e() {
        return this.b;
    }

    public final Integer f() {
        return this.d;
    }
}

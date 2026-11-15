package defpackage;

import java.security.GeneralSecurityException;

public final class gdi extends iai {
    public final ldi a;
    public final eri b;
    public final Integer c;

    public gdi(ldi ldiVar, eri eriVar, Integer num) {
        this.a = ldiVar;
        this.b = eriVar;
        this.c = num;
    }

    public static gdi c(ldi ldiVar, Integer num) throws GeneralSecurityException {
        eri eriVarB;
        if (ldiVar.c() == jdi.c) {
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            eriVarB = rii.a;
        } else {
            if (ldiVar.c() != jdi.b) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(ldiVar.c())));
            }
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            eriVarB = rii.b(num.intValue());
        }
        return new gdi(ldiVar, eriVarB, num);
    }

    @Override
    public final p9i a() {
        return this.a;
    }

    @Override
    public final eri b() {
        return this.b;
    }

    public final ldi d() {
        return this.a;
    }

    public final Integer e() {
        return this.c;
    }
}

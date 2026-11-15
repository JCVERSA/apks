package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

public final class wci extends iai {
    public final adi a;
    public final eri b;
    public final Integer c;

    public wci(adi adiVar, eri eriVar, Integer num) {
        this.a = adiVar;
        this.b = eriVar;
        this.c = num;
    }

    public static wci c(adi adiVar, Integer num) throws GeneralSecurityException {
        eri eriVarB;
        if (adiVar.b() == xci.b) {
            if (num == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            eriVarB = eri.b(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        } else {
            if (adiVar.b() != xci.c) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(adiVar.b().toString()));
            }
            if (num != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            eriVarB = eri.b(new byte[0]);
        }
        return new wci(adiVar, eriVarB, num);
    }

    @Override
    public final p9i a() {
        return this.a;
    }

    @Override
    public final eri b() {
        return this.b;
    }

    public final adi d() {
        return this.a;
    }

    public final Integer e() {
        return this.c;
    }
}

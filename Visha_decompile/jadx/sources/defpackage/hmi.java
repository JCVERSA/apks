package defpackage;

import java.security.GeneralSecurityException;

public final class hmi implements tki {
    public hmi(zki zkiVar) throws GeneralSecurityException {
        if (!tgi.a(2)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
    }
}

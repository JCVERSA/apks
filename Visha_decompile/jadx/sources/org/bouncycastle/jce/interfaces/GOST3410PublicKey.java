package org.bouncycastle.jce.interfaces;

import defpackage.ma4;
import java.math.BigInteger;
import java.security.PublicKey;

public interface GOST3410PublicKey extends PublicKey {
    ma4 getParameters();

    BigInteger getY();
}

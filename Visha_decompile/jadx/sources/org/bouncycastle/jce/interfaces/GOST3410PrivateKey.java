package org.bouncycastle.jce.interfaces;

import defpackage.ma4;
import java.math.BigInteger;
import java.security.PrivateKey;

public interface GOST3410PrivateKey extends PrivateKey {
    ma4 getParameters();

    BigInteger getX();
}

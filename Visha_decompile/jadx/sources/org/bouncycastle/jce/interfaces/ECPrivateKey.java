package org.bouncycastle.jce.interfaces;

import defpackage.h53;
import java.math.BigInteger;
import java.security.PrivateKey;

public interface ECPrivateKey extends PrivateKey {
    BigInteger getD();

    h53 getParameters();
}

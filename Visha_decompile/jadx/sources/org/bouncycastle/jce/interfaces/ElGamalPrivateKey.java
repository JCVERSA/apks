package org.bouncycastle.jce.interfaces;

import defpackage.w73;
import java.math.BigInteger;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;

public interface ElGamalPrivateKey extends DHKey, DHPrivateKey {
    w73 getParameters();

    BigInteger getX();
}

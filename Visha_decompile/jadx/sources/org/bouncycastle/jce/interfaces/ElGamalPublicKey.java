package org.bouncycastle.jce.interfaces;

import defpackage.w73;
import java.math.BigInteger;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPublicKey;

public interface ElGamalPublicKey extends DHKey, DHPublicKey {
    w73 getParameters();

    BigInteger getY();
}

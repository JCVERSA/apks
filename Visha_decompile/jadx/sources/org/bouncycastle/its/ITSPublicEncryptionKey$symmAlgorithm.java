package org.bouncycastle.its;

import defpackage.z0;
import java.math.BigInteger;

public enum ITSPublicEncryptionKey$symmAlgorithm {
    aes128Ccm(new z0(BigInteger.ZERO) {
        {
            A();
        }

        public void A() {
            if (ge0.g(y()) == 0) {
                return;
            }
            throw new IllegalArgumentException("invalid enumeration value " + y());
        }
    }.z());

    private final int tagValue;

    ITSPublicEncryptionKey$symmAlgorithm(int i) {
        this.tagValue = i;
    }
}

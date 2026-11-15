package org.bouncycastle.crypto.prng;

import defpackage.mqc;
import java.security.SecureRandom;

public class X931SecureRandom extends SecureRandom {
    private final mqc drbg;
    private final boolean predictionResistant;
    private final SecureRandom randomSource;

    public X931SecureRandom(SecureRandom secureRandom, mqc mqcVar, boolean z) {
        this.randomSource = secureRandom;
        this.predictionResistant = z;
    }

    @Override
    public byte[] generateSeed(int i) {
        throw null;
    }

    @Override
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            throw null;
        }
    }

    @Override
    public void setSeed(long j) {
        synchronized (this) {
            try {
                SecureRandom secureRandom = this.randomSource;
                if (secureRandom != null) {
                    secureRandom.setSeed(j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setSeed(byte[] bArr) {
        synchronized (this) {
            try {
                SecureRandom secureRandom = this.randomSource;
                if (secureRandom != null) {
                    secureRandom.setSeed(bArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

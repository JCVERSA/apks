package org.bouncycastle.crypto.prng;

import defpackage.ab3;
import defpackage.cb3;
import defpackage.er1;
import defpackage.ky8;
import java.security.SecureRandom;

public class SP800SecureRandom extends SecureRandom {
    private ky8 drbg;
    private final er1 drbgProvider;
    private final ab3 entropySource;
    private final boolean predictionResistant;
    private final SecureRandom randomSource;

    public SP800SecureRandom(SecureRandom secureRandom, ab3 ab3Var, er1 er1Var, boolean z) {
        this.randomSource = secureRandom;
        this.entropySource = ab3Var;
        this.drbgProvider = er1Var;
        this.predictionResistant = z;
    }

    @Override
    public byte[] generateSeed(int i) {
        return cb3.a(this.entropySource, i);
    }

    @Override
    public String getAlgorithm() {
        return this.drbgProvider.getAlgorithm();
    }

    @Override
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            try {
                if (this.drbg == null) {
                    this.drbg = this.drbgProvider.a(this.entropySource);
                }
                if (this.drbg.a(bArr, null, this.predictionResistant) < 0) {
                    this.drbg.b(null);
                    this.drbg.a(bArr, null, this.predictionResistant);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void reseed(byte[] bArr) {
        synchronized (this) {
            try {
                if (this.drbg == null) {
                    this.drbg = this.drbgProvider.a(this.entropySource);
                }
                this.drbg.b(bArr);
            } catch (Throwable th) {
                throw th;
            }
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

package org.bouncycastle.util.test;

import defpackage.ge0;
import java.math.BigInteger;

public class TestRandomBigInteger extends FixedSecureRandom {
    public TestRandomBigInteger(int i, byte[] bArr) {
        super(new FixedSecureRandom.c[]{new FixedSecureRandom.a(i, bArr)});
    }

    public TestRandomBigInteger(String str) {
        this(str, 10);
    }

    public TestRandomBigInteger(String str, int i) {
        super(new FixedSecureRandom.c[]{new FixedSecureRandom.a(ge0.b(new BigInteger(str, i)))});
    }

    public TestRandomBigInteger(byte[] bArr) {
        super(new FixedSecureRandom.c[]{new FixedSecureRandom.a(bArr)});
    }
}

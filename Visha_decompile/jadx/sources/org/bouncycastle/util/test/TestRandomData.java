package org.bouncycastle.util.test;

import defpackage.jp4;

public class TestRandomData extends FixedSecureRandom {
    public TestRandomData(String str) {
        super(new FixedSecureRandom.c[]{new FixedSecureRandom.b(jp4.a(str))});
    }

    public TestRandomData(byte[] bArr) {
        super(new FixedSecureRandom.c[]{new FixedSecureRandom.b(bArr)});
    }
}

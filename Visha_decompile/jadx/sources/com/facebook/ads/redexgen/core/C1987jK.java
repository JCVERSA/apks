package com.facebook.ads.redexgen.core;

import java.io.ByteArrayInputStream;

public final class C1987jK implements L9 {
    public ByteArrayInputStream A00;
    public final byte[] A01;

    public C1987jK(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override
    public final void AFz(int i) throws C1986jJ {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip(i);
    }

    @Override
    public final void close() throws C1986jJ {
    }

    @Override
    public final int length() throws C1986jJ {
        return this.A01.length;
    }

    @Override
    public final int read(byte[] bArr) throws C1986jJ {
        return this.A00.read(bArr, 0, bArr.length);
    }
}

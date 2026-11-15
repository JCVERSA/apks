package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import java.io.FileNotFoundException;
import java.io.IOException;

public final class C2117le implements InterfaceC0871Ed {
    public final int A00;

    public C2117le() {
        this(-1);
    }

    public C2117le(int i) {
        this.A00 = i;
    }

    @Override
    public final int A8R(int i) {
        if (this.A00 == -1) {
            if (i == 7) {
                return 6;
            }
            return 3;
        }
        return this.A00;
    }

    @Override
    public final long A8m(C0870Ec c0870Ec) {
        IOException iOException = c0870Ec.A03;
        if ((iOException instanceof C05802i) || (iOException instanceof FileNotFoundException) || (iOException instanceof C07489h) || (iOException instanceof C0881En) || C06494z.A00(iOException)) {
            return C.TIME_UNSET;
        }
        return Math.min((c0870Ec.A00 - 1) * 1000, 5000);
    }
}

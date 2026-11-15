package org.apache.tools.ant.util;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class j extends OutputStream {

    private ByteArrayOutputStream f68427a = new ByteArrayOutputStream(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE);

    private boolean f68428b = false;

    @Override
    public final void close() throws IOException {
        if (this.f68427a.size() > 0) {
            d();
        }
        super.close();
    }

    protected void d() {
        try {
            f(this.f68427a.toString());
        } finally {
            this.f68427a.reset();
        }
    }

    protected abstract void f(String str);

    @Override
    public final void flush() {
        if (this.f68427a.size() > 0) {
            d();
        }
    }

    @Override
    public final void write(int i10) {
        byte b10 = (byte) i10;
        if (b10 != 10 && b10 != 13) {
            this.f68427a.write(i10);
        } else if (!this.f68428b) {
            d();
        }
        this.f68428b = b10 == 13;
    }

    @Override
    public final void write(byte[] bArr, int i10, int i11) {
        byte b10;
        while (i11 > 0) {
            int i12 = i10;
            while (i11 > 0 && (b10 = bArr[i12]) != 10 && b10 != 13) {
                i12++;
                i11--;
            }
            int i13 = i12 - i10;
            if (i13 > 0) {
                this.f68427a.write(bArr, i10, i13);
            }
            i10 = i12;
            while (i11 > 0) {
                byte b11 = bArr[i10];
                if (b11 != 10 && b11 != 13) {
                    break;
                }
                write(b11);
                i10++;
                i11--;
            }
        }
    }
}

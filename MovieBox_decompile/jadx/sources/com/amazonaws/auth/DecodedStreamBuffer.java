package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

class DecodedStreamBuffer {

    private static final Log f17742f = LogFactory.b(DecodedStreamBuffer.class);

    private byte[] f17743a;

    private int f17744b;

    private int f17745c;

    private int f17746d = -1;

    private boolean f17747e;

    public DecodedStreamBuffer(int i10) {
        this.f17743a = new byte[i10];
        this.f17744b = i10;
    }

    public void a(byte[] bArr, int i10, int i11) {
        this.f17746d = -1;
        int i12 = this.f17745c;
        if (i12 + i11 <= this.f17744b) {
            System.arraycopy(bArr, i10, this.f17743a, i12, i11);
            this.f17745c += i11;
            return;
        }
        Log log = f17742f;
        if (log.b()) {
            log.a("Buffer size " + this.f17744b + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
        }
        this.f17747e = true;
    }

    public boolean b() {
        int i10 = this.f17746d;
        return i10 != -1 && i10 < this.f17745c;
    }

    public byte c() {
        byte[] bArr = this.f17743a;
        int i10 = this.f17746d;
        this.f17746d = i10 + 1;
        return bArr[i10];
    }

    public void d() {
        if (!this.f17747e) {
            this.f17746d = 0;
            return;
        }
        throw new AmazonClientException("The input stream is not repeatable since the buffer size " + this.f17744b + " has been exceeded.");
    }
}

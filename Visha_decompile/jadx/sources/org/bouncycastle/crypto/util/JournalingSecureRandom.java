package org.bouncycastle.crypto.util;

import defpackage.ci;
import defpackage.zl1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

public class JournalingSecureRandom extends SecureRandom {
    private static byte[] EMPTY_TRANSCRIPT = new byte[0];
    private final SecureRandom base;
    private int index;
    private b tOut;
    private byte[] transcript;

    public static class b extends ByteArrayOutputStream {
        public b() {
        }

        public void b() {
            ci.s(((ByteArrayOutputStream) this).buf, (byte) 0);
        }
    }

    public JournalingSecureRandom() {
        this(zl1.d());
    }

    public void clear() {
        ci.s(this.transcript, (byte) 0);
        this.tOut.b();
    }

    public byte[] getFullTranscript() {
        int i = this.index;
        byte[] bArr = this.transcript;
        return i == bArr.length ? this.tOut.toByteArray() : ci.f(bArr);
    }

    public byte[] getTranscript() {
        return this.tOut.toByteArray();
    }

    @Override
    public final void nextBytes(byte[] bArr) {
        if (this.index >= this.transcript.length) {
            this.base.nextBytes(bArr);
        } else {
            int i = 0;
            while (i != bArr.length) {
                int i2 = this.index;
                byte[] bArr2 = this.transcript;
                if (i2 >= bArr2.length) {
                    break;
                }
                this.index = i2 + 1;
                bArr[i] = bArr2[i2];
                i++;
            }
            if (i != bArr.length) {
                int length = bArr.length - i;
                byte[] bArr3 = new byte[length];
                this.base.nextBytes(bArr3);
                System.arraycopy(bArr3, 0, bArr, i, length);
            }
        }
        try {
            this.tOut.write(bArr);
        } catch (IOException e) {
            throw new IllegalStateException("unable to record transcript: " + e.getMessage());
        }
    }

    public void reset() {
        this.index = 0;
        if (this.transcript.length == 0) {
            this.transcript = this.tOut.toByteArray();
        }
        this.tOut.reset();
    }

    public JournalingSecureRandom(SecureRandom secureRandom) {
        this.tOut = new b();
        this.index = 0;
        this.base = secureRandom;
        this.transcript = EMPTY_TRANSCRIPT;
    }

    public JournalingSecureRandom(byte[] bArr, SecureRandom secureRandom) {
        this.tOut = new b();
        this.index = 0;
        this.base = secureRandom;
        this.transcript = ci.f(bArr);
    }
}

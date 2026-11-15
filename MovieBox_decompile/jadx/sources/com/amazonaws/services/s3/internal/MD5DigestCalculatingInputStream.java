package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5DigestCalculatingInputStream extends SdkFilterInputStream {

    private MessageDigest f18014a;

    private MessageDigest f18015b;

    public MD5DigestCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
        this.f18014a = n();
    }

    private MessageDigest l(MessageDigest messageDigest) {
        try {
            return (MessageDigest) messageDigest.clone();
        } catch (CloneNotSupportedException e10) {
            throw new IllegalStateException("unexpected", e10);
        }
    }

    private MessageDigest n() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("unexpected", e10);
        }
    }

    public byte[] m() {
        return this.f18014a.digest();
    }

    @Override
    public void mark(int i10) {
        if (markSupported()) {
            super.mark(i10);
            this.f18015b = l(this.f18014a);
        }
    }

    @Override
    public int read() {
        int i10 = super.read();
        if (i10 != -1) {
            this.f18014a.update((byte) i10);
        }
        return i10;
    }

    @Override
    public void reset() throws IOException {
        if (!markSupported()) {
            throw new IOException("mark/reset not supported");
        }
        super.reset();
        MessageDigest messageDigest = this.f18015b;
        this.f18014a = messageDigest == null ? n() : l(messageDigest);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        int i12 = super.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f18014a.update(bArr, i10, i12);
        }
        return i12;
    }
}

package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkDigestInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.util.Arrays;

public class DigestValidationInputStream extends SdkDigestInputStream {

    private byte[] f18007a;

    private boolean f18008b;

    public DigestValidationInputStream(InputStream inputStream, MessageDigest messageDigest, byte[] bArr) {
        super(inputStream, messageDigest);
        this.f18008b = false;
        this.f18007a = bArr;
    }

    private void h() {
        if (this.f18007a == null || this.f18008b) {
            return;
        }
        this.f18008b = true;
        if (!Arrays.equals(((DigestInputStream) this).digest.digest(), this.f18007a)) {
            throw new AmazonClientException("Unable to verify integrity of data download.  Client calculated content hash didn't match hash calculated by Amazon S3.  The data may be corrupt.");
        }
    }

    @Override
    public int read() throws IOException {
        int i10 = super.read();
        if (i10 == -1) {
            h();
        }
        return i10;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = super.read(bArr, i10, i11);
        if (i12 == -1) {
            h();
        }
        return i12;
    }
}

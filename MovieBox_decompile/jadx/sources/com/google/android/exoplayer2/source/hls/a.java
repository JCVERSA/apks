package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.k0;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

class a implements com.google.android.exoplayer2.upstream.k {

    private final com.google.android.exoplayer2.upstream.k f25277a;

    private final byte[] f25278b;

    private final byte[] f25279c;

    private CipherInputStream f25280d;

    public a(com.google.android.exoplayer2.upstream.k kVar, byte[] bArr, byte[] bArr2) {
        this.f25277a = kVar;
        this.f25278b = bArr;
        this.f25279c = bArr2;
    }

    @Override
    public final long a(com.google.android.exoplayer2.upstream.n nVar) {
        try {
            Cipher cipherF = f();
            try {
                cipherF.init(2, new SecretKeySpec(this.f25278b, "AES"), new IvParameterSpec(this.f25279c));
                com.google.android.exoplayer2.upstream.l lVar = new com.google.android.exoplayer2.upstream.l(this.f25277a, nVar);
                this.f25280d = new CipherInputStream(lVar, cipherF);
                lVar.h();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override
    public void close() {
        if (this.f25280d != null) {
            this.f25280d = null;
            this.f25277a.close();
        }
    }

    @Override
    public final void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f25277a.e(k0Var);
    }

    protected Cipher f() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override
    public final Map getResponseHeaders() {
        return this.f25277a.getResponseHeaders();
    }

    @Override
    public final Uri getUri() {
        return this.f25277a.getUri();
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        com.google.android.exoplayer2.util.a.e(this.f25280d);
        int i12 = this.f25280d.read(bArr, i10, i11);
        if (i12 < 0) {
            return -1;
        }
        return i12;
    }
}

package androidx.media3.exoplayer.hls;

import android.net.Uri;
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

class a implements androidx.media3.datasource.a {

    private final androidx.media3.datasource.a f11378a;

    private final byte[] f11379b;

    private final byte[] f11380c;

    private CipherInputStream f11381d;

    public a(androidx.media3.datasource.a aVar, byte[] bArr, byte[] bArr2) {
        this.f11378a = aVar;
        this.f11379b = bArr;
        this.f11380c = bArr2;
    }

    @Override
    public final long a(w1.h hVar) {
        try {
            Cipher cipherD = d();
            try {
                cipherD.init(2, new SecretKeySpec(this.f11379b, "AES"), new IvParameterSpec(this.f11380c));
                w1.f fVar = new w1.f(this.f11378a, hVar);
                this.f11381d = new CipherInputStream(fVar, cipherD);
                fVar.h();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override
    public final void c(w1.n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f11378a.c(nVar);
    }

    @Override
    public void close() {
        if (this.f11381d != null) {
            this.f11381d = null;
            this.f11378a.close();
        }
    }

    protected Cipher d() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override
    public final Map getResponseHeaders() {
        return this.f11378a.getResponseHeaders();
    }

    @Override
    public final Uri getUri() {
        return this.f11378a.getUri();
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        androidx.media3.common.util.a.e(this.f11381d);
        int i12 = this.f11381d.read(bArr, i10, i11);
        if (i12 < 0) {
            return -1;
        }
        return i12;
    }
}

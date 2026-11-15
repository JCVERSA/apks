package defpackage;

import com.google.android.gms.internal.ads.zzavf;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class nre {
    public static Cipher a;
    public static final Object b = new Object();
    public static final Object c = new Object();

    public nre(SecureRandom secureRandom) {
    }

    public static final Cipher c() {
        Cipher cipher;
        synchronized (c) {
            try {
                if (a == null) {
                    a = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
                }
                cipher = a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipher;
    }

    public final String a(byte[] bArr, byte[] bArr2) throws zzavf {
        byte[] bArrDoFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (b) {
                c().init(1, secretKeySpec, (SecureRandom) null);
                bArrDoFinal = c().doFinal(bArr2);
                iv = c().getIV();
            }
            int length2 = bArrDoFinal.length + iv.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(iv).put(bArrDoFinal);
            byteBufferAllocate.flip();
            byte[] bArr3 = new byte[length2];
            byteBufferAllocate.get(bArr3);
            return vpe.a(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new zzavf(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new zzavf(this, e2);
        } catch (BadPaddingException e3) {
            throw new zzavf(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new zzavf(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new zzavf(this, e5);
        }
    }

    public final byte[] b(byte[] bArr, String str) throws zzavf {
        byte[] bArrDoFinal;
        int length = bArr.length;
        try {
            byte[] bArrB = vpe.b(str, false);
            int length2 = bArrB.length;
            if (length2 <= 16) {
                throw new zzavf(this);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(bArrB);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (b) {
                c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = c().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e) {
            throw new zzavf(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new zzavf(this, e2);
        } catch (InvalidKeyException e3) {
            throw new zzavf(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new zzavf(this, e4);
        } catch (BadPaddingException e5) {
            throw new zzavf(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new zzavf(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new zzavf(this, e7);
        }
    }
}

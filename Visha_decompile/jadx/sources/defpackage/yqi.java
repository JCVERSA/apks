package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public final class yqi implements qmi {
    public static final ThreadLocal d = new xqi();
    public final SecretKey a;
    public final byte[] b;
    public final byte[] c;

    public yqi(byte[] bArr) throws GeneralSecurityException {
        cri.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.a = secretKeySpec;
        Cipher cipherB = b();
        cipherB.init(1, secretKeySpec);
        byte[] bArrA = fmi.a(cipherB.doFinal(new byte[16]));
        this.b = bArrA;
        this.c = fmi.a(bArrA);
    }

    public static Cipher b() throws GeneralSecurityException {
        if (tgi.a(1)) {
            return (Cipher) d.get();
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    public static void c(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        for (int i2 = 0; i2 < 16; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2 + i]);
        }
    }

    @Override
    public final byte[] a(byte[] bArr, int i) throws GeneralSecurityException {
        byte[] bArrC;
        if (i > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        SecretKey secretKey = this.a;
        Cipher cipherB = b();
        cipherB.init(1, secretKey);
        int length = bArr.length;
        int i2 = length != 0 ? 1 + ((length - 1) >> 4) : 1;
        int i3 = i2 - 1;
        int i4 = i3 * 16;
        if (i2 * 16 == length) {
            bArrC = cqi.c(bArr, i4, this.b, 0, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i4, length);
            int length2 = bArrCopyOfRange.length;
            if (length2 >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[length2] = SocketData.CLAZZ_TYPE_END_SOCKET;
            byte[] bArr2 = this.c;
            if (bArrCopyOf.length != 16) {
                throw new IllegalArgumentException("The lengths of x and y should match.");
            }
            bArrC = cqi.c(bArrCopyOf, 0, bArr2, 0, 16);
        }
        byte[] bArr3 = new byte[16];
        byte[] bArr4 = new byte[16];
        for (int i5 = 0; i5 < i3; i5++) {
            c(bArr3, bArr, i5 * 16, bArr4);
            if (cipherB.doFinal(bArr4, 0, 16, bArr3) != 16) {
                throw new IllegalStateException("Cipher didn't write full block");
            }
        }
        c(bArr3, bArrC, 0, bArr4);
        if (cipherB.doFinal(bArr4, 0, 16, bArr3) == 16) {
            return i == 16 ? bArr3 : Arrays.copyOf(bArr3, i);
        }
        throw new IllegalStateException("Cipher didn't write full block");
    }
}

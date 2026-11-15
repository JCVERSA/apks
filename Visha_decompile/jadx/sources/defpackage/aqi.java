package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class aqi implements q8i {
    public static final ThreadLocal f = new ypi();
    public static final ThreadLocal g = new zpi();
    public final byte[] a;
    public final byte[] b;
    public final byte[] c;
    public final SecretKeySpec d;
    public final int e;

    public aqi(byte[] bArr, int i, byte[] bArr2) throws GeneralSecurityException {
        if (!tgi.a(1)) {
            throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
        }
        if (i != 12 && i != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.e = i;
        cri.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.d = secretKeySpec;
        Cipher cipher = (Cipher) f.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrD = d(cipher.doFinal(new byte[16]));
        this.a = bArrD;
        this.b = d(bArrD);
        this.c = bArr2;
    }

    public static q8i b(ebi ebiVar) throws GeneralSecurityException {
        if (tgi.a(1)) {
            return new aqi(ebiVar.e().d(a9i.a()), ebiVar.d().b(), ebiVar.b().d());
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    public static void c(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    public static byte[] d(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (i < 15) {
            byte b = bArr[i];
            int i2 = i + 1;
            bArr2[i] = (byte) (((b + b) ^ ((bArr[i2] & 255) >>> 7)) & 255);
            i = i2;
        }
        byte b2 = bArr[15];
        bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b2 + b2));
        return bArr2;
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.c;
        int length = bArr.length;
        int length2 = bArr3.length;
        int i = this.e;
        int i2 = ((length - length2) - i) - 16;
        if (i2 < 0) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!fki.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        Cipher cipher = (Cipher) f.get();
        SecretKeySpec secretKeySpec = this.d;
        cipher.init(1, secretKeySpec);
        byte[] bArrE = e(cipher, 0, bArr, length2, i);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte b = 0;
        byte[] bArrE2 = e(cipher, 1, bArr4, 0, bArr4.length);
        byte[] bArrE3 = e(cipher, 2, bArr, length2 + i, i2);
        int i3 = length - 16;
        int i4 = 0;
        while (i4 < 16) {
            byte b2 = (byte) (b | (((bArr[i3 + i4] ^ bArrE2[i4]) ^ bArrE[i4]) ^ bArrE3[i4]));
            i4++;
            b = b2;
        }
        if (b != 0) {
            throw new AEADBadTagException("tag mismatch");
        }
        Cipher cipher2 = (Cipher) g.get();
        cipher2.init(1, secretKeySpec, new IvParameterSpec(bArrE));
        return cipher2.doFinal(bArr, bArr3.length + i, i2);
    }

    public final byte[] e(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        int length;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i;
        if (i3 == 0) {
            c(bArr2, this.a);
            return cipher.doFinal(bArr2);
        }
        byte[] bArr3 = new byte[16];
        cipher.doFinal(bArr2, 0, 16, bArr3);
        int i4 = 0;
        while (true) {
            byte[] bArr4 = bArr2;
            bArr2 = bArr3;
            bArr3 = bArr4;
            if (i3 - i4 <= 16) {
                break;
            }
            for (int i5 = 0; i5 < 16; i5++) {
                bArr2[i5] = (byte) (bArr[(i2 + i4) + i5] ^ bArr2[i5]);
            }
            cipher.doFinal(bArr2, 0, 16, bArr3);
            i4 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i4 + i2, i2 + i3);
        if (bArrCopyOfRange.length == 16) {
            c(bArrCopyOfRange, this.a);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(this.b, 16);
            int i6 = 0;
            while (true) {
                length = bArrCopyOfRange.length;
                if (i6 >= length) {
                    break;
                }
                bArrCopyOf[i6] = (byte) (bArrCopyOf[i6] ^ bArrCopyOfRange[i6]);
                i6++;
            }
            bArrCopyOf[length] = (byte) (bArrCopyOf[length] ^ SocketData.CLAZZ_TYPE_END_SOCKET);
            bArrCopyOfRange = bArrCopyOf;
        }
        c(bArr2, bArrCopyOfRange);
        cipher.doFinal(bArr2, 0, 16, bArr3);
        return bArr3;
    }
}

package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

public final class eqi implements q8i {
    public final wqi a;
    public final o9i b;
    public final int c;
    public final byte[] d;

    public eqi(wqi wqiVar, o9i o9iVar, int i, byte[] bArr) {
        this.a = wqiVar;
        this.b = o9iVar;
        this.c = i;
        this.d = bArr;
    }

    public static q8i b(rai raiVar) {
        xpi xpiVar = new xpi(raiVar.e().d(a9i.a()), raiVar.d().d());
        String strValueOf = String.valueOf(raiVar.d().g());
        return new eqi(xpiVar, new bri(new ari("HMAC".concat(strValueOf), new SecretKeySpec(raiVar.f().d(a9i.a()), "HMAC")), raiVar.d().e()), raiVar.d().e(), raiVar.b().d());
    }

    @Override
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.d;
        int length = bArr.length;
        int i = this.c;
        int length2 = bArr3.length;
        if (length < i + length2) {
            throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
        }
        if (!fki.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        int i2 = length - i;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, length2, i2);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i2, length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArrCopyOf = Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8);
        if (MessageDigest.isEqual(((bri) this.b).c(cqi.b(bArr2, bArrCopyOfRange, bArrCopyOf)), bArrCopyOfRange2)) {
            return this.a.a(bArrCopyOfRange);
        }
        throw new GeneralSecurityException("invalid MAC");
    }
}

package tu;

import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Objects;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public abstract class j {

    public static final byte[] f72844a;

    public static final String f72845b;

    static {
        byte[] bytes = "#PART#".getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        f72844a = bytes;
        f72845b = "rsa_public_key.pem";
    }

    public static byte[] a(byte[] data, byte[] publicKey) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        int i10;
        int i11;
        byte[] bArr;
        Intrinsics.h(data, "data");
        Intrinsics.h(publicKey, "publicKey");
        int length = data.length;
        int i12 = 1;
        int i13 = 245;
        if (length <= 245) {
            Intrinsics.h(data, "data");
            Intrinsics.h(publicKey, "publicKey");
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(publicKey));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKeyGeneratePublic);
            byte[] bArrDoFinal = cipher.doFinal(data);
            Intrinsics.g(bArrDoFinal, "doFinal(...)");
            return bArrDoFinal;
        }
        ArrayList<Byte> arrayList = new ArrayList();
        byte[] data2 = new byte[245];
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < length) {
            Objects.requireNonNull(data2);
            Intrinsics.f(data2, "null cannot be cast to non-null type kotlin.ByteArray");
            data2[i15] = data[i14];
            i15 += i12;
            if (i15 == i13 || i14 == length - 1) {
                i16++;
                if (i16 != i12) {
                    for (byte b10 : f72844a) {
                        arrayList.add(Byte.valueOf(b10));
                    }
                }
                Intrinsics.e(data2);
                Intrinsics.h(data2, "data");
                Intrinsics.h(publicKey, "publicKey");
                PublicKey publicKeyGeneratePublic2 = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(publicKey));
                Cipher cipher2 = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher2.init(1, publicKeyGeneratePublic2);
                byte[] bArrDoFinal2 = cipher2.doFinal(data2);
                Intrinsics.g(bArrDoFinal2, "doFinal(...)");
                for (byte b11 : bArrDoFinal2) {
                    arrayList.add(Byte.valueOf(b11));
                }
                if (i14 == length - 1) {
                    bArr = null;
                    i10 = 1;
                    i11 = 245;
                } else {
                    i10 = 1;
                    i11 = 245;
                    bArr = new byte[Math.min(245, (length - i14) - 1)];
                }
                i15 = 0;
            } else {
                int i17 = i13;
                i10 = i12;
                bArr = data2;
                i11 = i17;
            }
            i14++;
            int i18 = i11;
            data2 = bArr;
            i12 = i10;
            i13 = i18;
        }
        byte[] bArr2 = new byte[arrayList.size()];
        int i19 = 0;
        for (Byte b12 : arrayList) {
            Intrinsics.e(b12);
            bArr2[i19] = b12.byteValue();
            i19++;
        }
        return bArr2;
    }
}

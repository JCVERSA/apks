package com.cloud.sdk.commonutil.util;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.cloud.sdk.commonutil.R$string;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

public class o {

    public static final byte[] f22547a = "#PART#".getBytes();

    private static byte[] f22548b = new byte[0];

    public static String f22549c = "hisavana_rsa_public_key.pem";

    public static byte[] a(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKeyGeneratePublic);
        return cipher.doFinal(bArr);
    }

    public static String b(String str) {
        try {
            if (f22548b.length == 0) {
                f22548b = Base64.decode(k(), 0);
            }
            return !TextUtils.isEmpty(str) ? Base64.encodeToString(d(str.getBytes(), f22548b), 0) : "";
        } catch (Exception e10) {
            c.Log().d("RSAUtils", Log.getStackTraceString(e10));
            return "";
        }
    }

    public static ArrayList c(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        if (arrayList != null) {
            try {
                if (!arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (!TextUtils.isEmpty(str)) {
                            arrayList2.add(b(str));
                        }
                    }
                }
            } catch (Exception e10) {
                c.Log().d("RSAUtils", Log.getStackTraceString(e10));
            }
        }
        return arrayList2;
    }

    public static byte[] d(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        int length = bArr.length;
        if (length <= 245) {
            return a(bArr, bArr2);
        }
        ArrayList arrayList = new ArrayList(2048);
        byte[] bArr3 = new byte[245];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < length) {
            Objects.requireNonNull(bArr3);
            bArr3[i12] = bArr[i11];
            i12++;
            if (i12 == 245 || i11 == length - 1) {
                i13++;
                if (i13 != 1) {
                    for (byte b10 : f22547a) {
                        arrayList.add(Byte.valueOf(b10));
                    }
                }
                for (byte b11 : a(bArr3, bArr2)) {
                    arrayList.add(Byte.valueOf(b11));
                }
                bArr3 = i11 == length + (-1) ? null : new byte[Math.min(245, (length - i11) - 1)];
                i12 = 0;
            }
            i11++;
        }
        byte[] bArr4 = new byte[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            bArr4[i10] = ((Byte) it.next()).byteValue();
            i10++;
        }
        return bArr4;
    }

    private static String e(int i10, int i11) {
        for (int i12 = 1; i12 <= i10 * i11; i12++) {
            if (i12 % i10 == 0 && i12 % i11 == 0) {
                return "1h3dnydEtMCjLg71Vy09IwC04GNKvP2HPJT";
            }
        }
        return "1h3dnydEtMCjLg71Vy09IwC04GNKvP2HPJT";
    }

    private static String f(int i10, int i11) {
        for (int i12 = 1; i12 <= i10 * i11; i12++) {
            if (i12 % i10 == 0 && i12 % i11 == 0) {
                return "faRHiiBsLon6/wpfe968tOlMSCc7BwcEB3V9EdjwE";
            }
        }
        return "faRHiiBsLon6/wpfe968tOlMSCc7BwcEB3V9EdjwE";
    }

    private static String g() {
        return e.a().getResources().getString(R$string.hisavana_rk_1);
    }

    private static String h() {
        return e.a().getResources().getString(R$string.hisavana_rk_2);
    }

    private static String i() {
        return e.a().getResources().getString(R$string.hisavana_rk_3);
    }

    public static String j(String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(e.a().getResources().getAssets().open(str)));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb2.toString();
            }
            sb2.append(line);
        }
    }

    private static String k() {
        try {
            return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gdcC1kYZd3jArKYosx9FQ91KzxbRt32" + e(1, 2) + f(1, 2) + l() + m() + g() + h() + i();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String l() {
        return "NxZIy4OwQRj+5dw9rjrnM5yFu4VC9sLjydbJn";
    }

    private static String m() {
        return "VzmY1jLJle/7PNkpIf5xjD6zt4gYjyTpgnmGzPW";
    }

    public static void n() {
        if (f22548b.length == 0) {
            f22548b = Base64.decode(k(), 0);
        }
    }
}

package defpackage;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.cloud.sdk.commonutil.R;
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

public abstract class in8 {
    public static final byte[] a = "#PART#".getBytes();
    public static byte[] b = new byte[0];
    public static String c = "hisavana_rsa_public_key.pem";

    public static byte[] a(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKeyGeneratePublic);
        return cipher.doFinal(bArr);
    }

    public static String b(String str) {
        try {
            if (b.length == 0) {
                b = Base64.decode(k(), 0);
            }
            return !TextUtils.isEmpty(str) ? Base64.encodeToString(d(str.getBytes(), b), 0) : "";
        } catch (Exception e) {
            ja1.Log().d("RSAUtils", Log.getStackTraceString(e));
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
            } catch (Exception e) {
                ja1.Log().d("RSAUtils", Log.getStackTraceString(e));
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
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            Objects.requireNonNull(bArr3);
            bArr3[i3] = bArr[i2];
            i3++;
            if (i3 == 245 || i2 == length - 1) {
                i4++;
                if (i4 != 1) {
                    for (byte b2 : a) {
                        arrayList.add(Byte.valueOf(b2));
                    }
                }
                for (byte b3 : a(bArr3, bArr2)) {
                    arrayList.add(Byte.valueOf(b3));
                }
                bArr3 = i2 == length + (-1) ? null : new byte[Math.min(245, (length - i2) - 1)];
                i3 = 0;
            }
            i2++;
        }
        byte[] bArr4 = new byte[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            bArr4[i] = ((Byte) it.next()).byteValue();
            i++;
        }
        return bArr4;
    }

    public static String e(int i, int i2) {
        for (int i3 = 1; i3 <= i * i2; i3++) {
            if (i3 % i == 0 && i3 % i2 == 0) {
                return "1h3dnydEtMCjLg71Vy09IwC04GNKvP2HPJT";
            }
        }
        return "1h3dnydEtMCjLg71Vy09IwC04GNKvP2HPJT";
    }

    public static String f(int i, int i2) {
        for (int i3 = 1; i3 <= i * i2; i3++) {
            if (i3 % i == 0 && i3 % i2 == 0) {
                return "faRHiiBsLon6/wpfe968tOlMSCc7BwcEB3V9EdjwE";
            }
        }
        return "faRHiiBsLon6/wpfe968tOlMSCc7BwcEB3V9EdjwE";
    }

    public static String g() {
        return ul4.a().getResources().getString(R.string.hisavana_rk_1);
    }

    public static String h() {
        return ul4.a().getResources().getString(R.string.hisavana_rk_2);
    }

    public static String i() {
        return ul4.a().getResources().getString(R.string.hisavana_rk_3);
    }

    public static String j(String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(ul4.a().getResources().getAssets().open(str)));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb.toString();
            }
            sb.append(line);
        }
    }

    public static String k() {
        try {
            return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gdcC1kYZd3jArKYosx9FQ91KzxbRt32" + e(1, 2) + f(1, 2) + l() + m() + g() + h() + i();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String l() {
        return "NxZIy4OwQRj+5dw9rjrnM5yFu4VC9sLjydbJn";
    }

    public static String m() {
        return "VzmY1jLJle/7PNkpIf5xjD6zt4gYjyTpgnmGzPW";
    }

    public static void n() {
        if (b.length == 0) {
            b = Base64.decode(k(), 0);
        }
    }
}

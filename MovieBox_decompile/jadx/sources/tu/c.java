package tu;

import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public abstract class c {

    public static final IvParameterSpec f72836a = new IvParameterSpec(new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15});

    public static String a(String seed) {
        Intrinsics.h(seed, "seed");
        try {
            return Base64.getEncoder().encodeToString(c(seed).getEncoded());
        } catch (Exception unused) {
            long jA = nu.d.a("AesUtils", "tag", "fail to generate key", NotificationCompat.CATEGORY_MESSAGE);
            boolean z10 = g.f72839a;
            if (!z10 && jA - g.f72840b >= 5000) {
                g.f72840b = jA;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
                z10 = g.f72839a;
            }
            if (!qu.f.f70259o.a().f70264d && !z10) {
                return null;
            }
            Log.e("AesUtils", "fail to generate key");
            return null;
        }
    }

    public static String b(String gaid, String packageName) {
        Intrinsics.h(gaid, "gaid");
        Intrinsics.h(packageName, "packageName");
        try {
            String strA = a(packageName);
            if (strA == null) {
                return null;
            }
            byte[] bArrDecode = Base64.getDecoder().decode(strA);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArrDecode, 0, bArrDecode.length, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, f72836a);
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.g(UTF_8, "UTF_8");
            byte[] bytes = gaid.getBytes(UTF_8);
            Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
            return Base64.getEncoder().encodeToString(cipher.doFinal(bytes));
        } catch (Exception e10) {
            String msg = "fail to encrypt " + e10.getMessage();
            Intrinsics.h("AesUtils", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z10 = g.f72839a;
            if (!z10 && jCurrentTimeMillis - g.f72840b >= 5000) {
                g.f72840b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
                z10 = g.f72839a;
            }
            if (qu.f.f70259o.a().f70264d || z10) {
                Log.e("AesUtils", msg);
            }
            return null;
        }
    }

    public static SecretKeySpec c(String str) throws NoSuchAlgorithmException {
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
        char[] charArray = str.toCharArray();
        Intrinsics.g(charArray, "this as java.lang.String).toCharArray()");
        return new SecretKeySpec(secretKeyFactory.generateSecret(new PBEKeySpec(charArray, bytes, 65536, 256)).getEncoded(), "AES");
    }

    public static String d(String plainText) {
        Intrinsics.h(plainText, "plainText");
        if (!TextUtils.isEmpty(plainText)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bytes = plainText.getBytes(Charsets.UTF_8);
                Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
                messageDigest.update(bytes);
                byte[] bArrDigest = messageDigest.digest();
                StringBuffer stringBuffer = new StringBuffer("");
                int length = bArrDigest.length;
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = bArrDigest[i10];
                    if (i11 < 0) {
                        i11 += 256;
                    }
                    if (i11 < 16) {
                        stringBuffer.append("0");
                    }
                    stringBuffer.append(Integer.toHexString(i11));
                }
                String string = stringBuffer.toString();
                Intrinsics.g(string, "toString(...)");
                return string;
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return "";
    }
}

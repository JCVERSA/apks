package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.R;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class i {
    public static String a = "";

    public static String a(String str) {
        try {
            byte[] bytes = b().getBytes();
            byte[] bArr = new byte[12];
            new SecureRandom().nextBytes(bArr);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, secretKeySpec, new GCMParameterSpec(128, bArr));
            byte[] bArrDoFinal = cipher.doFinal(str.getBytes("UTF8"));
            byte[] bArr2 = new byte[bArrDoFinal.length + 12];
            System.arraycopy(bArr, 0, bArr2, 0, 12);
            System.arraycopy(bArrDoFinal, 0, bArr2, 12, bArrDoFinal.length);
            return f(bArr2);
        } catch (Exception e) {
            ja1.Log().e("AESUtils", Log.getStackTraceString(e));
            return "";
        }
    }

    public static String b() {
        if (TextUtils.isEmpty(a)) {
            a = "sOWGI8Lv" + c(1, 2) + e() + d();
        }
        return a;
    }

    public static String c(int i, int i2) {
        for (int i3 = 1; i3 <= i * i2; i3++) {
            if (i3 % i == 0 && i3 % i2 == 0) {
                return "FnvyH19r";
            }
        }
        return "FnvyH19r";
    }

    public static String d() {
        return ul4.a().getResources().getString(R.string.bk4);
    }

    public static String e() {
        return "s2DytdII";
    }

    public static String f(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }
}

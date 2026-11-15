package defpackage;

import android.content.Context;
import android.content.pm.Signature;
import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;

public class rk7 {
    public final Context a;

    public rk7(Context context) {
        this.a = context.getApplicationContext();
    }

    public final String a(String str, String str2) {
        String str3 = str + " " + str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str3.getBytes(StandardCharsets.UTF_8));
            return Base64.encodeToString(Arrays.copyOfRange(messageDigest.digest(), 0, 9), 3).substring(0, 11);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public ArrayList b() {
        ArrayList arrayList = new ArrayList();
        try {
            String packageName = this.a.getPackageName();
            for (Signature signature : this.a.getPackageManager().getPackageInfo(packageName, 64).signatures) {
                String strA = a(packageName, signature.toCharsString());
                if (strA != null) {
                    arrayList.add(String.format("%s", strA));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}

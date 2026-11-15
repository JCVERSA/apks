package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.core.deviceinfo.DeviceInfo;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.UUID;

public abstract class mp7 {
    public static String a(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        String string = sharedPreferences.getString("key_device_id", "");
        if (TextUtils.isEmpty(string) || "00000000-0000-0000-0000-000000000000".equals(string)) {
            String strC = l41.b(context).c();
            String strD = (strC == null || strC.length() >= 4) ? strC : "";
            if (TextUtils.isEmpty(strD)) {
                strD = DeviceInfo.d();
            }
            string = (TextUtils.isEmpty(strD) || "00000000-0000-0000-0000-000000000000".equals(strD)) ? UUID.randomUUID().toString() : strD;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("key_device_id", string);
            editorEdit.apply();
        }
        return string;
    }

    public static String b(Context context, String str) {
        PackageInfo packageInfo;
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 64);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo == null) {
            Log.d("AidlUtil", "信息为 null, 包名 = " + str);
            return "";
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
        try {
            certificateFactory = CertificateFactory.getInstance("X509");
        } catch (CertificateException e2) {
            e2.printStackTrace();
            certificateFactory = null;
        }
        try {
            x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
        } catch (CertificateException e3) {
            e3.printStackTrace();
            x509Certificate = null;
        }
        try {
            return c(MessageDigest.getInstance("SHA1").digest(x509Certificate.getEncoded()));
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return null;
        } catch (CertificateEncodingException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static String c(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }
}

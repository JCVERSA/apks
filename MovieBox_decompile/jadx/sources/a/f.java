package a;

import android.util.Base64;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class f {
    public static JSONObject d(String str, String str2) {
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            throw new IllegalArgumentException("Empty remote config");
        }
        if (strTrim.startsWith("{")) {
            JSONObject jSONObject = new JSONObject(strTrim);
            if (jSONObject.has("iv") && jSONObject.has("payload") && jSONObject.has("mac")) {
                return new JSONObject(a(c(jSONObject.getJSONArray("iv")), c(jSONObject.getJSONArray("payload")), c(jSONObject.getJSONArray("mac")), str2));
            }
            if (jSONObject.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
                return new JSONObject(b(jSONObject.getString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D), str2));
            }
            return (jSONObject.has("payload") && (jSONObject.opt("payload") instanceof String)) ? new JSONObject(b(jSONObject.getString("payload"), str2)) : jSONObject;
        }
        return new JSONObject(b(strTrim, str2));
    }

    public static String b(String str, String str2) {
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.regionMatches(true, 0, "NMRC1:", 0, 6)) {
            strTrim = strTrim.substring(6);
        }
        byte[] bArrDecode = Base64.decode(strTrim, 0);
        if (bArrDecode.length < 49) {
            throw new IllegalArgumentException("Encrypted config is too short");
        }
        return a(Arrays.copyOfRange(bArrDecode, 0, 16), Arrays.copyOfRange(bArrDecode, 16, bArrDecode.length - 32), Arrays.copyOfRange(bArrDecode, bArrDecode.length - 32, bArrDecode.length), str2);
    }

    public static String a(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr.length != 16 || bArr3.length != 32 || bArr2.length == 0) {
            throw new IllegalArgumentException("Invalid encrypted config lengths");
        }
        byte[] bArrDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_512).digest(str.getBytes("UTF-8"));
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrDigest, 0, 32);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArrDigest, 32, 64);
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArrCopyOfRange2, "HmacSHA256"));
        mac.update(bArr);
        if (!MessageDigest.isEqual(bArr3, mac.doFinal(bArr2))) {
            throw new SecurityException("Remote config authentication failed");
        }
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, new SecretKeySpec(bArrCopyOfRange, "AES"), new IvParameterSpec(bArr));
        return new String(cipher.doFinal(bArr2), "UTF-8");
    }

    public static byte[] c(JSONArray jSONArray) throws JSONException {
        int length = jSONArray.length();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = jSONArray.getInt(i10);
            if (i11 < 0 || i11 > 255) {
                throw new IllegalArgumentException("Invalid byte value");
            }
            bArr[i10] = (byte) i11;
        }
        return bArr;
    }
}

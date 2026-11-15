package defpackage;

import com.transsion.livecaption.constant.ICode;
import java.nio.charset.Charset;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class h {
    public static final h a = new h();
    public static final String b = "AESUtil";

    public final String a(String str, byte[] bArr) {
        y45.j(bArr, "password");
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, c(bArr));
            byte[] bArrDoFinal = cipher.doFinal(Base64.getDecoder().decode(str));
            y45.g(bArrDoFinal);
            Charset charsetForName = Charset.forName("utf-8");
            y45.i(charsetForName, "forName(...)");
            return new String(bArrDoFinal, charsetForName);
        } catch (Exception e) {
            oq5.a.b(b, e);
            return "";
        }
    }

    public final String b(String str, byte[] bArr) {
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(bArr, "password");
        try {
            Charset charsetForName = Charset.forName("utf-8");
            y45.i(charsetForName, "forName(...)");
            byte[] bytes = str.getBytes(charsetForName);
            y45.i(bytes, "getBytes(...)");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, c(bArr));
            String strEncodeToString = Base64.getEncoder().encodeToString(cipher.doFinal(bytes));
            y45.i(strEncodeToString, "encodeToString(...)");
            return strEncodeToString;
        } catch (Exception e) {
            oq5.a.b(b, e);
            return "";
        }
    }

    public final SecretKeySpec c(byte[] bArr) {
        try {
            return new SecretKeySpec(bArr, "AES");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

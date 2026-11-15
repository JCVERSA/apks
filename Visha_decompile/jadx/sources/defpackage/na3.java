package defpackage;

import android.text.TextUtils;
import com.asa.wbcrypto_wrapper_oscloud_client.Wbcrypto_Wrapper_OSCloud_Client;

public final class na3 {
    public static final na3 a = new na3();

    public final byte[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("data为空");
        }
        byte[] bArrB = Wbcrypto_Wrapper_OSCloud_Client.b(str, 16);
        y45.i(bArrB, "ASA_Wbcrypto_GenKey_Wrapper(...)");
        return bArrB;
    }

    public final String b() {
        String strA = Wbcrypto_Wrapper_OSCloud_Client.a();
        y45.i(strA, "ASA_Wbcrypto_Cipher_Version(...)");
        return strA;
    }

    public final String c(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("data为空");
        }
        String strC = Wbcrypto_Wrapper_OSCloud_Client.c(str);
        y45.i(strC, "ASA_Wbcrypto_Sign_String_Wrapper(...)");
        return strC;
    }

    public final boolean d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new NullPointerException("data或sign为空");
        }
        return Wbcrypto_Wrapper_OSCloud_Client.d(str, str2);
    }
}

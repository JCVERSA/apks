package app.fast.ssh.util;

import android.util.Base64;

public class HideUtil {
    public static String hide(String str) {
        StringBuilder sb = new StringBuilder();
        XOREncryption.xor_value_with_key(str, sb);
        return Base64.encodeToString(sb.toString().getBytes(), 0);
    }

    public static String unhide(String str) {
        StringBuilder sb = new StringBuilder();
        XOREncryption.xor_value_with_key(new String(Base64.decode(str, 0)), sb);
        return sb.toString();
    }
}

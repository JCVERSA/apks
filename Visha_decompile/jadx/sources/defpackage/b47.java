package defpackage;

import android.text.TextUtils;
import java.util.regex.Pattern;

public abstract class b47 {
    public static boolean a(String str) {
        return Pattern.compile("^[-\\+]?[.\\d]*$").matcher(str).matches();
    }

    public static boolean b(String str) {
        return TextUtils.isDigitsOnly(str);
    }
}

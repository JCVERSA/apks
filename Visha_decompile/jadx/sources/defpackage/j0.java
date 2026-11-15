package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.playercommon.R;
import java.util.Locale;

public abstract class j0 {
    public static String a;

    public static String a(String str, String str2) {
        return "none".equals(str2) ? str : str2;
    }

    public static String b(Context context, String str) {
        return "none".equals(str) ? context.getString(R.string.visha_subtitle_do_not_translate) : pi5.a.c(str);
    }

    public static String c() {
        if (a == null) {
            String language = Locale.getDefault().getLanguage();
            Log.i("AISubtitleUtils", "getDefaultLanguageTo " + language);
            if (w5a.a().contains(language)) {
                a = language;
            } else {
                a = "none";
            }
        }
        return a;
    }
}

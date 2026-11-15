package defpackage;

import android.text.TextUtils;
import androidx.media3.common.MimeTypes;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;

public abstract class j18 {
    public static String a(String str) {
        try {
            int iLastIndexOf = str.lastIndexOf("/");
            return iLastIndexOf != -1 ? str.substring(iLastIndexOf + 1) : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean b(String str) {
        return str != null && str.startsWith("audio");
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(g()) || str.startsWith(k()) || str.startsWith(j());
    }

    public static boolean d(String str) {
        return str != null && (str.equals(ImageFormats.MIME_TYPE_GIF) || str.equals("image/GIF"));
    }

    public static boolean e(String str) {
        return str != null && str.startsWith("image");
    }

    public static boolean f(String str) {
        return str != null && str.startsWith("video");
    }

    public static String g() {
        return "image/bmp";
    }

    public static String h() {
        return "image/jpeg";
    }

    public static String i() {
        return MimeTypes.IMAGE_WEBP;
    }

    public static String j() {
        return "image/vnd.wap.wbmp";
    }

    public static String k() {
        return "image/x-ms-bmp";
    }
}

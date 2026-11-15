package defpackage;

import android.content.Context;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import com.transsion.playercommon.R;
import java.util.Locale;

public abstract class s44 {
    public static SpannableString a(Context context, long j, long j2) {
        long j3 = j2 - j;
        long jC = c(j);
        long jC2 = j3 >= 0 ? c(j3) : 0L;
        String fileSize = Formatter.formatFileSize(context, jC);
        String fileSize2 = Formatter.formatFileSize(context, jC2);
        String string = context.getResources().getString(R.string.download_size_info, fileSize, fileSize2);
        SpannableString spannableString = new SpannableString(string);
        int iIndexOf = string.indexOf(fileSize);
        int iIndexOf2 = string.indexOf(fileSize2);
        spannableString.setSpan(new StyleSpan(1), iIndexOf, fileSize.length() + iIndexOf, 17);
        spannableString.setSpan(new StyleSpan(1), iIndexOf2, fileSize2.length() + iIndexOf2, 17);
        if (j3 < j2 * 0.05f) {
            spannableString.setSpan(new ForegroundColorSpan(-33776), iIndexOf2, fileSize2.length() + iIndexOf2, 17);
        }
        return spannableString;
    }

    public static SpannableString b(Context context, long j) {
        long jH = b23.h();
        String fileSize = Formatter.formatFileSize(context, j);
        String fileSize2 = Formatter.formatFileSize(context, jH);
        String string = context.getResources().getString(R.string.download_size_info, fileSize, fileSize2);
        SpannableString spannableString = new SpannableString(string);
        int iIndexOf = string.indexOf(fileSize);
        int iIndexOf2 = string.indexOf(fileSize2);
        spannableString.setSpan(new StyleSpan(1), iIndexOf, fileSize.length() + iIndexOf, 17);
        spannableString.setSpan(new StyleSpan(1), iIndexOf2, fileSize2.length() + iIndexOf2, 17);
        if (jH < b23.q() * 0.05f) {
            spannableString.setSpan(new ForegroundColorSpan(-33776), iIndexOf2, fileSize2.length() + iIndexOf2, 17);
        }
        return spannableString;
    }

    public static long c(long j) {
        int iF;
        if (j <= 0 || (iF = f(j)) <= 0) {
            return j;
        }
        double d = iF;
        return Math.round((j * Math.pow(1000.0d, d)) / Math.pow(1024.0d, d));
    }

    public static String d(Context context, long j) {
        return e(context, j, false, Locale.US);
    }

    public static String e(Context context, long j, boolean z, Locale locale) {
        String str;
        String str2;
        if (context == null) {
            return "";
        }
        float f = j;
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "KB";
        } else {
            str = "B";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "MB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "GB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "TB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "PB";
        }
        if (f < 1.0f) {
            str2 = String.format(locale, "%.2f", Float.valueOf(f));
        } else if (f < 10.0f) {
            str2 = z ? String.format(locale, "%.1f", Float.valueOf(f)) : String.format(locale, "%.2f", Float.valueOf(f));
        } else {
            str2 = (f >= 100.0f || z) ? String.format(locale, "%.0f", Float.valueOf(f)) : String.format(locale, "%.2f", Float.valueOf(f));
        }
        return String.format("%s%s", str2, str);
    }

    public static int f(long j) {
        if (j <= 900) {
            return 0;
        }
        if (j <= 921600) {
            return 1;
        }
        if (j <= 943718400) {
            return 2;
        }
        if (j <= 966367641600L) {
            return 3;
        }
        return j <= 989560464998400L ? 4 : 5;
    }
}

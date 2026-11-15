package androidx.media3.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.media3.common.util.Util;
import com.alibaba.android.arouter.utils.Consts;

final class HtmlUtils {
    private HtmlUtils() {
    }

    public static String cssAllClassDescendantsSelector(String str) {
        return Consts.DOT + str + ",." + str + " *";
    }

    public static String toCssRgba(@ColorInt int i) {
        return Util.formatInvariant("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Double.valueOf(((double) Color.alpha(i)) / 255.0d));
    }
}

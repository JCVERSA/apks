package defpackage;

import android.content.Context;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.TypedValue;

public abstract class q47 {
    public static float a(Context context, float f) {
        return TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    public static boolean b(Context context, CharSequence charSequence, float f, float f2, int i, int i2) {
        if (i2 <= 0 || context == null) {
            return false;
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(f);
        textPaint.setLetterSpacing(f2);
        return new StaticLayout(charSequence != null ? charSequence.toString() : null, textPaint, i2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false).getLineCount() <= i;
    }

    public static boolean c(Context context, CharSequence charSequence, int i, float f, float f2, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        while (i > 0) {
            sb.append('a');
            i--;
        }
        if (i < 0) {
            int i4 = -i;
            charSequence = charSequence.toString().substring(0, charSequence.length() > i4 ? charSequence.length() - i4 : 1);
        }
        if (sb.length() > 0) {
            charSequence = ((Object) charSequence) + sb.toString();
        }
        return b(context, charSequence, f, f2, i2, i3);
    }

    public static boolean d(Context context, CharSequence charSequence, float f, float f2, int i, int i2) {
        return olb.q0(context) ? b(context, charSequence, f * 3.0f, f2, i, i2) : b(context, charSequence, a(context, f), f2, i, i2);
    }
}

package defpackage;

import android.text.Spannable;
import android.text.style.RelativeSizeSpan;

public abstract class r3g {
    public static void a(Spannable spannable, float f, int i, int i2, int i3) {
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannable.getSpans(i, i2, RelativeSizeSpan.class)) {
            if (spannable.getSpanStart(relativeSizeSpan) <= i && spannable.getSpanEnd(relativeSizeSpan) >= i2) {
                f *= relativeSizeSpan.getSizeChange();
            }
            c(spannable, relativeSizeSpan, i, i2, 33);
        }
        spannable.setSpan(new RelativeSizeSpan(f), i, i2, 33);
    }

    public static void b(Spannable spannable, Object obj, int i, int i2, int i3) {
        for (Object obj2 : spannable.getSpans(i, i2, obj.getClass())) {
            c(spannable, obj2, i, i2, 33);
        }
        spannable.setSpan(obj, i, i2, 33);
    }

    public static void c(Spannable spannable, Object obj, int i, int i2, int i3) {
        if (spannable.getSpanStart(obj) == i && spannable.getSpanEnd(obj) == i2 && spannable.getSpanFlags(obj) == 33) {
            spannable.removeSpan(obj);
        }
    }
}

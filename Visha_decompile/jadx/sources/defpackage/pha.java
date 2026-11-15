package defpackage;

import android.widget.TextView;

public abstract class pha {
    public static final boolean a() {
        return true;
    }

    public static final float b(TextView textView) {
        y45.j(textView, "<this>");
        return textView.getPaint().getFontMetrics(null);
    }

    public static final int c(TextView textView) {
        y45.j(textView, "<this>");
        return textView.getPaint().getFontMetricsInt(null);
    }

    public static final boolean d(TextView textView) {
        y45.j(textView, "<this>");
        return a() && textView.getHyphenationFrequency() != 0;
    }

    public static final int e(TextView textView, int i) {
        y45.j(textView, "<this>");
        if (textView.getLayout() == null) {
            return 0;
        }
        return textView.getLayout().getLineForVertical(i);
    }

    public static final int f(TextView textView, int i) {
        y45.j(textView, "<this>");
        if (textView.getLayout() == null) {
            return 0;
        }
        if (i > 0 && i <= textView.getLayout().getLineCount()) {
            return textView.getLayout().getLineTop(i) - textView.getLayout().getLineTop(0);
        }
        return textView.getLayout().getHeight();
    }
}

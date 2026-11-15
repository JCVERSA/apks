package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.LineBackgroundSpan;
import androidx.core.util.Pools;
import com.yandex.div.core.view2.spannable.TextVerticalAlignment;
import java.util.LinkedList;
import java.util.Queue;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class tob extends CharacterStyle implements LineBackgroundSpan {
    public static final a h = new a(null);
    public static final Pools.SimplePool i = new Pools.SimplePool(16);
    public final int b;
    public final TextVerticalAlignment c;
    public final oj8 d;
    public final Paint.FontMetricsInt e;
    public final Queue f;
    public boolean g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[TextVerticalAlignment.values().length];
            try {
                iArr[TextVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextVerticalAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextVerticalAlignment.BASELINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextVerticalAlignment.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public tob(int i2, TextVerticalAlignment textVerticalAlignment, oj8 oj8Var) {
        y45.j(textVerticalAlignment, "alignment");
        y45.j(oj8Var, "layoutProvider");
        this.b = i2;
        this.c = textVerticalAlignment;
        this.d = oj8Var;
        this.e = new Paint.FontMetricsInt();
        this.f = new LinkedList();
    }

    @Override
    public void drawBackground(Canvas canvas, Paint paint, int i2, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, int i9) {
        y45.j(canvas, "canvas");
        y45.j(paint, "paint");
        y45.j(charSequence, "text");
        if (this.g) {
            this.f.clear();
        }
        this.g = false;
        Spanned spanned = charSequence instanceof Spanned ? (Spanned) charSequence : null;
        if (spanned == null) {
            return;
        }
        int spanStart = spanned.getSpanStart(this);
        if (i7 > spanned.getSpanEnd(this) || spanStart > i8) {
            return;
        }
        Layout layout = (Layout) this.d.get();
        int iC = i9 == layout.getLineCount() - 1 ? 0 : s86.c(layout.getSpacingAdd());
        int[] iArr = (int[]) i.acquire();
        if (iArr == null) {
            iArr = new int[2];
        }
        iArr[0] = i4 - i5;
        iArr[1] = (i6 - i5) - iC;
        this.f.add(iArr);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "paint");
        this.g = true;
        if (this.f.isEmpty()) {
            return;
        }
        int[] iArr = (int[]) this.f.remove();
        int i2 = iArr[0];
        int i3 = iArr[1];
        Pools.SimplePool simplePool = i;
        y45.i(iArr, "line");
        simplePool.release(iArr);
        int i4 = this.b;
        if (i4 > 0) {
            textPaint.setTextSize(i4);
        }
        textPaint.getFontMetricsInt(this.e);
        int i5 = b.a[this.c.ordinal()];
        if (i5 == 1) {
            textPaint.baselineShift += i2 - this.e.ascent;
            return;
        }
        if (i5 != 2) {
            if (i5 != 4) {
                return;
            }
            textPaint.baselineShift += i3 - this.e.descent;
        } else {
            Paint.FontMetricsInt fontMetricsInt = this.e;
            textPaint.baselineShift += ((i2 + i3) / 2) - ((fontMetricsInt.ascent + fontMetricsInt.descent) / 2);
        }
    }
}

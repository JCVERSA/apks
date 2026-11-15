package l0;

import android.graphics.Paint;
import android.text.Layout;
import k0.f1;

public abstract class d {

    public class a {

        public static final int[] f65505a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            try {
                iArr[Layout.Alignment.ALIGN_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f65505a = iArr;
        }
    }

    public static final float a(Layout layout, int i10, Paint paint) {
        float fAbs;
        float width;
        float lineLeft = layout.getLineLeft(i10);
        if (!f1.m(layout, i10) || layout.getParagraphDirection(i10) != 1 || lineLeft >= 0.0f) {
            return 0.0f;
        }
        float primaryHorizontal = (layout.getPrimaryHorizontal(layout.getLineStart(i10) + layout.getEllipsisStart(i10)) - lineLeft) + paint.measureText("…");
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i10);
        if ((paragraphAlignment == null ? -1 : a.f65505a[paragraphAlignment.ordinal()]) == 1) {
            fAbs = Math.abs(lineLeft);
            width = (layout.getWidth() - primaryHorizontal) / 2.0f;
        } else {
            fAbs = Math.abs(lineLeft);
            width = layout.getWidth() - primaryHorizontal;
        }
        return fAbs + width;
    }

    public static float b(Layout layout, int i10, Paint paint, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            paint = layout.getPaint();
        }
        return a(layout, i10, paint);
    }

    public static final float c(Layout layout, int i10, Paint paint) {
        float width;
        float width2;
        if (!f1.m(layout, i10)) {
            return 0.0f;
        }
        if (layout.getParagraphDirection(i10) != -1 || layout.getWidth() >= layout.getLineRight(i10)) {
            return 0.0f;
        }
        float lineRight = (layout.getLineRight(i10) - layout.getPrimaryHorizontal(layout.getLineStart(i10) + layout.getEllipsisStart(i10))) + paint.measureText("…");
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i10);
        if ((paragraphAlignment != null ? a.f65505a[paragraphAlignment.ordinal()] : -1) == 1) {
            width = layout.getWidth() - layout.getLineRight(i10);
            width2 = (layout.getWidth() - lineRight) / 2.0f;
        } else {
            width = layout.getWidth() - layout.getLineRight(i10);
            width2 = layout.getWidth() - lineRight;
        }
        return width - width2;
    }

    public static float d(Layout layout, int i10, Paint paint, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            paint = layout.getPaint();
        }
        return c(layout, i10, paint);
    }
}

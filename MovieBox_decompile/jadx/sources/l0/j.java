package l0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j extends ReplacementSpan {

    public static final a f65521k = new a(null);

    public static final int f65522l = 8;

    private final float f65523a;

    private final int f65524b;

    private final float f65525c;

    private final int f65526d;

    private final float f65527e;

    private final int f65528f;

    private Paint.FontMetricsInt f65529g;

    private int f65530h;

    private int f65531i;

    private boolean f65532j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final Paint.FontMetricsInt a() {
        Paint.FontMetricsInt fontMetricsInt = this.f65529g;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        Intrinsics.y("fontMetrics");
        return null;
    }

    public final int b() {
        if (this.f65532j) {
            return this.f65531i;
        }
        throw new IllegalStateException("PlaceholderSpan is not laid out yet.");
    }

    public final int c() {
        return this.f65528f;
    }

    public final int d() {
        if (this.f65532j) {
            return this.f65530h;
        }
        throw new IllegalStateException("PlaceholderSpan is not laid out yet.");
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        float f10;
        int iA;
        this.f65532j = true;
        float textSize = paint.getTextSize();
        this.f65529g = paint.getFontMetricsInt();
        if (a().descent <= a().ascent) {
            throw new IllegalArgumentException("Invalid fontMetrics: line height can not be negative.");
        }
        int i12 = this.f65524b;
        if (i12 == 0) {
            f10 = this.f65523a * this.f65527e;
        } else {
            if (i12 != 1) {
                throw new IllegalArgumentException("Unsupported unit.");
            }
            f10 = this.f65523a * textSize;
        }
        this.f65530h = k.a(f10);
        int i13 = this.f65526d;
        if (i13 == 0) {
            iA = k.a(this.f65525c * this.f65527e);
        } else {
            if (i13 != 1) {
                throw new IllegalArgumentException("Unsupported unit.");
            }
            iA = k.a(this.f65525c * textSize);
        }
        this.f65531i = iA;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = a().ascent;
            fontMetricsInt.descent = a().descent;
            fontMetricsInt.leading = a().leading;
            switch (this.f65528f) {
                case 0:
                    if (fontMetricsInt.ascent > (-b())) {
                        fontMetricsInt.ascent = -b();
                    }
                    break;
                case 1:
                case 4:
                    if (fontMetricsInt.ascent + b() > fontMetricsInt.descent) {
                        fontMetricsInt.descent = fontMetricsInt.ascent + b();
                    }
                    break;
                case 2:
                case 5:
                    if (fontMetricsInt.ascent > fontMetricsInt.descent - b()) {
                        fontMetricsInt.ascent = fontMetricsInt.descent - b();
                    }
                    break;
                case 3:
                case 6:
                    if (fontMetricsInt.descent - fontMetricsInt.ascent < b()) {
                        int iB = fontMetricsInt.ascent - ((b() - (fontMetricsInt.descent - fontMetricsInt.ascent)) / 2);
                        fontMetricsInt.ascent = iB;
                        fontMetricsInt.descent = iB + b();
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Unknown verticalAlign.");
            }
            fontMetricsInt.top = Math.min(a().top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(a().bottom, fontMetricsInt.descent);
        }
        return d();
    }

    @Override
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
    }
}

package com.yandex.div.internal.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import defpackage.wn8;
import defpackage.y45;
import kotlin.Metadata;

public final class ScalingDrawable extends Drawable {
    public Bitmap d;
    public Picture e;
    public boolean h;
    public float k;
    public float l;
    public ScaleType a = ScaleType.NO_SCALE;
    public AlignmentHorizontal b = AlignmentHorizontal.LEFT;
    public AlignmentVertical c = AlignmentVertical.TOP;
    public final Paint f = new Paint(3);
    public Matrix g = new Matrix();
    public float i = 1.0f;
    public float j = 1.0f;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;", "", "(Ljava/lang/String;I)V", "LEFT", "CENTER", "RIGHT", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum AlignmentHorizontal {
        LEFT,
        CENTER,
        RIGHT
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;", "", "(Ljava/lang/String;I)V", "TOP", "CENTER", "BOTTOM", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum AlignmentVertical {
        TOP,
        CENTER,
        BOTTOM
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;", "", "(Ljava/lang/String;I)V", "NO_SCALE", "FIT", "FILL", "STRETCH", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum ScaleType {
        NO_SCALE,
        FIT,
        FILL,
        STRETCH
    }

    public class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[ScaleType.values().length];
            try {
                iArr[ScaleType.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleType.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScaleType.NO_SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
            int[] iArr2 = new int[AlignmentHorizontal.values().length];
            try {
                iArr2[AlignmentHorizontal.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[AlignmentHorizontal.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            b = iArr2;
            int[] iArr3 = new int[AlignmentVertical.values().length];
            try {
                iArr3[AlignmentVertical.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[AlignmentVertical.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            c = iArr3;
        }
    }

    public final void a() {
        this.h = true;
        invalidateSelf();
    }

    public final void b(AlignmentHorizontal alignmentHorizontal) {
        y45.j(alignmentHorizontal, "<set-?>");
        this.b = alignmentHorizontal;
    }

    public final void c(AlignmentVertical alignmentVertical) {
        y45.j(alignmentVertical, "<set-?>");
        this.c = alignmentVertical;
    }

    public final void d(Bitmap bitmap) {
        y45.j(bitmap, "bitmap");
        this.d = bitmap;
        this.e = null;
        a();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c2  */
    @Override
    public void draw(Canvas canvas) {
        int width;
        int height;
        float f;
        float f2;
        float f3;
        int i;
        float f4;
        float f5;
        y45.j(canvas, "canvas");
        canvas.save();
        Bitmap bitmap = this.d;
        if (bitmap != null) {
            width = bitmap.getWidth();
        } else {
            Picture picture = this.e;
            width = picture != null ? picture.getWidth() : 0;
        }
        Bitmap bitmap2 = this.d;
        if (bitmap2 != null) {
            height = bitmap2.getHeight();
        } else {
            Picture picture2 = this.e;
            height = picture2 != null ? picture2.getHeight() : 0;
        }
        if (height <= 0 || width <= 0) {
            Bitmap bitmap3 = this.d;
            if (bitmap3 != null) {
                canvas.drawBitmap(bitmap3, this.g, this.f);
            }
            Picture picture3 = this.e;
            if (picture3 != null) {
                canvas.drawPicture(picture3);
            }
            canvas.restore();
            return;
        }
        if (this.h) {
            float fWidth = getBounds().width();
            float fHeight = getBounds().height();
            float f6 = width;
            this.i = fWidth / f6;
            float f7 = height;
            this.j = fHeight / f7;
            int i2 = a.a[this.a.ordinal()];
            if (i2 == 1) {
                float fC = wn8.c(this.i, this.j);
                this.i = fC;
                this.j = fC;
            } else if (i2 == 2) {
                float f8 = wn8.f(this.i, this.j);
                this.i = f8;
                this.j = f8;
            } else if (i2 == 3) {
                this.i = 1.0f;
                this.j = 1.0f;
            }
            float f9 = f6 * this.i;
            float f10 = f7 * this.j;
            int i3 = a.b[this.b.ordinal()];
            float f11 = 0.0f;
            if (i3 != 1) {
                if (i3 != 2) {
                    f3 = 0.0f;
                } else {
                    f = fWidth - f9;
                    f2 = this.i;
                }
                this.k = f3;
                i = a.c[this.c.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        f4 = fHeight - f10;
                        f5 = this.j;
                    }
                    this.l = f11;
                    this.h = false;
                } else {
                    f4 = (fHeight - f10) / 2;
                    f5 = this.j;
                }
                f11 = f4 / f5;
                this.l = f11;
                this.h = false;
            } else {
                f = (fWidth - f9) / 2;
                f2 = this.i;
            }
            f3 = f / f2;
            this.k = f3;
            i = a.c[this.c.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    f4 = fHeight - f10;
                    f5 = this.j;
                }
                this.l = f11;
                this.h = false;
            } else {
                f4 = (fHeight - f10) / 2;
                f5 = this.j;
            }
            f11 = f4 / f5;
            this.l = f11;
            this.h = false;
        }
        canvas.scale(this.i, this.j);
        canvas.translate(this.k, this.l);
        Bitmap bitmap4 = this.d;
        if (bitmap4 != null) {
            canvas.drawBitmap(bitmap4, this.g, this.f);
        }
        Picture picture4 = this.e;
        if (picture4 != null) {
            canvas.drawPicture(picture4);
        }
        canvas.restore();
    }

    public final void e(ScaleType scaleType) {
        y45.j(scaleType, "<set-?>");
        this.a = scaleType;
    }

    public final void f(Picture picture) {
        y45.j(picture, "picture");
        this.e = picture;
        this.d = null;
        a();
    }

    @Override
    public int getOpacity() {
        return this.f.getAlpha();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        y45.j(rect, "bounds");
        super.onBoundsChange(rect);
        a();
    }

    @Override
    public void setAlpha(int i) {
        this.f.setAlpha(i);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}

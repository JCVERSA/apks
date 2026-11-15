package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;

public class c extends Drawable {

    private static final float f934m = (float) Math.toRadians(45.0d);

    private final Paint f935a;

    private float f936b;

    private float f937c;

    private float f938d;

    private float f939e;

    private boolean f940f;

    private final Path f941g;

    private final int f942h;

    private boolean f943i;

    private float f944j;

    private float f945k;

    private int f946l;

    public c(Context context) {
        Paint paint = new Paint();
        this.f935a = paint;
        this.f941g = new Path();
        this.f943i = false;
        this.f946l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.DrawerArrowToggle, R$attr.drawerArrowStyle, R$style.Base_Widget_AppCompat_DrawerArrowToggle);
        c(typedArrayObtainStyledAttributes.getColor(R$styleable.DrawerArrowToggle_color, 0));
        b(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_thickness, 0.0f));
        e(typedArrayObtainStyledAttributes.getBoolean(R$styleable.DrawerArrowToggle_spinBars, true));
        d(Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f942h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DrawerArrowToggle_drawableSize, 0);
        this.f937c = Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f936b = Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f938d = typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static float a(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    public void b(float f10) {
        if (this.f935a.getStrokeWidth() != f10) {
            this.f935a.setStrokeWidth(f10);
            this.f945k = (float) (((double) (f10 / 2.0f)) * Math.cos(f934m));
            invalidateSelf();
        }
    }

    public void c(int i10) {
        if (i10 != this.f935a.getColor()) {
            this.f935a.setColor(i10);
            invalidateSelf();
        }
    }

    public void d(float f10) {
        if (f10 != this.f939e) {
            this.f939e = f10;
            invalidateSelf();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i10 = this.f946l;
        boolean z10 = false;
        if (i10 != 0 && (i10 == 1 || (i10 == 3 ? a1.a.f(this) == 0 : a1.a.f(this) == 1))) {
            z10 = true;
        }
        float f10 = this.f936b;
        float fA = a(this.f937c, (float) Math.sqrt(f10 * f10 * 2.0f), this.f944j);
        float fA2 = a(this.f937c, this.f938d, this.f944j);
        float fRound = Math.round(a(0.0f, this.f945k, this.f944j));
        float fA3 = a(0.0f, f934m, this.f944j);
        float fA4 = a(z10 ? 0.0f : -180.0f, z10 ? 180.0f : 0.0f, this.f944j);
        double d10 = fA;
        double d11 = fA3;
        boolean z11 = z10;
        float fRound2 = Math.round(Math.cos(d11) * d10);
        float fRound3 = Math.round(d10 * Math.sin(d11));
        this.f941g.rewind();
        float fA5 = a(this.f939e + this.f935a.getStrokeWidth(), -this.f945k, this.f944j);
        float f11 = (-fA2) / 2.0f;
        this.f941g.moveTo(f11 + fRound, 0.0f);
        this.f941g.rLineTo(fA2 - (fRound * 2.0f), 0.0f);
        this.f941g.moveTo(f11, fA5);
        this.f941g.rLineTo(fRound2, fRound3);
        this.f941g.moveTo(f11, -fA5);
        this.f941g.rLineTo(fRound2, -fRound3);
        this.f941g.close();
        canvas.save();
        float strokeWidth = this.f935a.getStrokeWidth();
        float fHeight = bounds.height() - (3.0f * strokeWidth);
        float f12 = this.f939e;
        canvas.translate(bounds.centerX(), ((((int) (fHeight - (2.0f * f12))) / 4) * 2) + (strokeWidth * 1.5f) + f12);
        if (this.f940f) {
            canvas.rotate(fA4 * (this.f943i ^ z11 ? -1 : 1));
        } else if (z11) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.f941g, this.f935a);
        canvas.restore();
    }

    public void e(boolean z10) {
        if (this.f940f != z10) {
            this.f940f = z10;
            invalidateSelf();
        }
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f942h;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f942h;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void setAlpha(int i10) {
        if (i10 != this.f935a.getAlpha()) {
            this.f935a.setAlpha(i10);
            invalidateSelf();
        }
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f935a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setProgress(float f10) {
        if (this.f944j != f10) {
            this.f944j = f10;
            invalidateSelf();
        }
    }
}

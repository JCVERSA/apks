package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.transsion.hubsdk.api.graphics.TranCanvas;

public class ws7 extends Drawable {
    public Paint a;
    public Context b;
    public RectF c;
    public int d;
    public float e;
    public TranCanvas f;
    public boolean g;

    public ws7(Context context, RectF rectF, int i, float f, boolean z) {
        this.d = Color.parseColor("#FE945F");
        this.c = rectF;
        this.b = context;
        this.e = f;
        this.g = z;
        Paint paint = new Paint();
        this.a = paint;
        paint.setAntiAlias(true);
        this.a.setStyle(Paint.Style.FILL);
        this.a.setColor(i);
        a();
    }

    public final void a() {
        if (this.f == null) {
            this.f = new TranCanvas();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.g && olb.Z(this.b)) {
            if (this.a == null || this.c == null) {
                return;
            }
            Path path = new Path();
            float f = this.e;
            path.addRoundRect(this.c, new float[]{f, f, f, f, 0.0f, 0.0f, 0.0f, 0.0f}, Path.Direction.CW);
            canvas.drawPath(path, this.a);
            return;
        }
        if (this.a == null || this.c == null) {
            return;
        }
        if (this.f.smoothcornerCubicEdgeEnabled()) {
            TranCanvas tranCanvas = this.f;
            RectF rectF = this.c;
            tranCanvas.drawSmoothRoundRect(canvas, rectF.left, rectF.top, rectF.right, rectF.bottom, this.e, this.a);
        } else {
            RectF rectF2 = this.c;
            float f2 = this.e;
            canvas.drawRoundRect(rectF2, f2, f2, this.a);
        }
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void setAlpha(int i) {
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public void setFillColor(@ColorInt int i) {
        this.d = i;
        Paint paint = this.a;
        if (paint != null) {
            paint.setColor(i);
        }
        invalidateSelf();
    }

    public void setRadius(float f) {
        this.e = f;
        invalidateSelf();
    }

    public ws7(Context context, RectF rectF, int i, float f) {
        this.d = Color.parseColor("#FE945F");
        this.g = false;
        this.c = rectF;
        this.b = context;
        this.e = f;
        Paint paint = new Paint();
        this.a = paint;
        paint.setAntiAlias(true);
        this.a.setStyle(Paint.Style.FILL);
        this.a.setColor(i);
        a();
    }

    public ws7(Context context, RectF rectF, float f, Paint paint) {
        this.d = Color.parseColor("#FE945F");
        this.g = false;
        this.c = rectF;
        this.b = context;
        this.a = paint;
        this.e = f;
        a();
    }
}

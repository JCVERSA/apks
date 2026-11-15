package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSolidBackground;
import com.yandex.div2.DivStroke;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;

public final class e50 {
    public final DisplayMetrics a;
    public final DivTextRangeBorder b;
    public final DivTextRangeBackground c;
    public final Canvas d;
    public final oj3 e;
    public final Paint f;
    public final float[] g;

    public e50(DisplayMetrics displayMetrics, DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground, Canvas canvas, oj3 oj3Var) {
        Expression expression;
        y45.j(displayMetrics, "metrics");
        y45.j(canvas, "canvas");
        y45.j(oj3Var, "resolver");
        this.a = displayMetrics;
        this.b = divTextRangeBorder;
        this.c = divTextRangeBackground;
        this.d = canvas;
        this.e = oj3Var;
        Paint paint = new Paint();
        this.f = paint;
        if (divTextRangeBorder == null) {
            this.g = null;
            return;
        }
        this.g = at2.b(divTextRangeBorder, displayMetrics, oj3Var);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(tg2.a(divTextRangeBorder.b, oj3Var, displayMetrics));
        DivStroke divStroke = divTextRangeBorder.b;
        if (divStroke == null || (expression = divStroke.a) == null) {
            return;
        }
        paint.setColor(((Number) expression.b(oj3Var)).intValue());
    }

    public final void a(float f, float f2, float f3, float f4) {
        b(this.g, f, f2, f3, f4);
    }

    public final void b(float[] fArr, float f, float f2, float f3, float f4) {
        RectF rectF = new RectF();
        rectF.set(f, f2, f3, f4);
        DivTextRangeBackground divTextRangeBackground = this.c;
        Object objB = divTextRangeBackground != null ? divTextRangeBackground.b() : null;
        if (objB instanceof DivSolidBackground) {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(((Number) ((DivSolidBackground) objB).a.b(this.e)).intValue());
            this.d.drawPath(g(fArr, rectF), paint);
        }
        f(fArr, f, f2, f3, f4);
    }

    public final void c(float f, float f2, float f3, float f4) {
        float[] fArr = new float[8];
        float[] fArr2 = this.g;
        if (fArr2 != null) {
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = fArr2[2];
            fArr[3] = fArr2[3];
            fArr[4] = fArr2[4];
            fArr[5] = fArr2[5];
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
        }
        b(fArr, f, f2, f3, f4);
    }

    public final void d(float f, float f2, float f3, float f4) {
        b(new float[8], f, f2, f3, f4);
    }

    public final void e(float f, float f2, float f3, float f4) {
        float[] fArr = new float[8];
        float[] fArr2 = this.g;
        if (fArr2 != null) {
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = fArr2[6];
            fArr[7] = fArr2[7];
        }
        b(fArr, f, f2, f3, f4);
    }

    public final void f(float[] fArr, float f, float f2, float f3, float f4) {
        DivTextRangeBorder divTextRangeBorder = this.b;
        if ((divTextRangeBorder != null ? divTextRangeBorder.b : null) == null) {
            return;
        }
        RectF rectF = new RectF();
        DivStroke divStroke = this.b.b;
        y45.g(divStroke);
        float fA = tg2.a(divStroke, this.e, this.a) / 2.0f;
        rectF.set(Math.max(0.0f, f + fA), Math.max(0.0f, f2 + fA), Math.max(0.0f, f3 - fA), Math.max(0.0f, f4 - fA));
        float[] fArr2 = fArr != null ? (float[]) fArr.clone() : null;
        if (fArr2 != null) {
            int length = fArr2.length;
            for (int i = 0; i < length; i++) {
                fArr2[i] = Math.max(0.0f, fArr[i] - fA);
            }
        }
        this.d.drawPath(g(fArr2, rectF), this.f);
    }

    public final Path g(float[] fArr, RectF rectF) {
        Path path = new Path();
        path.reset();
        if (fArr == null) {
            path.addRect(rectF, Path.Direction.CW);
        } else {
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
        }
        path.close();
        return path;
    }
}

package bb;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.core.view.ViewCompat;

public class a {

    private static final int[] f15766i = new int[3];

    private static final float[] f15767j = {0.0f, 0.5f, 1.0f};

    private static final int[] f15768k = new int[4];

    private static final float[] f15769l = {0.0f, 0.0f, 0.5f, 1.0f};

    private final Paint f15770a;

    private final Paint f15771b;

    private final Paint f15772c;

    private int f15773d;

    private int f15774e;

    private int f15775f;

    private final Path f15776g;

    private final Paint f15777h;

    public a() {
        this(ViewCompat.MEASURED_STATE_MASK);
    }

    public void a(Canvas canvas, Matrix matrix, RectF rectF, int i10, float f10, float f11) {
        boolean z10 = f11 < 0.0f;
        Path path = this.f15776g;
        if (z10) {
            int[] iArr = f15768k;
            iArr[0] = 0;
            iArr[1] = this.f15775f;
            iArr[2] = this.f15774e;
            iArr[3] = this.f15773d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f10, f11);
            path.close();
            float f12 = -i10;
            rectF.inset(f12, f12);
            int[] iArr2 = f15768k;
            iArr2[0] = 0;
            iArr2[1] = this.f15773d;
            iArr2[2] = this.f15774e;
            iArr2[3] = this.f15775f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f13 = 1.0f - (i10 / fWidth);
        float[] fArr = f15769l;
        fArr[1] = f13;
        fArr[2] = ((1.0f - f13) / 2.0f) + f13;
        this.f15771b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f15768k, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z10) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f15777h);
        }
        canvas.drawArc(rectF, f10, f11, true, this.f15771b);
        canvas.restore();
    }

    public void b(Canvas canvas, Matrix matrix, RectF rectF, int i10) {
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = f15766i;
        iArr[0] = this.f15775f;
        iArr[1] = this.f15774e;
        iArr[2] = this.f15773d;
        Paint paint = this.f15772c;
        float f10 = rectF.left;
        paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, f15767j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f15772c);
        canvas.restore();
    }

    public Paint c() {
        return this.f15770a;
    }

    public void d(int i10) {
        this.f15773d = z0.b.p(i10, 68);
        this.f15774e = z0.b.p(i10, 20);
        this.f15775f = z0.b.p(i10, 0);
        this.f15770a.setColor(this.f15773d);
    }

    public a(int i10) {
        this.f15776g = new Path();
        Paint paint = new Paint();
        this.f15777h = paint;
        this.f15770a = new Paint();
        d(i10);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f15771b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f15772c = new Paint(paint2);
    }
}

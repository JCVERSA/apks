package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.core.graphics.PathParser;

public class hp4 extends Drawable {
    public Paint a;
    public Paint b;
    public Path c;

    public hp4() {
        Paint paint = new Paint();
        this.a = paint;
        paint.setColor(-1);
        this.a.setStyle(Paint.Style.FILL);
        this.a.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setColor(Color.parseColor("#33000000"));
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setStrokeWidth(1.0f);
        this.b.setAntiAlias(true);
        this.c = PathParser.createPathFromPathData("M66.108,28.298C66.108,28.372 66.115,28.46 66.115,28.561C66.115,30.325 65.745,32.176 64.987,34.223C64.712,34.997 64.369,35.785 63.94,36.64L63.926,36.66L63.906,36.714L63.799,36.902C63.772,36.943 63.745,36.996 63.711,37.07L63.638,37.212C63.483,37.522 63.282,37.912 63.027,38.323C60.355,43.008 55.857,48.293 49.654,54.029C46.459,56.985 42.962,59.92 39.263,62.741C39.128,62.849 39.034,62.916 38.994,62.95L38.974,62.97C38.122,63.636 37.074,64 36.027,64C34.966,64 33.953,63.643 33.094,62.977L33.087,62.97C33.053,62.943 32.973,62.882 32.865,62.802C27.656,58.85 23.642,55.248 21.198,52.918C14.21,46.294 9.598,40.309 7.49,35.145C7.443,35.044 7.416,34.956 7.39,34.896L7.383,34.876C6.49,32.634 6.04,30.506 6.04,28.554C6.04,28.5 6.04,28.433 6.047,28.359C6.02,28.096 6,27.813 6,27.484C6,16.739 14.237,8 24.36,8C26.844,8 29.26,8.532 31.556,9.589C33.194,10.343 34.711,11.326 36.067,12.538C37.423,11.333 38.934,10.343 40.572,9.589C42.874,8.532 45.298,8 47.788,8C57.911,8 66.148,16.739 66.148,27.484C66.148,27.813 66.128,28.096 66.108,28.298Z");
        RectF rectF = new RectF();
        this.c.computeBounds(rectF, true);
        this.c.offset(-rectF.left, -rectF.top);
    }

    @Override
    public void draw(Canvas canvas) {
        RectF rectF = new RectF();
        this.c.computeBounds(rectF, true);
        float width = (canvas.getWidth() - rectF.width()) / 2.0f;
        float height = (canvas.getHeight() - rectF.height()) / 2.0f;
        canvas.save();
        canvas.translate(width, height);
        canvas.drawPath(this.c, this.b);
        canvas.drawPath(this.c, this.a);
        canvas.restore();
        Log.d("HeartShadowDrawable", "Canvas size: " + canvas.getWidth() + "x" + canvas.getHeight());
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void setAlpha(int i) {
        this.a.setAlpha(i);
        this.b.setAlpha(i);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
        this.b.setColorFilter(colorFilter);
    }
}

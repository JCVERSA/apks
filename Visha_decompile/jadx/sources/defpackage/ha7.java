package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSRadioButton;

public class ha7 extends Drawable implements cv8 {
    public static final o97 u = new o97();
    public final Context c;
    public Bitmap d;
    public Bitmap e;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r = 1.0f;
    public final RectF s = new RectF();
    public final Paint b = new Paint();
    public final Path f = new Path();
    public final Path g = new Path();
    public final ValueAnimator t = ValueAnimator.ofFloat(new float[0]);

    public ha7(Context context, boolean z) {
        this.c = context;
        this.j = olb.m(context, R.attr.os_fill_base, R.color.os_fill_base_hios);
        this.k = olb.z(context);
        c();
        d(z);
    }

    public static ha7 a(Context context) {
        return b(context, false);
    }

    public static ha7 b(Context context, boolean z) {
        return new ha7(context, z);
    }

    private void c() {
        Drawable drawable = ContextCompat.getDrawable(this.c, R.drawable.os_radio_drawable_start_unchecked);
        if (drawable == null) {
            return;
        }
        drawable.setTint(this.j);
        this.d = fy4.a(drawable);
        bq5.p(OSRadioButton.TAG, "setBitmap, width--height: " + this.d.getWidth() + "--" + this.d.getHeight());
        int width = this.d.getWidth();
        int height = this.d.getHeight();
        float f = ((float) width) / 2.0f;
        float f2 = ((float) height) / 2.0f;
        this.m = Math.min(f, f2) - TypedValue.applyDimension(1, 3.0f, this.c.getResources().getDisplayMetrics());
        this.e = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.e);
        Paint paint = new Paint(this.b);
        paint.setColor(this.k);
        canvas.drawCircle(f, f2, this.m, paint);
        float f3 = this.m;
        this.p = 0.7f * f3;
        this.q = 0.45f * f3;
        this.o = f3 * 0.55f;
    }

    private void d(boolean z) {
        this.h = z;
        this.i = z ? this.k : this.j;
        this.l = z ? 0.1f : this.m;
        this.n = z ? this.o : 0.0f;
        String str = OSRadioButton.TAG;
        bq5.p(str, "setChecked, mStrokeColor-mStartColor-mEndColor: (" + this.i + ")-(" + this.j + ")-(" + this.k + "), checked: " + z + ", this: " + this);
        StringBuilder sb = new StringBuilder();
        sb.append("setChecked, mOuterRadius-mStartRadius-mEndRadius: (");
        sb.append(this.l);
        sb.append(")-(");
        sb.append(0.1f);
        sb.append(")-(");
        sb.append(this.m);
        sb.append(")");
        bq5.p(str, sb.toString());
        bq5.p(str, "setChecked, mInnerRadius-mStartRadius-mEndRadius: (" + this.n + ")-(" + (this.m / 2.0f) + ")-(0)");
        this.f.reset();
        Path path = this.f;
        float f = this.l;
        Path.Direction direction = Path.Direction.CCW;
        path.addCircle(0.0f, 0.0f, f, direction);
        this.g.reset();
        this.g.addCircle(0.0f, 0.0f, this.n, direction);
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (this.d == null || this.e == null || bounds.isEmpty()) {
            return;
        }
        canvas.translate(bounds.centerX(), bounds.centerY());
        this.s.set((-bounds.width()) / 2.0f, (-bounds.height()) / 2.0f, bounds.width() / 2.0f, bounds.height() / 2.0f);
        this.b.setColor(this.i);
        canvas.drawBitmap(this.d.extractAlpha(), (Rect) null, this.s, this.b);
        int iSaveLayer = canvas.saveLayer(this.s, null, 31);
        canvas.clipPath(this.f, Region.Op.DIFFERENCE);
        canvas.drawBitmap(this.e, (Rect) null, this.s, (Paint) null);
        canvas.clipPath(this.g);
        canvas.drawColor(-1);
        canvas.restoreToCount(iSaveLayer);
    }

    @Override
    public int getIntrinsicHeight() {
        Bitmap bitmap = this.d;
        return bitmap == null ? this.c.getResources().getDimensionPixelSize(R.dimen.os_ctm_radio_btn_wh) : bitmap.getHeight();
    }

    @Override
    public int getIntrinsicWidth() {
        Bitmap bitmap = this.d;
        return bitmap == null ? this.c.getResources().getDimensionPixelSize(R.dimen.os_ctm_radio_btn_wh) : bitmap.getWidth();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public boolean isRunning() {
        return this.t.isRunning();
    }

    @Override
    public void setAlpha(int i) {
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    @Override
    public void stop() {
        if (isRunning()) {
            this.t.cancel();
        }
    }
}

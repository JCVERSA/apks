package ms;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import com.blankj.utilcode.util.a0;
import java.io.InputStream;
import java.lang.ref.WeakReference;

public class a extends ReplacementSpan {

    private Uri f66688a;

    private int f66689b;

    private Context f66690c;

    private WeakReference f66691d;

    private int f66692e;

    private int f66693f;

    private int f66694g;

    private int f66695h;

    private int f66696i;

    private int f66697j;

    private final float f66698k;

    private boolean f66699l;

    public a(Context context, int i10, int i11, int i12, float f10, int i13, boolean z10) {
        this.f66690c = context;
        this.f66689b = i10;
        this.f66692e = i12;
        this.f66693f = i11;
        this.f66694g = a(context, i13);
        this.f66696i = a(context, 1.0f);
        this.f66697j = a(context, 1.0f);
        this.f66695h = a(context, 4.0f);
        this.f66698k = f10;
        this.f66699l = z10;
    }

    private static int a(Context context, float f10) {
        return a0.a(f10);
    }

    private Drawable b() {
        WeakReference weakReference = this.f66691d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f66691d = new WeakReference(drawableC);
        return drawableC;
    }

    private int d() {
        Drawable drawableB = b();
        if (drawableB == null) {
            return 0;
        }
        return drawableB.getIntrinsicWidth();
    }

    public Drawable c() {
        Drawable drawable = null;
        try {
            if (this.f66688a != null) {
                InputStream inputStreamOpenInputStream = this.f66690c.getContentResolver().openInputStream(this.f66688a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f66690c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f66689b != -111) {
                drawable = this.f66690c.getResources().getDrawable(this.f66689b);
                drawable.setColorFilter(this.f66693f, PorterDuff.Mode.SRC_IN);
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            }
        } catch (Exception unused2) {
        }
        return drawable;
    }

    @Override
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        int color = paint.getColor();
        float textSize = paint.getTextSize();
        paint.setColor(this.f66692e);
        boolean z10 = this.f66699l;
        int i15 = z10 ? 0 : 6;
        int i16 = z10 ? 6 : 0;
        float f11 = i15;
        float size = f10 + getSize(paint, charSequence, i10, i11, paint.getFontMetricsInt());
        RectF rectF = new RectF(f10 + f11, i12 + this.f66696i, size - i16, i14 - this.f66697j);
        int i17 = this.f66695h;
        canvas.drawRoundRect(rectF, i17, i17, paint);
        paint.setColor(this.f66693f);
        paint.setTextSize(this.f66698k);
        canvas.drawText(charSequence, i10, i11, f10 + this.f66694g, i13 - ((this.f66696i + this.f66697j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB == null || i11 - i10 <= 2) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i18 = (i13 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
        canvas.save();
        canvas.translate(((size - this.f66694g) - d()) + f11, i18);
        drawableB.draw(canvas);
        canvas.restore();
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f66698k);
        int iMeasureText = ((int) paint.measureText(charSequence, i10, i11)) + (this.f66694g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f66698k * textPaint.density);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f66698k * textPaint.density);
    }
}

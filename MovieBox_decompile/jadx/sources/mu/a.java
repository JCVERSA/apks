package mu;

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

    private Uri f66705a;

    private int f66706b;

    private Context f66707c;

    private WeakReference f66708d;

    private int f66709e;

    private int f66710f;

    private int f66711g;

    private int f66712h;

    private int f66713i;

    private int f66714j;

    private final float f66715k;

    private boolean f66716l;

    public a(Context context, int i10, int i11, int i12, float f10, int i13, boolean z10) {
        this.f66707c = context;
        this.f66706b = i10;
        this.f66709e = i12;
        this.f66710f = i11;
        this.f66711g = a(context, i13);
        this.f66713i = a(context, 1.0f);
        this.f66714j = a(context, 1.0f);
        this.f66712h = a(context, 4.0f);
        this.f66715k = f10;
        this.f66716l = z10;
    }

    private static int a(Context context, float f10) {
        return a0.a(f10);
    }

    private Drawable b() {
        WeakReference weakReference = this.f66708d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f66708d = new WeakReference(drawableC);
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
            if (this.f66705a != null) {
                InputStream inputStreamOpenInputStream = this.f66707c.getContentResolver().openInputStream(this.f66705a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f66707c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f66706b != -111) {
                drawable = this.f66707c.getResources().getDrawable(this.f66706b);
                drawable.setColorFilter(this.f66710f, PorterDuff.Mode.SRC_IN);
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
        paint.setColor(this.f66709e);
        boolean z10 = this.f66716l;
        int i15 = z10 ? 0 : 6;
        int i16 = z10 ? 6 : 0;
        float f11 = i15;
        float size = f10 + getSize(paint, charSequence, i10, i11, paint.getFontMetricsInt());
        RectF rectF = new RectF(f10 + f11, i12 + this.f66713i, size - i16, i14 - this.f66714j);
        int i17 = this.f66712h;
        canvas.drawRoundRect(rectF, i17, i17, paint);
        paint.setColor(this.f66710f);
        paint.setTextSize(this.f66715k);
        canvas.drawText(charSequence, i10, i11, f10 + this.f66711g, i13 - ((this.f66713i + this.f66714j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB == null || i11 - i10 <= 2) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i18 = (i13 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
        canvas.save();
        canvas.translate(((size - this.f66711g) - d()) + f11, i18);
        drawableB.draw(canvas);
        canvas.restore();
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f66715k);
        int iMeasureText = ((int) paint.measureText(charSequence, i10, i11)) + (this.f66711g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f66715k * textPaint.density);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f66715k * textPaint.density);
    }
}

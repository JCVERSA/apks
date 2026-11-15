package bh;

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
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import zg.h;

public class a extends ReplacementSpan {

    private Uri f15799a;

    private int f15800b;

    private Context f15801c;

    private WeakReference f15802d;

    private int f15803e;

    private int f15804f;

    private int f15805g;

    private int f15806h;

    private int f15807i;

    private int f15808j;

    private final float f15809k;

    private boolean f15810l;

    public a(Context context, int i10, int i11, int i12, float f10, int i13, boolean z10) {
        this.f15801c = context;
        this.f15800b = i10;
        this.f15803e = i12;
        this.f15804f = i11;
        this.f15805g = a(context, i13);
        this.f15807i = a(context, 1.0f);
        this.f15808j = a(context, 1.0f);
        this.f15806h = a(context, 4.0f);
        this.f15809k = f10;
        this.f15810l = z10;
    }

    private static int a(Context context, float f10) {
        return h.f76787a.a(context, f10);
    }

    private Drawable b() {
        WeakReference weakReference = this.f15802d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f15802d = new WeakReference(drawableC);
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
            if (this.f15799a != null) {
                InputStream inputStreamOpenInputStream = this.f15801c.getContentResolver().openInputStream(this.f15799a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f15801c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f15800b != -111) {
                drawable = this.f15801c.getResources().getDrawable(this.f15800b);
                drawable.setColorFilter(this.f15804f, PorterDuff.Mode.SRC_IN);
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
        paint.setColor(this.f15803e);
        boolean z10 = this.f15810l;
        int i15 = z10 ? 0 : 6;
        int i16 = z10 ? 6 : 0;
        float f11 = i15;
        float size = f10 + getSize(paint, charSequence, i10, i11, paint.getFontMetricsInt());
        RectF rectF = new RectF(f10 + f11, i12 + this.f15807i, size - i16, i14 - this.f15808j);
        int i17 = this.f15806h;
        canvas.drawRoundRect(rectF, i17, i17, paint);
        paint.setColor(this.f15804f);
        paint.setTextSize(this.f15809k);
        canvas.drawText(charSequence, i10, i11, f10 + this.f15805g, i13 - ((this.f15807i + this.f15808j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB != null) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i18 = (i13 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
            canvas.save();
            canvas.translate(((size - this.f15805g) - d()) + f11, i18);
            drawableB.draw(canvas);
            canvas.restore();
        }
    }

    public int e(Paint paint, CharSequence charSequence, CharSequence charSequence2) {
        int iD = (this.f15805g * 2) + d();
        if (!TextUtils.isEmpty(charSequence)) {
            iD += (int) paint.measureText(charSequence, 0, charSequence.length());
        }
        if (TextUtils.isEmpty(charSequence2)) {
            return iD;
        }
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f15809k);
        int iMeasureText = iD + ((int) paint.measureText(charSequence2, 0, charSequence2.length()));
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f15809k);
        int iMeasureText = ((int) paint.measureText(charSequence, i10, i11)) + (this.f15805g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f15809k * textPaint.density);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f15809k * textPaint.density);
    }
}

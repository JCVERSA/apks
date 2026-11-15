package ir;

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
import com.blankj.utilcode.util.a0;
import java.io.InputStream;
import java.lang.ref.WeakReference;

public class a extends ReplacementSpan {

    private Uri f62588a;

    private int f62589b;

    private Context f62590c;

    private WeakReference f62591d;

    private int f62592e;

    private int f62593f;

    private int f62594g;

    private int f62595h;

    private int f62596i;

    private int f62597j;

    private final float f62598k;

    private boolean f62599l;

    private int f62600m;

    public a(Context context, int i10, int i11, int i12, float f10, int i13, boolean z10, int i14) {
        this.f62590c = context;
        this.f62589b = i10;
        this.f62592e = i12;
        this.f62593f = i11;
        this.f62594g = a(context, i13);
        this.f62596i = a(context, 1.0f);
        this.f62597j = a(context, 1.0f);
        this.f62595h = a(context, 4.0f);
        this.f62598k = f10;
        this.f62599l = z10;
        this.f62600m = i14 > 0 ? a(context, i14) : 0;
    }

    private static int a(Context context, float f10) {
        return a0.a(f10);
    }

    private Drawable b() {
        WeakReference weakReference = this.f62591d;
        Drawable drawable = weakReference != null ? (Drawable) weakReference.get() : null;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawableC = c();
        this.f62591d = new WeakReference(drawableC);
        return drawableC;
    }

    private int d() {
        int i10 = this.f62600m;
        if (i10 > 0) {
            return i10;
        }
        Drawable drawableB = b();
        if (drawableB == null) {
            return 0;
        }
        return drawableB.getIntrinsicWidth();
    }

    public Drawable c() {
        Drawable drawable = null;
        try {
            if (this.f62588a != null) {
                InputStream inputStreamOpenInputStream = this.f62590c.getContentResolver().openInputStream(this.f62588a);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f62590c.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                try {
                    int intrinsicWidth = this.f62600m;
                    if (intrinsicWidth <= 0) {
                        intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
                    }
                    int intrinsicHeight = this.f62600m;
                    if (intrinsicHeight <= 0) {
                        intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
                    }
                    bitmapDrawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                    inputStreamOpenInputStream.close();
                    return bitmapDrawable;
                } catch (Exception unused) {
                    drawable = bitmapDrawable;
                }
            } else if (this.f62589b != -111) {
                drawable = this.f62590c.getResources().getDrawable(this.f62589b);
                drawable.setColorFilter(this.f62593f, PorterDuff.Mode.SRC_IN);
                int intrinsicWidth2 = this.f62600m;
                if (intrinsicWidth2 <= 0) {
                    intrinsicWidth2 = drawable.getIntrinsicWidth();
                }
                int intrinsicHeight2 = this.f62600m;
                if (intrinsicHeight2 <= 0) {
                    intrinsicHeight2 = drawable.getIntrinsicHeight();
                }
                drawable.setBounds(0, 0, intrinsicWidth2, intrinsicHeight2);
            }
        } catch (Exception unused2) {
        }
        return drawable;
    }

    @Override
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        int color = paint.getColor();
        float textSize = paint.getTextSize();
        paint.setColor(this.f62592e);
        boolean z10 = this.f62599l;
        int i15 = z10 ? 0 : 6;
        int i16 = z10 ? 6 : 0;
        float f11 = i15;
        float size = f10 + getSize(paint, charSequence, i10, i11, paint.getFontMetricsInt());
        RectF rectF = new RectF(f10 + f11, i12 + this.f62596i, size - i16, i14 - this.f62597j);
        int i17 = this.f62595h;
        canvas.drawRoundRect(rectF, i17, i17, paint);
        paint.setColor(this.f62593f);
        paint.setTextSize(this.f62598k);
        canvas.drawText(charSequence, i10, i11, f10 + this.f62594g, i13 - ((this.f62596i + this.f62597j) / 2), paint);
        paint.setColor(color);
        paint.setTextSize(textSize);
        Drawable drawableB = b();
        if (drawableB != null) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i18 = (i13 + ((fontMetricsInt.descent + fontMetricsInt.ascent) / 2)) - (drawableB.getBounds().bottom / 2);
            canvas.save();
            canvas.translate(((size - this.f62594g) - d()) + f11, i18);
            drawableB.draw(canvas);
            canvas.restore();
        }
    }

    public int e(Paint paint, CharSequence charSequence, CharSequence charSequence2) {
        int iD = (this.f62594g * 2) + d();
        if (!TextUtils.isEmpty(charSequence)) {
            iD += (int) paint.measureText(charSequence, 0, charSequence.length());
        }
        if (TextUtils.isEmpty(charSequence2)) {
            return iD;
        }
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f62598k);
        int iMeasureText = iD + ((int) paint.measureText(charSequence2, 0, charSequence2.length()));
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        float textSize = paint.getTextSize();
        paint.setTextSize(this.f62598k);
        int iMeasureText = ((int) paint.measureText(charSequence, i10, i11)) + (this.f62594g * 2) + d();
        paint.setTextSize(textSize);
        return iMeasureText;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSize(this.f62598k * textPaint.density);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSize(this.f62598k * textPaint.density);
    }
}

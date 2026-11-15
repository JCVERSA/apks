package com.bytedance.adsdk.ugeno.uA.EjP;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.load.resource.drawable.b;
import java.util.HashSet;

public class sP extends Drawable {
    private final RectF Dq;
    private final Bitmap EjP;
    private Shader.TileMode Fmk;
    private final Paint HiB;
    private final int Jcg;
    private ColorStateList RiZ;
    private final Matrix TEQ;
    private final RectF TKC;
    private float TzV;
    private final RectF Ym;
    private float Zq;

    private Shader.TileMode f20225aa;
    private boolean dNu;
    private ImageView.ScaleType sU;
    private boolean sef;
    private final Paint uA;
    private final boolean[] uvD;
    private final int vS;
    private final RectF Sj = new RectF();
    private final RectF sP = new RectF();

    static class AnonymousClass1 {
        static final int[] Sj;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            Sj = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public sP(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.TKC = rectF;
        this.Dq = new RectF();
        this.TEQ = new Matrix();
        this.Ym = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f20225aa = tileMode;
        this.Fmk = tileMode;
        this.sef = true;
        this.Zq = 0.0f;
        this.uvD = new boolean[]{true, true, true, true};
        this.dNu = false;
        this.TzV = 0.0f;
        this.RiZ = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.sU = ImageView.ScaleType.FIT_CENTER;
        this.EjP = bitmap;
        int width = bitmap.getWidth();
        this.vS = width;
        int height = bitmap.getHeight();
        this.Jcg = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.HiB = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.uA = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.RiZ.getColorForState(getState(), ViewCompat.MEASURED_STATE_MASK));
        paint2.setStrokeWidth(this.TzV);
    }

    public static sP Sj(Bitmap bitmap) {
        if (bitmap != null) {
            return new sP(bitmap);
        }
        return null;
    }

    public static Bitmap sP(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
            return null;
        }
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.sef) {
            BitmapShader bitmapShader = new BitmapShader(this.EjP, this.f20225aa, this.Fmk);
            Shader.TileMode tileMode = this.f20225aa;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.Fmk == tileMode2) {
                bitmapShader.setLocalMatrix(this.TEQ);
            }
            this.HiB.setShader(bitmapShader);
            this.sef = false;
        }
        if (this.dNu) {
            if (this.TzV <= 0.0f) {
                canvas.drawOval(this.sP, this.HiB);
                return;
            } else {
                canvas.drawOval(this.sP, this.HiB);
                canvas.drawOval(this.Dq, this.uA);
                return;
            }
        }
        if (!Sj(this.uvD)) {
            canvas.drawRect(this.sP, this.HiB);
            if (this.TzV > 0.0f) {
                canvas.drawRect(this.Dq, this.uA);
                return;
            }
            return;
        }
        float f10 = this.Zq;
        if (this.TzV <= 0.0f) {
            canvas.drawRoundRect(this.sP, f10, f10, this.HiB);
            Sj(canvas);
        } else {
            canvas.drawRoundRect(this.sP, f10, f10, this.HiB);
            canvas.drawRoundRect(this.Dq, f10, f10, this.uA);
            Sj(canvas);
            sP(canvas);
        }
    }

    @Override
    public int getAlpha() {
        return this.HiB.getAlpha();
    }

    @Override
    public ColorFilter getColorFilter() {
        return this.HiB.getColorFilter();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.Jcg;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.vS;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public boolean isStateful() {
        return this.RiZ.isStateful();
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.Sj.set(rect);
        Sj();
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.RiZ.getColorForState(iArr, 0);
        if (this.uA.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.uA.setColor(colorForState);
        return true;
    }

    @Override
    public void setAlpha(int i10) {
        this.HiB.setAlpha(i10);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.HiB.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override
    public void setDither(boolean z10) {
        this.HiB.setDither(z10);
        invalidateSelf();
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        this.HiB.setFilterBitmap(z10);
        invalidateSelf();
    }

    public static Drawable Sj(Drawable drawable) {
        if (drawable != null) {
            if (drawable instanceof sP) {
                return drawable;
            }
            if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                Drawable.ConstantState constantState = drawable.mutate().getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i10 = 0; i10 < numberOfLayers; i10++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i10), Sj(layerDrawable.getDrawable(i10)));
                }
                return layerDrawable;
            }
        }
        Bitmap bitmapSP = sP(drawable);
        return bitmapSP != null ? new sP(bitmapSP) : drawable;
    }

    private void sP(Canvas canvas) {
        float f10;
        if (sP(this.uvD) || this.Zq == 0.0f) {
            return;
        }
        RectF rectF = this.sP;
        float f11 = rectF.left;
        float f12 = rectF.top;
        float fWidth = rectF.width() + f11;
        float fHeight = f12 + this.sP.height();
        float f13 = this.Zq;
        float f14 = this.TzV / 2.0f;
        if (!this.uvD[0]) {
            canvas.drawLine(f11 - f14, f12, f11 + f13, f12, this.uA);
            canvas.drawLine(f11, f12 - f14, f11, f12 + f13, this.uA);
        }
        if (!this.uvD[1]) {
            canvas.drawLine((fWidth - f13) - f14, f12, fWidth, f12, this.uA);
            canvas.drawLine(fWidth, f12 - f14, fWidth, f12 + f13, this.uA);
        }
        if (this.uvD[2]) {
            f10 = f13;
        } else {
            f10 = f13;
            canvas.drawLine((fWidth - f13) - f14, fHeight, fWidth + f14, fHeight, this.uA);
            canvas.drawLine(fWidth, fHeight - f10, fWidth, fHeight, this.uA);
        }
        if (this.uvD[3]) {
            return;
        }
        canvas.drawLine(f11 - f14, fHeight, f11 + f10, fHeight, this.uA);
        canvas.drawLine(f11, fHeight - f10, f11, fHeight, this.uA);
    }

    private void Sj() {
        float fWidth;
        float fHeight;
        int i10 = AnonymousClass1.Sj[this.sU.ordinal()];
        if (i10 == 1) {
            this.Dq.set(this.Sj);
            RectF rectF = this.Dq;
            float f10 = this.TzV;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            this.TEQ.reset();
            this.TEQ.setTranslate((int) (((this.Dq.width() - this.vS) * 0.5f) + 0.5f), (int) (((this.Dq.height() - this.Jcg) * 0.5f) + 0.5f));
        } else if (i10 == 2) {
            this.Dq.set(this.Sj);
            RectF rectF2 = this.Dq;
            float f11 = this.TzV;
            rectF2.inset(f11 / 2.0f, f11 / 2.0f);
            this.TEQ.reset();
            float fWidth2 = 0.0f;
            if (this.vS * this.Dq.height() > this.Dq.width() * this.Jcg) {
                fWidth = this.Dq.height() / this.Jcg;
                fHeight = 0.0f;
                fWidth2 = (this.Dq.width() - (this.vS * fWidth)) * 0.5f;
            } else {
                fWidth = this.Dq.width() / this.vS;
                fHeight = (this.Dq.height() - (this.Jcg * fWidth)) * 0.5f;
            }
            this.TEQ.setScale(fWidth, fWidth);
            Matrix matrix = this.TEQ;
            float f12 = this.TzV;
            matrix.postTranslate(((int) (fWidth2 + 0.5f)) + (f12 / 2.0f), ((int) (fHeight + 0.5f)) + (f12 / 2.0f));
        } else if (i10 == 3) {
            this.TEQ.reset();
            float fMin = (((float) this.vS) > this.Sj.width() || ((float) this.Jcg) > this.Sj.height()) ? Math.min(this.Sj.width() / this.vS, this.Sj.height() / this.Jcg) : 1.0f;
            float fWidth3 = (int) (((this.Sj.width() - (this.vS * fMin)) * 0.5f) + 0.5f);
            float fHeight2 = (int) (((this.Sj.height() - (this.Jcg * fMin)) * 0.5f) + 0.5f);
            this.TEQ.setScale(fMin, fMin);
            this.TEQ.postTranslate(fWidth3, fHeight2);
            this.Dq.set(this.TKC);
            this.TEQ.mapRect(this.Dq);
            RectF rectF3 = this.Dq;
            float f13 = this.TzV;
            rectF3.inset(f13 / 2.0f, f13 / 2.0f);
            this.TEQ.setRectToRect(this.TKC, this.Dq, Matrix.ScaleToFit.FILL);
        } else if (i10 == 5) {
            this.Dq.set(this.TKC);
            this.TEQ.setRectToRect(this.TKC, this.Sj, Matrix.ScaleToFit.END);
            this.TEQ.mapRect(this.Dq);
            RectF rectF4 = this.Dq;
            float f14 = this.TzV;
            rectF4.inset(f14 / 2.0f, f14 / 2.0f);
            this.TEQ.setRectToRect(this.TKC, this.Dq, Matrix.ScaleToFit.FILL);
        } else if (i10 == 6) {
            this.Dq.set(this.TKC);
            this.TEQ.setRectToRect(this.TKC, this.Sj, Matrix.ScaleToFit.START);
            this.TEQ.mapRect(this.Dq);
            RectF rectF5 = this.Dq;
            float f15 = this.TzV;
            rectF5.inset(f15 / 2.0f, f15 / 2.0f);
            this.TEQ.setRectToRect(this.TKC, this.Dq, Matrix.ScaleToFit.FILL);
        } else if (i10 != 7) {
            this.Dq.set(this.TKC);
            this.TEQ.setRectToRect(this.TKC, this.Sj, Matrix.ScaleToFit.CENTER);
            this.TEQ.mapRect(this.Dq);
            RectF rectF6 = this.Dq;
            float f16 = this.TzV;
            rectF6.inset(f16 / 2.0f, f16 / 2.0f);
            this.TEQ.setRectToRect(this.TKC, this.Dq, Matrix.ScaleToFit.FILL);
        } else {
            this.Dq.set(this.Sj);
            RectF rectF7 = this.Dq;
            float f17 = this.TzV;
            rectF7.inset(f17 / 2.0f, f17 / 2.0f);
            this.TEQ.reset();
            this.TEQ.setRectToRect(this.TKC, this.Dq, Matrix.ScaleToFit.FILL);
        }
        this.sP.set(this.Dq);
        this.sef = true;
    }

    public sP sP(Shader.TileMode tileMode) {
        if (this.Fmk != tileMode) {
            this.Fmk = tileMode;
            this.sef = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean sP(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return false;
            }
        }
        return true;
    }

    private void Sj(Canvas canvas) {
        if (sP(this.uvD) || this.Zq == 0.0f) {
            return;
        }
        RectF rectF = this.sP;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float fWidth = rectF.width() + f10;
        float fHeight = this.sP.height() + f11;
        float f12 = this.Zq;
        if (!this.uvD[0]) {
            this.Ym.set(f10, f11, f10 + f12, f11 + f12);
            canvas.drawRect(this.Ym, this.HiB);
        }
        if (!this.uvD[1]) {
            this.Ym.set(fWidth - f12, f11, fWidth, f12);
            canvas.drawRect(this.Ym, this.HiB);
        }
        if (!this.uvD[2]) {
            this.Ym.set(fWidth - f12, fHeight - f12, fWidth, fHeight);
            canvas.drawRect(this.Ym, this.HiB);
        }
        if (this.uvD[3]) {
            return;
        }
        this.Ym.set(f10, fHeight - f12, f12 + f10, fHeight);
        canvas.drawRect(this.Ym, this.HiB);
    }

    public sP Sj(float f10, float f11, float f12, float f13) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f10));
        hashSet.add(Float.valueOf(f11));
        hashSet.add(Float.valueOf(f12));
        hashSet.add(Float.valueOf(f13));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float fFloatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (!Float.isInfinite(fFloatValue) && !Float.isNaN(fFloatValue) && fFloatValue >= 0.0f) {
                    this.Zq = fFloatValue;
                } else {
                    throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(fFloatValue)));
                }
            } else {
                this.Zq = 0.0f;
            }
            boolean[] zArr = this.uvD;
            zArr[0] = f10 > 0.0f;
            zArr[1] = f11 > 0.0f;
            zArr[2] = f12 > 0.0f;
            zArr[3] = f13 > 0.0f;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    public sP Sj(float f10) {
        this.TzV = f10;
        this.uA.setStrokeWidth(f10);
        return this;
    }

    public sP Sj(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.RiZ = colorStateList;
        this.uA.setColor(colorStateList.getColorForState(getState(), ViewCompat.MEASURED_STATE_MASK));
        return this;
    }

    public sP Sj(boolean z10) {
        this.dNu = z10;
        return this;
    }

    public sP Sj(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.sU != scaleType) {
            this.sU = scaleType;
            Sj();
        }
        return this;
    }

    public sP Sj(Shader.TileMode tileMode) {
        if (this.f20225aa != tileMode) {
            this.f20225aa = tileMode;
            this.sef = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean Sj(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return true;
            }
        }
        return false;
    }
}

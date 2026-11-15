package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R$styleable;

public class ImageFilterView extends AppCompatImageView {

    private c f7253d;

    private boolean f7254e;

    private Drawable f7255f;

    private Drawable f7256g;

    private float f7257h;

    private float f7258i;

    private float f7259j;

    private Path f7260k;

    ViewOutlineProvider f7261l;

    RectF f7262m;

    Drawable[] f7263n;

    LayerDrawable f7264o;

    float f7265p;

    float f7266q;

    float f7267r;

    float f7268s;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            int width = ImageFilterView.this.getWidth();
            int height = ImageFilterView.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.f7258i) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f7259j);
        }
    }

    static class c {

        float[] f7271a = new float[20];

        ColorMatrix f7272b = new ColorMatrix();

        ColorMatrix f7273c = new ColorMatrix();

        float f7274d = 1.0f;

        float f7275e = 1.0f;

        float f7276f = 1.0f;

        float f7277g = 1.0f;

        c() {
        }

        private void a(float f10) {
            float[] fArr = this.f7271a;
            fArr[0] = f10;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f10;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = f10;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void b(float f10) {
            float f11 = 1.0f - f10;
            float f12 = 0.2999f * f11;
            float f13 = 0.587f * f11;
            float f14 = f11 * 0.114f;
            float[] fArr = this.f7271a;
            fArr[0] = f12 + f10;
            fArr[1] = f13;
            fArr[2] = f14;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f12;
            fArr[6] = f13 + f10;
            fArr[7] = f14;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f12;
            fArr[11] = f13;
            fArr[12] = f14 + f10;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void d(float f10) {
            float fLog;
            float fPow;
            float fLog2;
            if (f10 <= 0.0f) {
                f10 = 0.01f;
            }
            float f11 = (5000.0f / f10) / 100.0f;
            if (f11 > 66.0f) {
                double d10 = f11 - 60.0f;
                fPow = ((float) Math.pow(d10, -0.13320475816726685d)) * 329.69873f;
                fLog = ((float) Math.pow(d10, 0.07551484555006027d)) * 288.12216f;
            } else {
                fLog = (((float) Math.log(f11)) * 99.4708f) - 161.11957f;
                fPow = 255.0f;
            }
            if (f11 < 66.0f) {
                fLog2 = f11 > 19.0f ? (((float) Math.log(f11 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f;
            } else {
                fLog2 = 255.0f;
            }
            float fMin = Math.min(255.0f, Math.max(fPow, 0.0f));
            float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
            float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
            float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
            float fLog4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
            float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
            float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
            float[] fArr = this.f7271a;
            fArr[0] = fMin / fMin4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = fMin2 / fMin5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = fMin6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        void c(ImageView imageView) {
            boolean z10;
            this.f7272b.reset();
            float f10 = this.f7275e;
            boolean z11 = true;
            if (f10 != 1.0f) {
                b(f10);
                this.f7272b.set(this.f7271a);
                z10 = true;
            } else {
                z10 = false;
            }
            float f11 = this.f7276f;
            if (f11 != 1.0f) {
                this.f7273c.setScale(f11, f11, f11, 1.0f);
                this.f7272b.postConcat(this.f7273c);
                z10 = true;
            }
            float f12 = this.f7277g;
            if (f12 != 1.0f) {
                d(f12);
                this.f7273c.set(this.f7271a);
                this.f7272b.postConcat(this.f7273c);
                z10 = true;
            }
            float f13 = this.f7274d;
            if (f13 != 1.0f) {
                a(f13);
                this.f7273c.set(this.f7271a);
                this.f7272b.postConcat(this.f7273c);
            } else {
                z11 = z10;
            }
            if (z11) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f7272b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.f7253d = new c();
        this.f7254e = true;
        this.f7255f = null;
        this.f7256g = null;
        this.f7257h = 0.0f;
        this.f7258i = 0.0f;
        this.f7259j = Float.NaN;
        this.f7263n = new Drawable[2];
        this.f7265p = Float.NaN;
        this.f7266q = Float.NaN;
        this.f7267r = Float.NaN;
        this.f7268s = Float.NaN;
        init(context, null);
    }

    private void c() {
        if (Float.isNaN(this.f7265p) && Float.isNaN(this.f7266q) && Float.isNaN(this.f7267r) && Float.isNaN(this.f7268s)) {
            return;
        }
        float f10 = Float.isNaN(this.f7265p) ? 0.0f : this.f7265p;
        float f11 = Float.isNaN(this.f7266q) ? 0.0f : this.f7266q;
        float f12 = Float.isNaN(this.f7267r) ? 1.0f : this.f7267r;
        float f13 = Float.isNaN(this.f7268s) ? 0.0f : this.f7268s;
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        float f14 = f12 * (intrinsicWidth * height < intrinsicHeight * width ? width / intrinsicWidth : height / intrinsicHeight);
        matrix.postScale(f14, f14);
        float f15 = intrinsicWidth * f14;
        float f16 = f14 * intrinsicHeight;
        matrix.postTranslate((((f10 * (width - f15)) + width) - f15) * 0.5f, (((f11 * (height - f16)) + height) - f16) * 0.5f);
        matrix.postRotate(f13, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void d() {
        if (Float.isNaN(this.f7265p) && Float.isNaN(this.f7266q) && Float.isNaN(this.f7267r) && Float.isNaN(this.f7268s)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            c();
        }
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            this.f7255f = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.f7257h = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_brightness) {
                    setBrightness(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f7254e));
                } else if (index == R$styleable.ImageFilterView_imagePanX) {
                    setImagePanX(typedArrayObtainStyledAttributes.getFloat(index, this.f7265p));
                } else if (index == R$styleable.ImageFilterView_imagePanY) {
                    setImagePanY(typedArrayObtainStyledAttributes.getFloat(index, this.f7266q));
                } else if (index == R$styleable.ImageFilterView_imageRotate) {
                    setImageRotate(typedArrayObtainStyledAttributes.getFloat(index, this.f7268s));
                } else if (index == R$styleable.ImageFilterView_imageZoom) {
                    setImageZoom(typedArrayObtainStyledAttributes.getFloat(index, this.f7267r));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f7256g = drawable;
            if (this.f7255f == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f7256g = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f7263n;
                    Drawable drawableMutate = drawable2.mutate();
                    this.f7256g = drawableMutate;
                    drawableArr[0] = drawableMutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f7263n;
            Drawable drawableMutate2 = getDrawable().mutate();
            this.f7256g = drawableMutate2;
            drawableArr2[0] = drawableMutate2;
            this.f7263n[1] = this.f7255f.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f7263n);
            this.f7264o = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f7257h * 255.0f));
            if (!this.f7254e) {
                this.f7264o.getDrawable(0).setAlpha((int) ((1.0f - this.f7257h) * 255.0f));
            }
            super.setImageDrawable(this.f7264o);
        }
    }

    private void setOverlay(boolean z10) {
        this.f7254e = z10;
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getBrightness() {
        return this.f7253d.f7274d;
    }

    public float getContrast() {
        return this.f7253d.f7276f;
    }

    public float getCrossfade() {
        return this.f7257h;
    }

    public float getImagePanX() {
        return this.f7265p;
    }

    public float getImagePanY() {
        return this.f7266q;
    }

    public float getImageRotate() {
        return this.f7268s;
    }

    public float getImageZoom() {
        return this.f7267r;
    }

    public float getRound() {
        return this.f7259j;
    }

    public float getRoundPercent() {
        return this.f7258i;
    }

    public float getSaturation() {
        return this.f7253d.f7275e;
    }

    public float getWarmth() {
        return this.f7253d.f7277g;
    }

    @Override
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        c();
    }

    public void setAltImageResource(int i10) {
        Drawable drawableMutate = g.a.b(getContext(), i10).mutate();
        this.f7255f = drawableMutate;
        Drawable[] drawableArr = this.f7263n;
        drawableArr[0] = this.f7256g;
        drawableArr[1] = drawableMutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7263n);
        this.f7264o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7257h);
    }

    public void setBrightness(float f10) {
        c cVar = this.f7253d;
        cVar.f7274d = f10;
        cVar.c(this);
    }

    public void setContrast(float f10) {
        c cVar = this.f7253d;
        cVar.f7276f = f10;
        cVar.c(this);
    }

    public void setCrossfade(float f10) {
        this.f7257h = f10;
        if (this.f7263n != null) {
            if (!this.f7254e) {
                this.f7264o.getDrawable(0).setAlpha((int) ((1.0f - this.f7257h) * 255.0f));
            }
            this.f7264o.getDrawable(1).setAlpha((int) (this.f7257h * 255.0f));
            super.setImageDrawable(this.f7264o);
        }
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        if (this.f7255f == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.f7256g = drawableMutate;
        Drawable[] drawableArr = this.f7263n;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7255f;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7263n);
        this.f7264o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7257h);
    }

    public void setImagePanX(float f10) {
        this.f7265p = f10;
        d();
    }

    public void setImagePanY(float f10) {
        this.f7266q = f10;
        d();
    }

    @Override
    public void setImageResource(int i10) {
        if (this.f7255f == null) {
            super.setImageResource(i10);
            return;
        }
        Drawable drawableMutate = g.a.b(getContext(), i10).mutate();
        this.f7256g = drawableMutate;
        Drawable[] drawableArr = this.f7263n;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7255f;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7263n);
        this.f7264o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7257h);
    }

    public void setImageRotate(float f10) {
        this.f7268s = f10;
        d();
    }

    public void setImageZoom(float f10) {
        this.f7267r = f10;
        d();
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f7259j = f10;
            float f11 = this.f7258i;
            this.f7258i = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f7259j != f10;
        this.f7259j = f10;
        if (f10 != 0.0f) {
            if (this.f7260k == null) {
                this.f7260k = new Path();
            }
            if (this.f7262m == null) {
                this.f7262m = new RectF();
            }
            if (this.f7261l == null) {
                b bVar = new b();
                this.f7261l = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7262m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7260k.reset();
            Path path = this.f7260k;
            RectF rectF = this.f7262m;
            float f12 = this.f7259j;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f7258i != f10;
        this.f7258i = f10;
        if (f10 != 0.0f) {
            if (this.f7260k == null) {
                this.f7260k = new Path();
            }
            if (this.f7262m == null) {
                this.f7262m = new RectF();
            }
            if (this.f7261l == null) {
                a aVar = new a();
                this.f7261l = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7258i) / 2.0f;
            this.f7262m.set(0.0f, 0.0f, width, height);
            this.f7260k.reset();
            this.f7260k.addRoundRect(this.f7262m, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f10) {
        c cVar = this.f7253d;
        cVar.f7275e = f10;
        cVar.c(this);
    }

    public void setWarmth(float f10) {
        c cVar = this.f7253d;
        cVar.f7277g = f10;
        cVar.c(this);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7253d = new c();
        this.f7254e = true;
        this.f7255f = null;
        this.f7256g = null;
        this.f7257h = 0.0f;
        this.f7258i = 0.0f;
        this.f7259j = Float.NaN;
        this.f7263n = new Drawable[2];
        this.f7265p = Float.NaN;
        this.f7266q = Float.NaN;
        this.f7267r = Float.NaN;
        this.f7268s = Float.NaN;
        init(context, attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7253d = new c();
        this.f7254e = true;
        this.f7255f = null;
        this.f7256g = null;
        this.f7257h = 0.0f;
        this.f7258i = 0.0f;
        this.f7259j = Float.NaN;
        this.f7263n = new Drawable[2];
        this.f7265p = Float.NaN;
        this.f7266q = Float.NaN;
        this.f7267r = Float.NaN;
        this.f7268s = Float.NaN;
        init(context, attributeSet);
    }
}

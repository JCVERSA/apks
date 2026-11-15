package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
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
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.R$styleable;

public class ImageFilterButton extends AppCompatImageButton {

    private ImageFilterView.c f7235a;

    private float f7236b;

    private float f7237c;

    private float f7238d;

    private Path f7239e;

    ViewOutlineProvider f7240f;

    RectF f7241g;

    Drawable[] f7242h;

    LayerDrawable f7243i;

    private boolean f7244j;

    private Drawable f7245k;

    private Drawable f7246l;

    private float f7247m;

    private float f7248n;

    private float f7249o;

    private float f7250p;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            int width = ImageFilterButton.this.getWidth();
            int height = ImageFilterButton.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.f7237c) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f7238d);
        }
    }

    public ImageFilterButton(Context context) {
        super(context);
        this.f7235a = new ImageFilterView.c();
        this.f7236b = 0.0f;
        this.f7237c = 0.0f;
        this.f7238d = Float.NaN;
        this.f7242h = new Drawable[2];
        this.f7244j = true;
        this.f7245k = null;
        this.f7246l = null;
        this.f7247m = Float.NaN;
        this.f7248n = Float.NaN;
        this.f7249o = Float.NaN;
        this.f7250p = Float.NaN;
        init(context, null);
    }

    private void c() {
        if (Float.isNaN(this.f7247m) && Float.isNaN(this.f7248n) && Float.isNaN(this.f7249o) && Float.isNaN(this.f7250p)) {
            return;
        }
        float f10 = Float.isNaN(this.f7247m) ? 0.0f : this.f7247m;
        float f11 = Float.isNaN(this.f7248n) ? 0.0f : this.f7248n;
        float f12 = Float.isNaN(this.f7249o) ? 1.0f : this.f7249o;
        float f13 = Float.isNaN(this.f7250p) ? 0.0f : this.f7250p;
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
        if (Float.isNaN(this.f7247m) && Float.isNaN(this.f7248n) && Float.isNaN(this.f7249o) && Float.isNaN(this.f7250p)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            c();
        }
    }

    private void init(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            this.f7245k = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.f7236b = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f7244j));
                } else if (index == R$styleable.ImageFilterView_imagePanX) {
                    setImagePanX(typedArrayObtainStyledAttributes.getFloat(index, this.f7247m));
                } else if (index == R$styleable.ImageFilterView_imagePanY) {
                    setImagePanY(typedArrayObtainStyledAttributes.getFloat(index, this.f7248n));
                } else if (index == R$styleable.ImageFilterView_imageRotate) {
                    setImageRotate(typedArrayObtainStyledAttributes.getFloat(index, this.f7250p));
                } else if (index == R$styleable.ImageFilterView_imageZoom) {
                    setImageZoom(typedArrayObtainStyledAttributes.getFloat(index, this.f7249o));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f7246l = drawable;
            if (this.f7245k == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f7246l = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f7242h;
                    Drawable drawableMutate = drawable2.mutate();
                    this.f7246l = drawableMutate;
                    drawableArr[0] = drawableMutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f7242h;
            Drawable drawableMutate2 = getDrawable().mutate();
            this.f7246l = drawableMutate2;
            drawableArr2[0] = drawableMutate2;
            this.f7242h[1] = this.f7245k.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f7242h);
            this.f7243i = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f7236b * 255.0f));
            if (!this.f7244j) {
                this.f7243i.getDrawable(0).setAlpha((int) ((1.0f - this.f7236b) * 255.0f));
            }
            super.setImageDrawable(this.f7243i);
        }
    }

    private void setOverlay(boolean z10) {
        this.f7244j = z10;
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getContrast() {
        return this.f7235a.f7276f;
    }

    public float getCrossfade() {
        return this.f7236b;
    }

    public float getImagePanX() {
        return this.f7247m;
    }

    public float getImagePanY() {
        return this.f7248n;
    }

    public float getImageRotate() {
        return this.f7250p;
    }

    public float getImageZoom() {
        return this.f7249o;
    }

    public float getRound() {
        return this.f7238d;
    }

    public float getRoundPercent() {
        return this.f7237c;
    }

    public float getSaturation() {
        return this.f7235a.f7275e;
    }

    public float getWarmth() {
        return this.f7235a.f7277g;
    }

    @Override
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        c();
    }

    public void setAltImageResource(int i10) {
        Drawable drawableMutate = g.a.b(getContext(), i10).mutate();
        this.f7245k = drawableMutate;
        Drawable[] drawableArr = this.f7242h;
        drawableArr[0] = this.f7246l;
        drawableArr[1] = drawableMutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7242h);
        this.f7243i = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7236b);
    }

    public void setBrightness(float f10) {
        ImageFilterView.c cVar = this.f7235a;
        cVar.f7274d = f10;
        cVar.c(this);
    }

    public void setContrast(float f10) {
        ImageFilterView.c cVar = this.f7235a;
        cVar.f7276f = f10;
        cVar.c(this);
    }

    public void setCrossfade(float f10) {
        this.f7236b = f10;
        if (this.f7242h != null) {
            if (!this.f7244j) {
                this.f7243i.getDrawable(0).setAlpha((int) ((1.0f - this.f7236b) * 255.0f));
            }
            this.f7243i.getDrawable(1).setAlpha((int) (this.f7236b * 255.0f));
            super.setImageDrawable(this.f7243i);
        }
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        if (this.f7245k == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.f7246l = drawableMutate;
        Drawable[] drawableArr = this.f7242h;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7245k;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7242h);
        this.f7243i = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7236b);
    }

    public void setImagePanX(float f10) {
        this.f7247m = f10;
        d();
    }

    public void setImagePanY(float f10) {
        this.f7248n = f10;
        d();
    }

    @Override
    public void setImageResource(int i10) {
        if (this.f7245k == null) {
            super.setImageResource(i10);
            return;
        }
        Drawable drawableMutate = g.a.b(getContext(), i10).mutate();
        this.f7246l = drawableMutate;
        Drawable[] drawableArr = this.f7242h;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7245k;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7242h);
        this.f7243i = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7236b);
    }

    public void setImageRotate(float f10) {
        this.f7250p = f10;
        d();
    }

    public void setImageZoom(float f10) {
        this.f7249o = f10;
        d();
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f7238d = f10;
            float f11 = this.f7237c;
            this.f7237c = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f7238d != f10;
        this.f7238d = f10;
        if (f10 != 0.0f) {
            if (this.f7239e == null) {
                this.f7239e = new Path();
            }
            if (this.f7241g == null) {
                this.f7241g = new RectF();
            }
            if (this.f7240f == null) {
                b bVar = new b();
                this.f7240f = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7241g.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7239e.reset();
            Path path = this.f7239e;
            RectF rectF = this.f7241g;
            float f12 = this.f7238d;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f7237c != f10;
        this.f7237c = f10;
        if (f10 != 0.0f) {
            if (this.f7239e == null) {
                this.f7239e = new Path();
            }
            if (this.f7241g == null) {
                this.f7241g = new RectF();
            }
            if (this.f7240f == null) {
                a aVar = new a();
                this.f7240f = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7237c) / 2.0f;
            this.f7241g.set(0.0f, 0.0f, width, height);
            this.f7239e.reset();
            this.f7239e.addRoundRect(this.f7241g, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f10) {
        ImageFilterView.c cVar = this.f7235a;
        cVar.f7275e = f10;
        cVar.c(this);
    }

    public void setWarmth(float f10) {
        ImageFilterView.c cVar = this.f7235a;
        cVar.f7277g = f10;
        cVar.c(this);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7235a = new ImageFilterView.c();
        this.f7236b = 0.0f;
        this.f7237c = 0.0f;
        this.f7238d = Float.NaN;
        this.f7242h = new Drawable[2];
        this.f7244j = true;
        this.f7245k = null;
        this.f7246l = null;
        this.f7247m = Float.NaN;
        this.f7248n = Float.NaN;
        this.f7249o = Float.NaN;
        this.f7250p = Float.NaN;
        init(context, attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7235a = new ImageFilterView.c();
        this.f7236b = 0.0f;
        this.f7237c = 0.0f;
        this.f7238d = Float.NaN;
        this.f7242h = new Drawable[2];
        this.f7244j = true;
        this.f7245k = null;
        this.f7246l = null;
        this.f7247m = Float.NaN;
        this.f7248n = Float.NaN;
        this.f7249o = Float.NaN;
        this.f7250p = Float.NaN;
        init(context, attributeSet);
    }
}

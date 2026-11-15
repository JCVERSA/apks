package com.bytedance.adsdk.ugeno.uA.EjP;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.Sj.HiB;
import com.bytedance.adsdk.ugeno.Sj.vS;
import com.bytedance.adsdk.ugeno.core.IAnimation;

public class Sj extends ImageView implements HiB, IAnimation {
    static final boolean sP = true;
    private float Dq;
    private boolean Fmk;
    private final float[] HiB;
    private ColorStateList Jcg;
    private Shader.TileMode RiZ;
    private boolean TEQ;
    private float TKC;
    private Shader.TileMode TzV;
    private Drawable Ym;
    private int Zq;

    private boolean f20223aa;
    private ImageView.ScaleType dNu;

    private vS f20224dx;
    private EjP sU;
    private boolean sef;
    private ColorFilter uA;
    private int uvD;
    private Drawable vS;
    public static final Shader.TileMode Sj = Shader.TileMode.CLAMP;
    private static final ImageView.ScaleType[] EjP = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    static class AnonymousClass1 {
        static final int[] Sj;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            Sj = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Sj(Context context) {
        super(context);
        this.HiB = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.Jcg = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.Dq = 0.0f;
        this.uA = null;
        this.TEQ = false;
        this.f20223aa = false;
        this.Fmk = false;
        this.sef = false;
        Shader.TileMode tileMode = Sj;
        this.TzV = tileMode;
        this.RiZ = tileMode;
        this.f20224dx = new vS(this);
    }

    private void EjP() {
        Drawable drawable = this.Ym;
        if (drawable == null || !this.TEQ) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.Ym = drawableMutate;
        if (this.f20223aa) {
            drawableMutate.setColorFilter(this.uA);
        }
    }

    private Drawable Sj() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.Zq;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.Zq, e10);
                this.Zq = 0;
            }
        }
        return sP.Sj(drawable);
    }

    private void TKC() {
        Sj(this.Ym, this.dNu);
    }

    private Drawable sP() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.uvD;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.uvD, e10);
                this.uvD = 0;
            }
        }
        return sP.Sj(drawable);
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.sP(canvas);
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.Jcg.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.Jcg;
    }

    public float getBorderRadius() {
        return this.f20224dx.Sj();
    }

    public float getBorderWidth() {
        return this.Dq;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float fMax = 0.0f;
        for (float f10 : this.HiB) {
            fMax = Math.max(f10, fMax);
        }
        return fMax;
    }

    @Override
    public float getRipple() {
        return this.TKC;
    }

    @Override
    public float getRubIn() {
        return this.f20224dx.getRubIn();
    }

    @Override
    public ImageView.ScaleType getScaleType() {
        return this.dNu;
    }

    @Override
    public float getShine() {
        return this.f20224dx.getShine();
    }

    @Override
    public float getStretch() {
        return this.f20224dx.getStretch();
    }

    public Shader.TileMode getTileModeX() {
        return this.TzV;
    }

    public Shader.TileMode getTileModeY() {
        return this.RiZ;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Sj(canvas, this);
            this.sU.Sj(canvas);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Sj(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        EjP ejP = this.sU;
        if (ejP == null) {
            super.onMeasure(i10, i11);
        } else {
            int[] iArrSj = ejP.Sj(i10, i11);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i12);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundColor(int i10) {
        ColorDrawable colorDrawable = new ColorDrawable(i10);
        this.vS = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.vS = drawable;
        Sj(true);
        super.setBackgroundDrawable(this.vS);
    }

    @Override
    public void setBackgroundResource(int i10) {
        if (this.uvD != i10) {
            this.uvD = i10;
            Drawable drawableSP = sP();
            this.vS = drawableSP;
            setBackgroundDrawable(drawableSP);
        }
    }

    public void setBorderColor(int i10) {
        setBorderColor(ColorStateList.valueOf(i10));
    }

    public void setBorderRadius(float f10) {
        vS vSVar = this.f20224dx;
        if (vSVar != null) {
            vSVar.Sj(f10);
        }
    }

    public void setBorderWidth(int i10) {
        setBorderWidth(getResources().getDimension(i10));
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.uA != colorFilter) {
            this.uA = colorFilter;
            this.f20223aa = true;
            this.TEQ = true;
            EjP();
            invalidate();
        }
    }

    public void setCornerRadius(float f10) {
        Sj(f10, f10, f10, f10);
    }

    public void setCornerRadiusDimen(int i10) {
        float dimension = getResources().getDimension(i10);
        Sj(dimension, dimension, dimension, dimension);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.Zq = 0;
        this.Ym = sP.Sj(bitmap);
        TKC();
        super.setImageDrawable(this.Ym);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        this.Zq = 0;
        this.Ym = sP.Sj(drawable);
        TKC();
        super.setImageDrawable(drawable);
    }

    @Override
    public void setImageResource(int i10) {
        if (this.Zq != i10) {
            this.Zq = i10;
            this.Ym = Sj();
            TKC();
            super.setImageDrawable(this.Ym);
        }
    }

    @Override
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z10) {
        this.Fmk = z10;
        TKC();
        Sj(false);
        invalidate();
    }

    @Override
    public void setRipple(float f10) {
        this.TKC = f10;
        vS vSVar = this.f20224dx;
        if (vSVar != null) {
            vSVar.sP(f10);
        }
        postInvalidate();
    }

    public void setRubIn(float f10) {
        vS vSVar = this.f20224dx;
        if (vSVar != null) {
            vSVar.HiB(f10);
        }
    }

    @Override
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!sP && scaleType == null) {
            throw new AssertionError();
        }
        if (this.dNu != scaleType) {
            this.dNu = scaleType;
            int i10 = AnonymousClass1.Sj[scaleType.ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
                super.setScaleType(scaleType);
            } else {
                super.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            TKC();
            Sj(false);
            invalidate();
        }
    }

    public void setShine(float f10) {
        vS vSVar = this.f20224dx;
        if (vSVar != null) {
            vSVar.TKC(f10);
        }
    }

    public void setStretch(float f10) {
        vS vSVar = this.f20224dx;
        if (vSVar != null) {
            vSVar.EjP(f10);
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.TzV == tileMode) {
            return;
        }
        this.TzV = tileMode;
        TKC();
        Sj(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.RiZ == tileMode) {
            return;
        }
        this.RiZ = tileMode;
        TKC();
        Sj(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.Jcg.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        this.Jcg = colorStateList;
        TKC();
        Sj(false);
        if (this.Dq > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f10) {
        if (this.Dq == f10) {
            return;
        }
        this.Dq = f10;
        TKC();
        Sj(false);
        invalidate();
    }

    private void Sj(boolean z10) {
        if (this.sef) {
            if (z10) {
                this.vS = sP.Sj(this.vS);
            }
            Sj(this.vS, ImageView.ScaleType.FIT_XY);
        }
    }

    private void Sj(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof sP) {
            sP sPVar = (sP) drawable;
            sPVar.Sj(scaleType).Sj(this.Dq).Sj(this.Jcg).Sj(this.Fmk).Sj(this.TzV).sP(this.RiZ);
            float[] fArr = this.HiB;
            if (fArr != null) {
                sPVar.Sj(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            EjP();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                Sj(layerDrawable.getDrawable(i10), scaleType);
            }
        }
    }

    public void Sj(float f10, float f11, float f12, float f13) {
        float[] fArr = this.HiB;
        if (fArr[0] == f10 && fArr[1] == f11 && fArr[2] == f13 && fArr[3] == f12) {
            return;
        }
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[3] = f12;
        fArr[2] = f13;
        TKC();
        Sj(false);
        invalidate();
    }

    public void Sj(EjP ejP) {
        this.sU = ejP;
    }
}

package com.makeramen.roundedimageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import defpackage.fw8;

public class RoundedImageView extends ImageView {
    public static final float DEFAULT_BORDER_WIDTH = 0.0f;
    public static final float DEFAULT_RADIUS = 0.0f;
    public static final String TAG = "RoundedImageView";
    public final float[] b;
    public Drawable c;
    public ColorStateList d;
    public float e;
    public ColorFilter f;
    public boolean g;
    public Drawable h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public ImageView.ScaleType n;
    public Shader.TileMode o;
    public Shader.TileMode p;
    public static final Shader.TileMode DEFAULT_TILE_MODE = Shader.TileMode.CLAMP;
    public static final ImageView.ScaleType[] q = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public RoundedImageView(Context context) {
        super(context);
        this.b = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.d = ColorStateList.valueOf(-16777216);
        this.e = 0.0f;
        this.f = null;
        this.g = false;
        this.i = false;
        this.j = false;
        this.k = false;
        Shader.TileMode tileMode = DEFAULT_TILE_MODE;
        this.o = tileMode;
        this.p = tileMode;
    }

    public static Shader.TileMode b(int i) {
        if (i == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    public final void a() {
        Drawable drawable = this.h;
        if (drawable == null || !this.g) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.h = drawableMutate;
        if (this.i) {
            drawableMutate.setColorFilter(this.f);
        }
    }

    public final Drawable c() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i = this.m;
        if (i != 0) {
            try {
                drawable = resources.getDrawable(i);
            } catch (Exception e) {
                Log.w(TAG, "Unable to find resource: " + this.m, e);
                this.m = 0;
            }
        }
        return fw8.e(drawable);
    }

    public final Drawable d() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i = this.l;
        if (i != 0) {
            try {
                drawable = resources.getDrawable(i);
            } catch (Exception e) {
                Log.w(TAG, "Unable to find resource: " + this.l, e);
                this.l = 0;
            }
        }
        return fw8.e(drawable);
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public final void e(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof fw8) {
            fw8 fw8Var = (fw8) drawable;
            fw8Var.l(scaleType).i(this.e).h(this.d).k(this.j).m(this.o).n(this.p);
            float[] fArr = this.b;
            if (fArr != null) {
                fw8Var.j(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            a();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                e(layerDrawable.getDrawable(i), scaleType);
            }
        }
    }

    public final void f(boolean z) {
        if (this.k) {
            if (z) {
                this.c = fw8.e(this.c);
            }
            e(this.c, ImageView.ScaleType.FIT_XY);
        }
    }

    public final void g() {
        e(this.h, this.n);
    }

    @ColorInt
    public int getBorderColor() {
        return this.d.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.d;
    }

    public float getBorderWidth() {
        return this.e;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float fMax = 0.0f;
        for (float f : this.b) {
            fMax = Math.max(f, fMax);
        }
        return fMax;
    }

    @Override
    public ImageView.ScaleType getScaleType() {
        return this.n;
    }

    public Shader.TileMode getTileModeX() {
        return this.o;
    }

    public Shader.TileMode getTileModeY() {
        return this.p;
    }

    public boolean isOval() {
        return this.j;
    }

    public void mutateBackground(boolean z) {
        if (this.k == z) {
            return;
        }
        this.k = z;
        f(true);
        invalidate();
    }

    public boolean mutatesBackground() {
        return this.k;
    }

    @Override
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundColor(int i) {
        ColorDrawable colorDrawable = new ColorDrawable(i);
        this.c = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.c = drawable;
        f(true);
        super.setBackgroundDrawable(this.c);
    }

    @Override
    public void setBackgroundResource(@DrawableRes int i) {
        if (this.m != i) {
            this.m = i;
            Drawable drawableC = c();
            this.c = drawableC;
            setBackgroundDrawable(drawableC);
        }
    }

    public void setBorderColor(@ColorInt int i) {
        setBorderColor(ColorStateList.valueOf(i));
    }

    public void setBorderWidth(@DimenRes int i) {
        setBorderWidth(getResources().getDimension(i));
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f != colorFilter) {
            this.f = colorFilter;
            this.i = true;
            this.g = true;
            a();
            invalidate();
        }
    }

    public void setCornerRadius(float f) {
        setCornerRadius(f, f, f, f);
    }

    public void setCornerRadiusDimen(@DimenRes int i) {
        float dimension = getResources().getDimension(i);
        setCornerRadius(dimension, dimension, dimension, dimension);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.l = 0;
        this.h = fw8.d(bitmap);
        g();
        super.setImageDrawable(this.h);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        this.l = 0;
        this.h = fw8.e(drawable);
        g();
        super.setImageDrawable(this.h);
    }

    @Override
    public void setImageResource(@DrawableRes int i) {
        if (this.l != i) {
            this.l = i;
            this.h = d();
            g();
            super.setImageDrawable(this.h);
        }
    }

    @Override
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z) {
        this.j = z;
        g();
        f(false);
        invalidate();
    }

    @Override
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.n != scaleType) {
            this.n = scaleType;
            switch (a.a[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            g();
            f(false);
            invalidate();
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.o == tileMode) {
            return;
        }
        this.o = tileMode;
        g();
        f(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.p == tileMode) {
            return;
        }
        this.p = tileMode;
        g();
        f(false);
        invalidate();
    }

    public float getCornerRadius(int i) {
        return this.b[i];
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.d.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.d = colorStateList;
        g();
        f(false);
        if (this.e > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f) {
        if (this.e == f) {
            return;
        }
        this.e = f;
        g();
        f(false);
        invalidate();
    }

    public void setCornerRadius(int i, float f) {
        float[] fArr = this.b;
        if (fArr[i] == f) {
            return;
        }
        fArr[i] = f;
        g();
        f(false);
        invalidate();
    }

    public void setCornerRadiusDimen(int i, @DimenRes int i2) {
        setCornerRadius(i, getResources().getDimensionPixelSize(i2));
    }

    public void setCornerRadius(float f, float f2, float f3, float f4) {
        float[] fArr = this.b;
        if (fArr[0] == f && fArr[1] == f2 && fArr[2] == f4 && fArr[3] == f3) {
            return;
        }
        fArr[0] = f;
        fArr[1] = f2;
        fArr[3] = f3;
        fArr[2] = f4;
        g();
        f(false);
        invalidate();
    }

    public RoundedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        this.b = fArr;
        this.d = ColorStateList.valueOf(-16777216);
        this.e = 0.0f;
        this.f = null;
        this.g = false;
        this.i = false;
        this.j = false;
        this.k = false;
        Shader.TileMode tileMode = DEFAULT_TILE_MODE;
        this.o = tileMode;
        this.p = tileMode;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundedImageView, i, 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.RoundedImageView_android_scaleType, -1);
        if (i2 >= 0) {
            setScaleType(q[i2]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundedImageView_riv_corner_radius, -1);
        fArr[0] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundedImageView_riv_corner_radius_top_left, -1);
        fArr[1] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundedImageView_riv_corner_radius_top_right, -1);
        fArr[2] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundedImageView_riv_corner_radius_bottom_right, -1);
        fArr[3] = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundedImageView_riv_corner_radius_bottom_left, -1);
        int length = fArr.length;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            float[] fArr2 = this.b;
            if (fArr2[i3] < 0.0f) {
                fArr2[i3] = 0.0f;
            } else {
                z = true;
            }
        }
        if (!z) {
            dimensionPixelSize = dimensionPixelSize < 0.0f ? 0.0f : dimensionPixelSize;
            int length2 = this.b.length;
            for (int i4 = 0; i4 < length2; i4++) {
                this.b[i4] = dimensionPixelSize;
            }
        }
        float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RoundedImageView_riv_border_width, -1);
        this.e = dimensionPixelSize2;
        if (dimensionPixelSize2 < 0.0f) {
            this.e = 0.0f;
        }
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.RoundedImageView_riv_border_color);
        this.d = colorStateList;
        if (colorStateList == null) {
            this.d = ColorStateList.valueOf(-16777216);
        }
        this.k = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RoundedImageView_riv_mutate_background, false);
        this.j = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RoundedImageView_riv_oval, false);
        int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.RoundedImageView_riv_tile_mode, -2);
        if (i5 != -2) {
            setTileModeX(b(i5));
            setTileModeY(b(i5));
        }
        int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.RoundedImageView_riv_tile_mode_x, -2);
        if (i6 != -2) {
            setTileModeX(b(i6));
        }
        int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.RoundedImageView_riv_tile_mode_y, -2);
        if (i7 != -2) {
            setTileModeY(b(i7));
        }
        g();
        f(true);
        if (this.k) {
            super.setBackgroundDrawable(this.c);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}

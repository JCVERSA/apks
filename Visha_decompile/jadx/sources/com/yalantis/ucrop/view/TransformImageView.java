package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.cf0;
import defpackage.ef0;
import defpackage.ep3;
import defpackage.nf3;
import defpackage.zo8;

public class TransformImageView extends AppCompatImageView {
    public final float[] b;
    public final float[] c;
    public final float[] d;
    public Matrix e;
    public int f;
    public int g;
    public b h;
    public float[] i;
    public float[] j;
    public boolean k;
    public boolean l;
    public int m;
    public String n;
    public String o;
    public nf3 p;

    public class a implements cf0 {
        public a() {
        }

        @Override
        public void a(Exception exc) {
            Log.e("TransformImageView", "onFailure: setImageUri", exc);
            b bVar = TransformImageView.this.h;
            if (bVar != null) {
                bVar.b(exc);
            }
        }

        @Override
        public void b(Bitmap bitmap, nf3 nf3Var, String str, String str2) {
            TransformImageView.this.n = str;
            TransformImageView.this.o = str2;
            TransformImageView.this.p = nf3Var;
            TransformImageView transformImageView = TransformImageView.this;
            transformImageView.k = true;
            transformImageView.setImageBitmap(bitmap);
        }
    }

    public interface b {
        void a();

        void b(Exception exc);

        void c(float f);

        void d(float f);
    }

    public TransformImageView(Context context) {
        this(context, null);
    }

    public float d(Matrix matrix, int i) {
        matrix.getValues(this.d);
        return this.d[i];
    }

    public void e() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        Log.d("TransformImageView", String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight)));
        RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        this.i = zo8.b(rectF);
        this.j = zo8.a(rectF);
        this.l = true;
        b bVar = this.h;
        if (bVar != null) {
            bVar.a();
        }
    }

    public final void f() {
        this.e.mapPoints(this.b, this.i);
        this.e.mapPoints(this.c, this.j);
    }

    public float getCurrentAngle() {
        return getMatrixAngle(this.e);
    }

    public float getCurrentScale() {
        return getMatrixScale(this.e);
    }

    public nf3 getExifInfo() {
        return this.p;
    }

    public String getImageInputPath() {
        return this.n;
    }

    public String getImageOutputPath() {
        return this.o;
    }

    public float getMatrixAngle(@NonNull Matrix matrix) {
        return (float) (-(Math.atan2(d(matrix, 1), d(matrix, 0)) * 57.29577951308232d));
    }

    public float getMatrixScale(@NonNull Matrix matrix) {
        return (float) Math.sqrt(Math.pow(d(matrix, 0), 2.0d) + Math.pow(d(matrix, 3), 2.0d));
    }

    public int getMaxBitmapSize() {
        if (this.m <= 0) {
            this.m = ef0.b(getContext());
        }
        return this.m;
    }

    @Nullable
    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof ep3)) {
            return null;
        }
        return ((ep3) getDrawable()).a();
    }

    public void init() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z || (this.k && !this.l)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f = width - paddingLeft;
            this.g = height - paddingTop;
            e();
        }
    }

    public void postRotate(float f, float f2, float f3) {
        if (f != 0.0f) {
            this.e.postRotate(f, f2, f3);
            setImageMatrix(this.e);
            b bVar = this.h;
            if (bVar != null) {
                bVar.d(getMatrixAngle(this.e));
            }
        }
    }

    public void postScale(float f, float f2, float f3) {
        if (f != 0.0f) {
            this.e.postScale(f, f, f2, f3);
            setImageMatrix(this.e);
            b bVar = this.h;
            if (bVar != null) {
                bVar.c(getMatrixScale(this.e));
            }
        }
    }

    public void postTranslate(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        this.e.postTranslate(f, f2);
        setImageMatrix(this.e);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new ep3(bitmap));
    }

    @Override
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.e.set(matrix);
        f();
    }

    public void setImageUri(@NonNull Uri uri, @Nullable Uri uri2) throws Exception {
        int maxBitmapSize = getMaxBitmapSize();
        ef0.d(getContext(), uri, uri2, maxBitmapSize, maxBitmapSize, new a());
    }

    public void setMaxBitmapSize(int i) {
        this.m = i;
    }

    @Override
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w("TransformImageView", "Invalid ScaleType. Only ScaleType.MATRIX can be used");
        }
    }

    public void setTransformImageListener(b bVar) {
        this.h = bVar;
    }

    public TransformImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TransformImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new float[8];
        this.c = new float[2];
        this.d = new float[9];
        this.e = new Matrix();
        this.k = false;
        this.l = false;
        this.m = 0;
        init();
    }
}

package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.LongClickListener;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.task.BitmapCropTask;
import defpackage.dy4;
import defpackage.hm1;
import defpackage.pl1;
import defpackage.ql1;
import defpackage.ye0;
import defpackage.zo8;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public class CropImageView extends TransformImageView {
    public static final float DEFAULT_ASPECT_RATIO = 0.0f;
    public static final int DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION = 500;
    public static final int DEFAULT_MAX_BITMAP_SIZE = 0;
    public static final float DEFAULT_MAX_SCALE_MULTIPLIER = 10.0f;
    public static final float SOURCE_IMAGE_ASPECT_RATIO = 0.0f;
    public int A;
    public long B;
    public final RectF q;
    public final Matrix r;
    public float s;
    public float t;
    public pl1 u;
    public Runnable v;
    public Runnable w;
    public float x;
    public float y;
    public int z;

    public static class WrapCropBoundsRunnable implements Runnable {
        private final float mCenterDiffX;
        private final float mCenterDiffY;
        private final WeakReference<CropImageView> mCropImageView;
        private final float mDeltaScale;
        private final long mDurationMs;
        private final float mOldScale;
        private final float mOldX;
        private final float mOldY;
        private final long mStartTime = System.currentTimeMillis();
        private final boolean mWillBeImageInBoundsAfterTranslate;

        public WrapCropBoundsRunnable(CropImageView cropImageView, long j, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
            this.mCropImageView = new WeakReference<>(cropImageView);
            this.mDurationMs = j;
            this.mOldX = f;
            this.mOldY = f2;
            this.mCenterDiffX = f3;
            this.mCenterDiffY = f4;
            this.mOldScale = f5;
            this.mDeltaScale = f6;
            this.mWillBeImageInBoundsAfterTranslate = z;
        }

        @Override
        public void run() {
            CropImageView cropImageView = this.mCropImageView.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.mDurationMs, System.currentTimeMillis() - this.mStartTime);
            float fB = hm1.b(fMin, 0.0f, this.mCenterDiffX, this.mDurationMs);
            float fB2 = hm1.b(fMin, 0.0f, this.mCenterDiffY, this.mDurationMs);
            float fA = hm1.a(fMin, 0.0f, this.mDeltaScale, this.mDurationMs);
            if (fMin < this.mDurationMs) {
                float[] fArr = cropImageView.c;
                cropImageView.postTranslate(fB - (fArr[0] - this.mOldX), fB2 - (fArr[1] - this.mOldY));
                if (!this.mWillBeImageInBoundsAfterTranslate) {
                    cropImageView.zoomInImage(this.mOldScale + fA, cropImageView.q.centerX(), cropImageView.q.centerY());
                }
                if (cropImageView.k()) {
                    return;
                }
                cropImageView.post(this);
            }
        }
    }

    public static class ZoomImageToPosition implements Runnable {
        private final WeakReference<CropImageView> mCropImageView;
        private final float mDeltaScale;
        private final float mDestX;
        private final float mDestY;
        private final long mDurationMs;
        private final float mOldScale;
        private final long mStartTime = System.currentTimeMillis();

        public ZoomImageToPosition(CropImageView cropImageView, long j, float f, float f2, float f3, float f4) {
            this.mCropImageView = new WeakReference<>(cropImageView);
            this.mDurationMs = j;
            this.mOldScale = f;
            this.mDeltaScale = f2;
            this.mDestX = f3;
            this.mDestY = f4;
        }

        @Override
        public void run() {
            CropImageView cropImageView = this.mCropImageView.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.mDurationMs, System.currentTimeMillis() - this.mStartTime);
            float fA = hm1.a(fMin, 0.0f, this.mDeltaScale, this.mDurationMs);
            if (fMin >= this.mDurationMs) {
                cropImageView.setImageToWrapCropBounds();
            } else {
                cropImageView.zoomInImage(this.mOldScale + fA, this.mDestX, this.mDestY);
                cropImageView.post(this);
            }
        }
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    public void cancelAllAnimations() {
        removeCallbacks(this.v);
        removeCallbacks(this.w);
    }

    public void cropAndSaveImage(@NonNull Bitmap.CompressFormat compressFormat, int i, @Nullable ye0 ye0Var) {
        cancelAllAnimations();
        setImageToWrapCropBounds(false);
        new BitmapCropTask(getViewBitmap(), new dy4(this.q, zo8.d(this.b), getCurrentScale(), getCurrentAngle()), new ql1(this.z, this.A, compressFormat, i, getImageInputPath(), getImageOutputPath(), getExifInfo()), ye0Var).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override
    public void e() {
        super.e();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.s == 0.0f) {
            this.s = intrinsicWidth / intrinsicHeight;
        }
        int i = this.f;
        float f = this.s;
        int i2 = (int) (i / f);
        int i3 = this.g;
        if (i2 > i3) {
            int i4 = (int) (i3 * f);
            int i5 = (i - i4) / 2;
            this.q.set(i5, 0.0f, i4 + i5, i3);
        } else {
            int i6 = (i3 - i2) / 2;
            this.q.set(0.0f, i6, i, i2 + i6);
        }
        j(intrinsicWidth, intrinsicHeight);
        n(intrinsicWidth, intrinsicHeight);
        pl1 pl1Var = this.u;
        if (pl1Var != null) {
            pl1Var.a(this.s);
        }
        TransformImageView.b bVar = this.h;
        if (bVar != null) {
            bVar.c(getCurrentScale());
            this.h.d(getCurrentAngle());
        }
    }

    @Nullable
    public pl1 getCropBoundsChangeListener() {
        return this.u;
    }

    public float getMaxScale() {
        return this.x;
    }

    public float getMinScale() {
        return this.y;
    }

    public float getTargetAspectRatio() {
        return this.s;
    }

    public final float[] h() {
        this.r.reset();
        this.r.setRotate(-getCurrentAngle());
        float[] fArr = this.b;
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        float[] fArrB = zo8.b(this.q);
        this.r.mapPoints(fArrCopyOf);
        this.r.mapPoints(fArrB);
        RectF rectFD = zo8.d(fArrCopyOf);
        RectF rectFD2 = zo8.d(fArrB);
        float f = rectFD.left - rectFD2.left;
        float f2 = rectFD.top - rectFD2.top;
        float f3 = rectFD.right - rectFD2.right;
        float f4 = rectFD.bottom - rectFD2.bottom;
        if (f <= 0.0f) {
            f = 0.0f;
        }
        if (f2 <= 0.0f) {
            f2 = 0.0f;
        }
        if (f3 >= 0.0f) {
            f3 = 0.0f;
        }
        if (f4 >= 0.0f) {
            f4 = 0.0f;
        }
        float[] fArr2 = {f, f2, f3, f4};
        this.r.reset();
        this.r.setRotate(getCurrentAngle());
        this.r.mapPoints(fArr2);
        return fArr2;
    }

    public final void i() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        j(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    public final void j(float f, float f2) {
        float fMin = Math.min(Math.min(this.q.width() / f, this.q.width() / f2), Math.min(this.q.height() / f2, this.q.height() / f));
        this.y = fMin;
        this.x = fMin * this.t;
    }

    public boolean k() {
        return l(this.b);
    }

    public boolean l(float[] fArr) {
        this.r.reset();
        this.r.setRotate(-getCurrentAngle());
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        this.r.mapPoints(fArrCopyOf);
        float[] fArrB = zo8.b(this.q);
        this.r.mapPoints(fArrB);
        return zo8.d(fArrCopyOf).contains(zo8.d(fArrB));
    }

    public void m(TypedArray typedArray) {
        float fAbs = Math.abs(typedArray.getFloat(R.styleable.ucrop_UCropView_ucrop_aspect_ratio_x, 0.0f));
        float fAbs2 = Math.abs(typedArray.getFloat(R.styleable.ucrop_UCropView_ucrop_aspect_ratio_y, 0.0f));
        if (fAbs == 0.0f || fAbs2 == 0.0f) {
            this.s = 0.0f;
        } else {
            this.s = fAbs / fAbs2;
        }
    }

    public final void n(float f, float f2) {
        float fWidth = this.q.width();
        float fHeight = this.q.height();
        this.q.width();
        this.q.height();
        float minScale = getMinScale();
        RectF rectF = this.q;
        float f3 = ((fWidth - (f * minScale)) / 2.0f) + rectF.left;
        float f4 = ((fHeight - (f2 * minScale)) / 2.0f) + rectF.top;
        this.e.reset();
        this.e.postScale(minScale, minScale);
        this.e.postTranslate(f3, f4);
        setImageMatrix(this.e);
    }

    public void o(float f, float f2, float f3, long j) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        float currentScale = getCurrentScale();
        ZoomImageToPosition zoomImageToPosition = new ZoomImageToPosition(this, j, currentScale, f - currentScale, f2, f3);
        this.w = zoomImageToPosition;
        post(zoomImageToPosition);
    }

    public void postRotate(float f) {
        postRotate(f, this.q.centerX(), this.q.centerY());
    }

    @Override
    public void postScale(float f, float f2, float f3) {
        if (f > 1.0f && getCurrentScale() * f <= getMaxScale()) {
            super.postScale(f, f2, f3);
        } else {
            if (f >= 1.0f || getCurrentScale() * f < getMinScale()) {
                return;
            }
            super.postScale(f, f2, f3);
        }
    }

    public void setCropBoundsChangeListener(@Nullable pl1 pl1Var) {
        this.u = pl1Var;
    }

    public void setCropRect(RectF rectF) {
        this.s = rectF.width() / rectF.height();
        this.q.set(rectF.left - getPaddingLeft(), rectF.top - getPaddingTop(), rectF.right - getPaddingRight(), rectF.bottom - getPaddingBottom());
        i();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            n(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        setImageToWrapCropBounds();
    }

    public void setImageToWrapCropBounds() {
        setImageToWrapCropBounds(true);
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange(from = LongClickListener.CALLBACK_INTERVAL) long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Animation duration cannot be negative value.");
        }
        this.B = j;
    }

    public void setMaxResultImageSizeX(@IntRange(from = 10) int i) {
        this.z = i;
    }

    public void setMaxResultImageSizeY(@IntRange(from = 10) int i) {
        this.A = i;
    }

    public void setMaxScaleMultiplier(float f) {
        this.t = f;
    }

    public void setTargetAspectRatio(float f) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            this.s = f;
            return;
        }
        if (f == 0.0f) {
            this.s = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        } else {
            this.s = f;
        }
        pl1 pl1Var = this.u;
        if (pl1Var != null) {
            pl1Var.a(this.s);
        }
    }

    public void zoomInImage(float f) {
        zoomInImage(f, this.q.centerX(), this.q.centerY());
    }

    public void zoomOutImage(float f) {
        zoomOutImage(f, this.q.centerX(), this.q.centerY());
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setImageToWrapCropBounds(boolean z) {
        float f;
        float fMax;
        float f2;
        if (!this.l || k()) {
            return;
        }
        float[] fArr = this.c;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float currentScale = getCurrentScale();
        float fCenterX = this.q.centerX() - f3;
        float fCenterY = this.q.centerY() - f4;
        this.r.reset();
        this.r.setTranslate(fCenterX, fCenterY);
        float[] fArr2 = this.b;
        float[] fArrCopyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.r.mapPoints(fArrCopyOf);
        boolean zL = l(fArrCopyOf);
        if (zL) {
            float[] fArrH = h();
            float f5 = -(fArrH[0] + fArrH[2]);
            f2 = -(fArrH[1] + fArrH[3]);
            f = f5;
            fMax = 0.0f;
        } else {
            RectF rectF = new RectF(this.q);
            this.r.reset();
            this.r.setRotate(getCurrentAngle());
            this.r.mapRect(rectF);
            float[] fArrC = zo8.c(this.b);
            f = fCenterX;
            fMax = (Math.max(rectF.width() / fArrC[0], rectF.height() / fArrC[1]) * currentScale) - currentScale;
            f2 = fCenterY;
        }
        if (z) {
            WrapCropBoundsRunnable wrapCropBoundsRunnable = new WrapCropBoundsRunnable(this, this.B, f3, f4, f, f2, currentScale, fMax, zL);
            this.v = wrapCropBoundsRunnable;
            post(wrapCropBoundsRunnable);
        } else {
            postTranslate(f, f2);
            if (zL) {
                return;
            }
            zoomInImage(currentScale + fMax, this.q.centerX(), this.q.centerY());
        }
    }

    public void zoomInImage(float f, float f2, float f3) {
        if (f <= getMaxScale()) {
            postScale(f / getCurrentScale(), f2, f3);
        }
    }

    public void zoomOutImage(float f, float f2, float f3) {
        if (f >= getMinScale()) {
            postScale(f / getCurrentScale(), f2, f3);
        }
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = new RectF();
        this.r = new Matrix();
        this.t = 10.0f;
        this.w = null;
        this.z = 0;
        this.A = 0;
        this.B = 500L;
    }
}

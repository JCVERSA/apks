package com.transsion.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;

public class PhotoView extends AppCompatImageView {

    private PhotoViewAttachment f45971d;

    private ImageView.ScaleType f45972e;

    public PhotoView(Context context) {
        this(context, null);
    }

    private void a() {
        this.f45971d = new PhotoViewAttachment(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f45972e;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f45972e = null;
        }
    }

    public PhotoViewAttachment getAttachment() {
        return this.f45971d;
    }

    public void getDisplayMatrix(Matrix matrix) {
        this.f45971d.C(matrix);
    }

    public RectF getDisplayRect() {
        return this.f45971d.D();
    }

    @Override
    public Matrix getImageMatrix() {
        return this.f45971d.G();
    }

    public float getMaximumScale() {
        return this.f45971d.J();
    }

    public float getMediumScale() {
        return this.f45971d.K();
    }

    public float getMinimumScale() {
        return this.f45971d.L();
    }

    public float getScale() {
        return this.f45971d.M();
    }

    @Override
    public ImageView.ScaleType getScaleType() {
        return this.f45971d.N();
    }

    public void getSuppMatrix(Matrix matrix) {
        this.f45971d.O(matrix);
    }

    public boolean isZoomable() {
        return this.f45971d.R();
    }

    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f45971d.T(z10);
    }

    public boolean setDisplayMatrix(Matrix matrix) {
        return this.f45971d.U(matrix);
    }

    @Override
    protected boolean setFrame(int i10, int i11, int i12, int i13) {
        boolean frame = super.setFrame(i10, i11, i12, i13);
        if (frame) {
            this.f45971d.t0();
        }
        return frame;
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        PhotoViewAttachment photoViewAttachment = this.f45971d;
        if (photoViewAttachment != null) {
            photoViewAttachment.t0();
        }
    }

    @Override
    public void setImageResource(int i10) {
        super.setImageResource(i10);
        PhotoViewAttachment photoViewAttachment = this.f45971d;
        if (photoViewAttachment != null) {
            photoViewAttachment.t0();
        }
    }

    @Override
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        PhotoViewAttachment photoViewAttachment = this.f45971d;
        if (photoViewAttachment != null) {
            photoViewAttachment.t0();
        }
    }

    public void setMaximumScale(float f10) {
        this.f45971d.W(f10);
    }

    public void setMediumScale(float f10) {
        this.f45971d.X(f10);
    }

    public void setMinimumScale(float f10) {
        this.f45971d.Y(f10);
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f45971d.Z(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f45971d.a0(onDoubleTapListener);
    }

    @Override
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f45971d.b0(onLongClickListener);
    }

    public void setOnMatrixChangeListener(d dVar) {
        this.f45971d.c0(dVar);
    }

    public void setOnOutsidePhotoTapListener(e eVar) {
        this.f45971d.d0(eVar);
    }

    public void setOnPhotoTapListener(f fVar) {
        this.f45971d.e0(fVar);
    }

    public void setOnScaleChangeListener(g gVar) {
        this.f45971d.f0(gVar);
    }

    public void setOnSingleFlingListener(h hVar) {
        this.f45971d.g0(hVar);
    }

    public void setOnViewDragListener(j jVar) {
        this.f45971d.h0(jVar);
    }

    public void setOnViewTapListener(k kVar) {
        this.f45971d.i0(kVar);
    }

    public void setRotationBy(float f10) {
        this.f45971d.j0(f10);
    }

    public void setRotationTo(float f10) {
        this.f45971d.k0(f10);
    }

    public void setScale(float f10) {
        this.f45971d.l0(f10);
    }

    public void setScaleLevels(float f10, float f11, float f12) {
        this.f45971d.o0(f10, f11, f12);
    }

    @Override
    public void setScaleType(ImageView.ScaleType scaleType) {
        PhotoViewAttachment photoViewAttachment = this.f45971d;
        if (photoViewAttachment == null) {
            this.f45972e = scaleType;
        } else {
            photoViewAttachment.p0(scaleType);
        }
    }

    public void setSlideUpAndDownListener(i iVar) {
        this.f45971d.q0(iVar);
    }

    public boolean setSuppMatrix(Matrix matrix) {
        return this.f45971d.U(matrix);
    }

    public void setZoomTransitionDuration(int i10) {
        this.f45971d.r0(i10);
    }

    public void setZoomable(boolean z10) {
        this.f45971d.s0(z10);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setScale(float f10, boolean z10) {
        this.f45971d.n0(f10, z10);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }

    public void setScale(float f10, float f11, float f12, boolean z10) {
        this.f45971d.m0(f10, f11, f12, z10);
    }
}

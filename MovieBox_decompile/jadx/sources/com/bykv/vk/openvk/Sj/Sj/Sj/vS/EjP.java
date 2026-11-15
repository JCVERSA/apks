package com.bykv.vk.openvk.Sj.Sj.Sj.vS;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;

public class EjP extends TextureView implements TextureView.SurfaceTextureListener, a {

    private c6.a f19538a;

    public EjP(Context context) {
        this(context, null);
    }

    @Override
    public void Sj(c6.a aVar) {
        this.f19538a = aVar;
        setSurfaceTextureListener(this);
    }

    @Override
    public SurfaceHolder getHolder() {
        return null;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable unused) {
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        c6.a aVar = this.f19538a;
        if (aVar != null) {
            aVar.Sj(surfaceTexture, i10, i11);
        }
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        c6.a aVar = this.f19538a;
        if (aVar != null) {
            return aVar.Sj(surfaceTexture);
        }
        return false;
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public EjP(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void Sj(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void setWindowVisibilityChangedListener(a.InterfaceC0167a interfaceC0167a) {
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
    }
}

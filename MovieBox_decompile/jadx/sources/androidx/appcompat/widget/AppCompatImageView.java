package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.TintableBackgroundView;

public class AppCompatImageView extends ImageView implements TintableBackgroundView {
    private final c mBackgroundTintHelper;
    private boolean mHasLevel;
    private final j mImageHelper;

    public AppCompatImageView(@NonNull Context context) {
        this(context, null);
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.b();
        }
        j jVar = this.mImageHelper;
        if (jVar != null) {
            jVar.c();
        }
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportImageTintList() {
        j jVar = this.mImageHelper;
        if (jVar != null) {
            return jVar.d();
        }
        return null;
    }

    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        j jVar = this.mImageHelper;
        if (jVar != null) {
            return jVar.e();
        }
        return null;
    }

    @Override
    public boolean hasOverlappingRendering() {
        return this.mImageHelper.f() && super.hasOverlappingRendering();
    }

    @Override
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.g(i10);
        }
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        j jVar = this.mImageHelper;
        if (jVar != null) {
            jVar.c();
        }
    }

    @Override
    public void setImageDrawable(@Nullable Drawable drawable) {
        j jVar = this.mImageHelper;
        if (jVar != null && drawable != null && !this.mHasLevel) {
            jVar.h(drawable);
        }
        super.setImageDrawable(drawable);
        j jVar2 = this.mImageHelper;
        if (jVar2 != null) {
            jVar2.c();
            if (this.mHasLevel) {
                return;
            }
            this.mImageHelper.b();
        }
    }

    @Override
    public void setImageLevel(int i10) {
        super.setImageLevel(i10);
        this.mHasLevel = true;
    }

    @Override
    public void setImageResource(int i10) {
        j jVar = this.mImageHelper;
        if (jVar != null) {
            jVar.i(i10);
        }
    }

    @Override
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        j jVar = this.mImageHelper;
        if (jVar != null) {
            jVar.c();
        }
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.mBackgroundTintHelper;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        j jVar = this.mImageHelper;
        if (jVar != null) {
            jVar.j(colorStateList);
        }
    }

    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        j jVar = this.mImageHelper;
        if (jVar != null) {
            jVar.k(mode);
        }
    }

    public AppCompatImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(g0.b(context), attributeSet, i10);
        this.mHasLevel = false;
        f0.a(this, getContext());
        c cVar = new c(this);
        this.mBackgroundTintHelper = cVar;
        cVar.e(attributeSet, i10);
        j jVar = new j(this);
        this.mImageHelper = jVar;
        jVar.g(attributeSet, i10);
    }
}

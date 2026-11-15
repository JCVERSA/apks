package com.cloud.tmc.miniapp.widget.pulldownrefresh.internal;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO0;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0OO;

public abstract class OooO0OO<T extends OooO0OO> extends OooO0O0 {
    public OooO0o OooO;
    public TextView OooO0Oo;
    public ImageView OooO0o;
    public ImageView OooO0o0;
    public OooOOO0 OooO0oO;
    public OooO0o OooO0oo;
    public boolean OooOO0;
    public boolean OooOO0O;
    public int OooOO0o;
    public int OooOOO;
    public int OooOOO0;
    public int OooOOOO;
    public int OooOOOo;

    public OooO0OO(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.OooOOO0 = 500;
        this.OooOOO = 20;
        this.OooOOOO = 20;
        this.OooOOOo = 0;
        this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo;
    }

    @Override
    public void OooO00o(@NonNull OooOOO0 oooOOO0, int i10, int i11) {
        this.OooO0oO = oooOOO0;
        ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO0).OooO00o(this, this.OooOO0o);
    }

    @Override
    public void OooO0O0(@NonNull OooOOO oooOOO, int i10, int i11) {
        ImageView imageView = this.OooO0o;
        if (imageView.getVisibility() != 0) {
            imageView.setVisibility(0);
            Object drawable = this.OooO0o.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).start();
            } else {
                imageView.animate().rotation(36000.0f).setDuration(100000L);
            }
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageView imageView = this.OooO0o0;
        ImageView imageView2 = this.OooO0o;
        imageView.animate().cancel();
        imageView2.animate().cancel();
        Object drawable = this.OooO0o.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        if (this.OooOOOo == 0) {
            this.OooOOO = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            this.OooOOOO = paddingBottom;
            if (this.OooOOO == 0 || paddingBottom == 0) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int iOooO00o = this.OooOOO;
                if (iOooO00o == 0) {
                    iOooO00o = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(20.0f);
                }
                this.OooOOO = iOooO00o;
                int iOooO00o2 = this.OooOOOO;
                if (iOooO00o2 == 0) {
                    iOooO00o2 = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(20.0f);
                }
                this.OooOOOO = iOooO00o2;
                setPadding(paddingLeft, this.OooOOO, paddingRight, iOooO00o2);
            }
            setClipToPadding(false);
        }
        if (View.MeasureSpec.getMode(i11) == 1073741824) {
            int size = View.MeasureSpec.getSize(i11);
            int i12 = this.OooOOOo;
            if (size < i12) {
                int i13 = (size - i12) / 2;
                setPadding(getPaddingLeft(), i13, getPaddingRight(), i13);
            } else {
                setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
            }
        } else {
            setPadding(getPaddingLeft(), this.OooOOO, getPaddingRight(), this.OooOOOO);
        }
        super.onMeasure(i10, i11);
        if (this.OooOOOo == 0) {
            for (int i14 = 0; i14 < getChildCount(); i14++) {
                int measuredHeight = getChildAt(i14).getMeasuredHeight();
                if (this.OooOOOo < measuredHeight) {
                    this.OooOOOo = measuredHeight;
                }
            }
        }
    }

    @Override
    public void setPrimaryColors(int... iArr) {
        if (iArr.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable) && !this.OooOO0O) {
                OooO0O0(iArr[0]);
                this.OooOO0O = false;
            }
            if (this.OooOO0) {
                return;
            }
            if (iArr.length > 1) {
                OooO00o(iArr[1]);
            } else {
                OooO00o(iArr[0] == -1 ? -10066330 : -1);
            }
            this.OooOO0 = false;
        }
    }

    @Override
    public void OooO00o(@NonNull OooOOO oooOOO, int i10, int i11) {
        OooO0O0(oooOOO, i10, i11);
    }

    @Override
    public int OooO00o(@NonNull OooOOO oooOOO, boolean z10) {
        ImageView imageView = this.OooO0o;
        Object drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        } else {
            imageView.animate().rotation(0.0f).setDuration(0L);
        }
        imageView.setVisibility(8);
        return this.OooOOO0;
    }

    public T OooO0O0(int i10) {
        this.OooOO0O = true;
        this.OooOO0o = i10;
        OooOOO0 oooOOO0 = this.OooO0oO;
        if (oooOOO0 != null) {
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooOOO0).OooO00o(this, i10);
        }
        return this;
    }

    public T OooO00o(int i10) {
        this.OooOO0 = true;
        this.OooO0Oo.setTextColor(i10);
        OooO0o oooO0o = this.OooO0oo;
        if (oooO0o != null) {
            oooO0o.OooO00o.setColor(i10);
            this.OooO0o0.invalidateDrawable(this.OooO0oo);
        }
        OooO0o oooO0o2 = this.OooO;
        if (oooO0o2 != null) {
            oooO0o2.OooO00o.setColor(i10);
            this.OooO0o.invalidateDrawable(this.OooO);
        }
        return this;
    }
}

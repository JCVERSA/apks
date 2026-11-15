package com.bytedance.sdk.openadsdk.component.reward.top;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Zq;

public class TKC extends View implements Sj<TKC> {
    private Sj<TKC> Sj;

    public TKC(Context context) {
        this(context, null);
    }

    public TKC Sj(@NonNull sU sUVar) {
        if (this.Sj != null) {
            return this;
        }
        TopLayoutDislike2 topLayoutDislike2M205load = new TopLayoutDislike2(getContext()).load(sUVar);
        this.Sj = topLayoutDislike2M205load;
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            Sj(topLayoutDislike2M205load, (ViewGroup) parent);
        }
        return this;
    }

    @Override
    public void clickSkip() {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.clickSkip();
        }
    }

    @Override
    public void clickSound(String str) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.clickSound(str);
        }
    }

    @Override
    public View getCloseButton() {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            return sj2.getCloseButton();
        }
        return null;
    }

    public View getITopLayout() {
        Object obj = this.Sj;
        if (obj instanceof View) {
            return (View) obj;
        }
        return null;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    @Override
    public void setListener(sP sPVar) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setListener(sPVar);
        }
    }

    @Override
    public void setShowDislike(boolean z10) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setShowDislike(z10);
        }
    }

    @Override
    public void setShowSkip(boolean z10) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setShowSkip(z10);
        }
    }

    @Override
    public void setShowSound(boolean z10) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setShowSound(z10);
        }
    }

    @Override
    public void setSkipEnable(boolean z10) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setSkipEnable(z10);
        }
    }

    @Override
    public void setSkipInvisiable() {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setSkipInvisiable();
        }
    }

    @Override
    public void setSkipText(CharSequence charSequence) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setSkipText(charSequence);
        }
    }

    @Override
    public void setSoundMute(boolean z10) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setSoundMute(z10);
        }
    }

    @Override
    public void setTime(CharSequence charSequence, CharSequence charSequence2) {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.setTime(charSequence, charSequence2);
        }
    }

    @Override
    public void showCloseButton() {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.showCloseButton();
        }
    }

    @Override
    public void showCountDownText() {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.showCountDownText();
        }
    }

    @Override
    public void showSkipButton() {
        Sj<TKC> sj2 = this.Sj;
        if (sj2 != null) {
            sj2.showSkipButton();
        }
    }

    public TKC(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TKC(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setVisibility(8);
        setWillNotDraw(true);
    }

    private void Sj(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
        if (view != null) {
            view.setId(Zq.Snq);
        }
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }
}

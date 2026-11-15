package com.mgtv.ssp.viewcard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.util.a;
import com.mgtv.ssp.SspViewInterface;

public abstract class BaseView extends FrameLayout implements SspViewInterface {
    protected boolean A;
    protected boolean B;
    protected boolean C;
    protected View D;
    protected String E;
    protected boolean F;

    public BaseView(@NonNull Context context) {
        super(context);
        this.F = false;
    }

    public void a(int i, boolean z, boolean z2) {
        this.B = true;
    }

    public abstract void e();

    public String getContentId() {
        return this.E;
    }

    public abstract int getLayoutResId();

    public boolean getRealVisible() {
        return this.C;
    }

    public void setContentId(String str) {
        this.E = str;
    }

    public void setRealVisible(boolean z) {
        this.C = z;
    }

    public boolean v() {
        return this.B;
    }

    public View a(Context context) {
        if (this.D == null) {
            View viewInflate = LayoutInflater.from(context).inflate(getLayoutResId(), (ViewGroup) this, true);
            this.D = viewInflate;
            viewInflate.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View view) {
                }

                @Override
                public void onViewDetachedFromWindow(View view) {
                    BaseView.this.C = false;
                }
            });
            e();
        }
        return this.D;
    }

    public BaseView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = false;
    }

    public BaseView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.F = false;
        a.a(getContext());
    }
}

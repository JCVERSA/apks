package com.bytedance.sdk.openadsdk.core.HiB;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;

public class EjP extends ImageView {
    public EjP(Context context) {
        super(context);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(uA.Sj(this, layoutParams));
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
    }

    public EjP(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EjP(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

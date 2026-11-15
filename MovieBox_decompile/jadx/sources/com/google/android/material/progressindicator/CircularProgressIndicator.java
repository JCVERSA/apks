package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

public class CircularProgressIndicator extends BaseProgressIndicator<e> {
    public static final int DEF_STYLE_RES = R$style.Widget_MaterialComponents_CircularProgressIndicator;
    public static final int INDICATOR_DIRECTION_CLOCKWISE = 0;
    public static final int INDICATOR_DIRECTION_COUNTERCLOCKWISE = 1;

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void r() {
        c cVar = new c((e) this.f28577a);
        setIndeterminateDrawable(j.t(getContext(), (e) this.f28577a, cVar));
        setProgressDrawable(f.v(getContext(), (e) this.f28577a, cVar));
    }

    public int getIndicatorDirection() {
        return ((e) this.f28577a).f28622j;
    }

    public int getIndicatorInset() {
        return ((e) this.f28577a).f28621i;
    }

    public int getIndicatorSize() {
        return ((e) this.f28577a).f28620h;
    }

    @Override
    public e i(Context context, AttributeSet attributeSet) {
        return new e(context, attributeSet);
    }

    public void setIndicatorDirection(int i10) {
        ((e) this.f28577a).f28622j = i10;
        invalidate();
    }

    public void setIndicatorInset(int i10) {
        b bVar = this.f28577a;
        if (((e) bVar).f28621i != i10) {
            ((e) bVar).f28621i = i10;
            invalidate();
        }
    }

    public void setIndicatorSize(int i10) {
        int iMax = Math.max(i10, getTrackThickness() * 2);
        b bVar = this.f28577a;
        if (((e) bVar).f28620h != iMax) {
            ((e) bVar).f28620h = iMax;
            ((e) bVar).e();
            requestLayout();
            invalidate();
        }
    }

    @Override
    public void setTrackThickness(int i10) {
        super.setTrackThickness(i10);
        ((e) this.f28577a).e();
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, DEF_STYLE_RES);
        r();
    }
}

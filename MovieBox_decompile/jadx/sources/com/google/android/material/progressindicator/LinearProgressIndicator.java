package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

public class LinearProgressIndicator extends BaseProgressIndicator<n> {
    public static final int DEF_STYLE_RES = R$style.Widget_MaterialComponents_LinearProgressIndicator;
    public static final int INDETERMINATE_ANIMATION_TYPE_CONTIGUOUS = 0;
    public static final int INDETERMINATE_ANIMATION_TYPE_DISJOINT = 1;
    public static final int INDICATOR_DIRECTION_END_TO_START = 3;
    public static final int INDICATOR_DIRECTION_LEFT_TO_RIGHT = 0;
    public static final int INDICATOR_DIRECTION_RIGHT_TO_LEFT = 1;
    public static final int INDICATOR_DIRECTION_START_TO_END = 2;

    public LinearProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    private void r() {
        k kVar = new k((n) this.f28577a);
        setIndeterminateDrawable(j.u(getContext(), (n) this.f28577a, kVar));
        setProgressDrawable(f.w(getContext(), (n) this.f28577a, kVar));
    }

    public int getIndeterminateAnimationType() {
        return ((n) this.f28577a).f28682h;
    }

    public int getIndicatorDirection() {
        return ((n) this.f28577a).f28683i;
    }

    public int getTrackStopIndicatorSize() {
        return ((n) this.f28577a).f28685k;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        b bVar = this.f28577a;
        n nVar = (n) bVar;
        boolean z11 = true;
        if (((n) bVar).f28683i != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((n) this.f28577a).f28683i != 2) && (ViewCompat.getLayoutDirection(this) != 0 || ((n) this.f28577a).f28683i != 3))) {
            z11 = false;
        }
        nVar.f28684j = z11;
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        int paddingLeft = i10 - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i11 - (getPaddingTop() + getPaddingBottom());
        j indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        f progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    @Override
    public n i(Context context, AttributeSet attributeSet) {
        return new n(context, attributeSet);
    }

    public void setIndeterminateAnimationType(int i10) {
        if (((n) this.f28577a).f28682h == i10) {
            return;
        }
        if (p() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        b bVar = this.f28577a;
        ((n) bVar).f28682h = i10;
        ((n) bVar).e();
        if (i10 == 0) {
            getIndeterminateDrawable().y(new l((n) this.f28577a));
        } else {
            getIndeterminateDrawable().y(new m(getContext(), (n) this.f28577a));
        }
        invalidate();
    }

    @Override
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        ((n) this.f28577a).e();
    }

    public void setIndicatorDirection(int i10) {
        b bVar = this.f28577a;
        ((n) bVar).f28683i = i10;
        n nVar = (n) bVar;
        boolean z10 = true;
        if (i10 != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((n) this.f28577a).f28683i != 2) && (ViewCompat.getLayoutDirection(this) != 0 || i10 != 3))) {
            z10 = false;
        }
        nVar.f28684j = z10;
        invalidate();
    }

    @Override
    public void setProgressCompat(int i10, boolean z10) {
        b bVar = this.f28577a;
        if (bVar != null && ((n) bVar).f28682h == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i10, z10);
    }

    @Override
    public void setTrackCornerRadius(int i10) {
        super.setTrackCornerRadius(i10);
        ((n) this.f28577a).e();
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i10) {
        b bVar = this.f28577a;
        if (((n) bVar).f28685k != i10) {
            ((n) bVar).f28685k = Math.min(i10, ((n) bVar).f28593a);
            ((n) this.f28577a).e();
            invalidate();
        }
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, DEF_STYLE_RES);
        r();
    }
}

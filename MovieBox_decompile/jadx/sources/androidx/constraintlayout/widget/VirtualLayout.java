package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.i;

public abstract class VirtualLayout extends ConstraintHelper {

    private boolean f7425j;

    private boolean f7426k;

    public VirtualLayout(Context context) {
        super(context);
    }

    @Override
    protected void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f7425j = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f7426k = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f7425j || this.f7426k) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i10 = 0; i10 < this.f7344b; i10++) {
                    View viewById = constraintLayout.getViewById(this.f7343a[i10]);
                    if (viewById != null) {
                        if (this.f7425j) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.f7426k && elevation > 0.0f) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    public void onMeasure(i iVar, int i10, int i11) {
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        d();
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        d();
    }

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

public class MotionHelper extends ConstraintHelper implements MotionLayout.h {

    private boolean f6833j;

    private boolean f6834k;

    private float f6835l;

    protected View[] f6836m;

    public MotionHelper(Context context) {
        super(context);
        this.f6833j = false;
        this.f6834k = false;
    }

    public float getProgress() {
        return this.f6835l;
    }

    public boolean isDecorator() {
        return false;
    }

    public boolean isUseOnHide() {
        return this.f6834k;
    }

    public boolean isUsedOnShow() {
        return this.f6833j;
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionHelper);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionHelper_onShow) {
                    this.f6833j = typedArrayObtainStyledAttributes.getBoolean(index, this.f6833j);
                } else if (index == R$styleable.MotionHelper_onHide) {
                    this.f6834k = typedArrayObtainStyledAttributes.getBoolean(index, this.f6834k);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setProgress(View view, float f10) {
    }

    public void setProgress(float f10) {
        this.f6835l = f10;
        int i10 = 0;
        if (this.f7344b > 0) {
            this.f6836m = j((ConstraintLayout) getParent());
            while (i10 < this.f7344b) {
                setProgress(this.f6836m[i10], f10);
                i10++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i10 < childCount) {
            View childAt = viewGroup.getChildAt(i10);
            if (!(childAt instanceof MotionHelper)) {
                setProgress(childAt, f10);
            }
            i10++;
        }
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6833j = false;
        this.f6834k = false;
        k(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f6833j = false;
        this.f6834k = false;
        k(attributeSet);
    }

    public void onFinishedMotionScene(MotionLayout motionLayout) {
    }

    public void onPostDraw(Canvas canvas) {
    }

    public void onPreDraw(Canvas canvas) {
    }

    public void onPreSetup(MotionLayout motionLayout, HashMap<View, m> map) {
    }

    public void onTransitionCompleted(MotionLayout motionLayout, int i10) {
    }

    @Override
    public void onTransitionStarted(MotionLayout motionLayout, int i10, int i11) {
    }

    public void onTransitionChange(MotionLayout motionLayout, int i10, int i11, float f10) {
    }

    @Override
    public void onTransitionTrigger(MotionLayout motionLayout, int i10, boolean z10, float f10) {
    }
}

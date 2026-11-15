package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;

public class ReactiveGuide extends View implements d.a {

    private int f7421a;

    private boolean f7422b;

    private int f7423c;

    private boolean f7424d;

    public ReactiveGuide(Context context) {
        super(context);
        this.f7421a = -1;
        this.f7422b = false;
        this.f7423c = 0;
        this.f7424d = true;
        super.setVisibility(8);
        b(null);
    }

    private void a(int i10, int i11, MotionLayout motionLayout, int i12) {
        b constraintSet = motionLayout.getConstraintSet(i12);
        constraintSet.T(i11, i10);
        motionLayout.updateState(i12, constraintSet);
    }

    private void b(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.f7421a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7421a);
                } else if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.f7422b = typedArrayObtainStyledAttributes.getBoolean(index, this.f7422b);
                } else if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet) {
                    this.f7423c = typedArrayObtainStyledAttributes.getResourceId(index, this.f7423c);
                } else if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets) {
                    this.f7424d = typedArrayObtainStyledAttributes.getBoolean(index, this.f7424d);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.f7421a != -1) {
            ConstraintLayout.getSharedValues().a(this.f7421a, this);
        }
    }

    public int getApplyToConstraintSetId() {
        return this.f7423c;
    }

    public int getAttributeId() {
        return this.f7421a;
    }

    public boolean isAnimatingChange() {
        return this.f7422b;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void onNewValue(int i10, int i11, int i12) {
        setGuidelineBegin(i11);
        int id2 = getId();
        if (id2 > 0 && (getParent() instanceof MotionLayout)) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            int currentState = motionLayout.getCurrentState();
            int i13 = this.f7423c;
            if (i13 != 0) {
                currentState = i13;
            }
            int i14 = 0;
            if (!this.f7422b) {
                if (!this.f7424d) {
                    a(i11, id2, motionLayout, currentState);
                    return;
                }
                int[] constraintSetIds = motionLayout.getConstraintSetIds();
                while (i14 < constraintSetIds.length) {
                    a(i11, id2, motionLayout, constraintSetIds[i14]);
                    i14++;
                }
                return;
            }
            if (this.f7424d) {
                int[] constraintSetIds2 = motionLayout.getConstraintSetIds();
                while (i14 < constraintSetIds2.length) {
                    int i15 = constraintSetIds2[i14];
                    if (i15 != currentState) {
                        a(i11, id2, motionLayout, i15);
                    }
                    i14++;
                }
            }
            b bVarCloneConstraintSet = motionLayout.cloneConstraintSet(currentState);
            bVarCloneConstraintSet.T(id2, i11);
            motionLayout.updateStateAnimate(currentState, bVarCloneConstraintSet, 1000);
        }
    }

    public void setAnimateChange(boolean z10) {
        this.f7422b = z10;
    }

    public void setApplyToConstraintSetId(int i10) {
        this.f7423c = i10;
    }

    public void setAttributeId(int i10) {
        d sharedValues = ConstraintLayout.getSharedValues();
        int i11 = this.f7421a;
        if (i11 != -1) {
            sharedValues.b(i11, this);
        }
        this.f7421a = i10;
        if (i10 != -1) {
            sharedValues.a(i10, this);
        }
    }

    public void setGuidelineBegin(int i10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.f7353a = i10;
        setLayoutParams(bVar);
    }

    public void setGuidelineEnd(int i10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.f7355b = i10;
        setLayoutParams(bVar);
    }

    public void setGuidelinePercent(float f10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.f7357c = f10;
        setLayoutParams(bVar);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7421a = -1;
        this.f7422b = false;
        this.f7423c = 0;
        this.f7424d = true;
        super.setVisibility(8);
        b(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7421a = -1;
        this.f7422b = false;
        this.f7423c = 0;
        this.f7424d = true;
        super.setVisibility(8);
        b(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.f7421a = -1;
        this.f7422b = false;
        this.f7423c = 0;
        this.f7424d = true;
        super.setVisibility(8);
        b(attributeSet);
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override
    public void setVisibility(int i10) {
    }
}

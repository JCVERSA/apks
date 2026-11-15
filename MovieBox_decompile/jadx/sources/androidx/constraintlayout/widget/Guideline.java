package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

public class Guideline extends View {

    private boolean f7415a;

    public Guideline(Context context) {
        super(context);
        this.f7415a = true;
        super.setVisibility(8);
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z10) {
        this.f7415a = z10;
    }

    public void setGuidelineBegin(int i10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        if (this.f7415a && bVar.f7353a == i10) {
            return;
        }
        bVar.f7353a = i10;
        setLayoutParams(bVar);
    }

    public void setGuidelineEnd(int i10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        if (this.f7415a && bVar.f7355b == i10) {
            return;
        }
        bVar.f7355b = i10;
        setLayoutParams(bVar);
    }

    public void setGuidelinePercent(float f10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        if (this.f7415a && bVar.f7357c == f10) {
            return;
        }
        bVar.f7357c = f10;
        setLayoutParams(bVar);
    }

    @Override
    public void setVisibility(int i10) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7415a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7415a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.f7415a = true;
        super.setVisibility(8);
    }
}

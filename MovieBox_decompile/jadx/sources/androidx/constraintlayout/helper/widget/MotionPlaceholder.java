package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.d;
import androidx.constraintlayout.core.widgets.h;
import androidx.constraintlayout.core.widgets.i;
import androidx.constraintlayout.widget.VirtualLayout;
import t0.a;

public class MotionPlaceholder extends VirtualLayout {

    h f6832l;

    public MotionPlaceholder(Context context) {
        super(context);
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f7346d = new h();
        validateParams();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        onMeasure(this.f6832l, i10, i11);
    }

    public MotionPlaceholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public void onMeasure(i iVar, int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (iVar == null) {
            setMeasuredDimension(0, 0);
        } else {
            iVar.G1(mode, size, mode2, size2);
            setMeasuredDimension(iVar.B1(), iVar.A1());
        }
    }

    public MotionPlaceholder(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public MotionPlaceholder(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
    }

    @Override
    public void updatePreLayout(d dVar, a aVar, SparseArray<ConstraintWidget> sparseArray) {
    }
}

package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;

public class Group extends ConstraintHelper {
    public Group(Context context) {
        super(context);
    }

    @Override
    protected void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f7347e = false;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
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

    @Override
    public void updatePostLayout(ConstraintLayout constraintLayout) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.f7396v0.o1(0);
        bVar.f7396v0.P0(0);
    }

    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Group(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

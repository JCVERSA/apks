package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

public class Barrier extends ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;

    private int f7331j;

    private int f7332k;

    private androidx.constraintlayout.core.widgets.a f7333l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void l(ConstraintWidget constraintWidget, int i10, boolean z10) {
        this.f7332k = i10;
        if (z10) {
            int i11 = this.f7331j;
            if (i11 == 5) {
                this.f7332k = 1;
            } else if (i11 == 6) {
                this.f7332k = 0;
            }
        } else {
            int i12 = this.f7331j;
            if (i12 == 5) {
                this.f7332k = 0;
            } else if (i12 == 6) {
                this.f7332k = 1;
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            ((androidx.constraintlayout.core.widgets.a) constraintWidget).E1(this.f7332k);
        }
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.f7333l.y1();
    }

    public boolean getAllowsGoneWidget() {
        return this.f7333l.y1();
    }

    public int getMargin() {
        return this.f7333l.A1();
    }

    public int getType() {
        return this.f7331j;
    }

    @Override
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f7333l = new androidx.constraintlayout.core.widgets.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f7333l.D1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f7333l.F1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f7346d = this.f7333l;
        validateParams();
    }

    @Override
    public void loadParameters(b.a aVar, t0.b bVar, ConstraintLayout.b bVar2, SparseArray<ConstraintWidget> sparseArray) {
        super.loadParameters(aVar, bVar, bVar2, sparseArray);
        if (bVar instanceof androidx.constraintlayout.core.widgets.a) {
            androidx.constraintlayout.core.widgets.a aVar2 = (androidx.constraintlayout.core.widgets.a) bVar;
            l(aVar2, aVar.f7458e.f7490h0, ((androidx.constraintlayout.core.widgets.d) bVar.M()).U1());
            aVar2.D1(aVar.f7458e.f7506p0);
            aVar2.F1(aVar.f7458e.f7492i0);
        }
    }

    @Override
    public void resolveRtl(ConstraintWidget constraintWidget, boolean z10) {
        l(constraintWidget, this.f7331j, z10);
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.f7333l.D1(z10);
    }

    public void setDpMargin(int i10) {
        this.f7333l.F1((int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i10) {
        this.f7333l.F1(i10);
    }

    public void setType(int i10) {
        this.f7331j = i10;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        super.setVisibility(8);
    }
}

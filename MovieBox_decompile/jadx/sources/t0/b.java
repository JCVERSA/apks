package t0;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.g;
import androidx.constraintlayout.core.widgets.analyzer.m;
import androidx.constraintlayout.core.widgets.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class b extends ConstraintWidget implements a {
    public ConstraintWidget[] V0 = new ConstraintWidget[4];
    public int W0 = 0;

    @Override
    public void a(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int i10 = this.W0 + 1;
        ConstraintWidget[] constraintWidgetArr = this.V0;
        if (i10 > constraintWidgetArr.length) {
            this.V0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.V0;
        int i11 = this.W0;
        constraintWidgetArr2[i11] = constraintWidget;
        this.W0 = i11 + 1;
    }

    @Override
    public void b() {
        this.W0 = 0;
        Arrays.fill(this.V0, (Object) null);
    }

    @Override
    public void n(ConstraintWidget constraintWidget, HashMap map) {
        super.n(constraintWidget, map);
        b bVar = (b) constraintWidget;
        this.W0 = 0;
        int i10 = bVar.W0;
        for (int i11 = 0; i11 < i10; i11++) {
            a((ConstraintWidget) map.get(bVar.V0[i11]));
        }
    }

    public void v1(ArrayList arrayList, int i10, m mVar) {
        for (int i11 = 0; i11 < this.W0; i11++) {
            mVar.a(this.V0[i11]);
        }
        for (int i12 = 0; i12 < this.W0; i12++) {
            g.a(this.V0[i12], i10, arrayList, mVar);
        }
    }

    public int w1(int i10) {
        int i11;
        int i12;
        for (int i13 = 0; i13 < this.W0; i13++) {
            ConstraintWidget constraintWidget = this.V0[i13];
            if (i10 == 0 && (i12 = constraintWidget.S0) != -1) {
                return i12;
            }
            if (i10 == 1 && (i11 = constraintWidget.T0) != -1) {
                return i11;
            }
        }
        return -1;
    }

    public void c(d dVar) {
    }
}

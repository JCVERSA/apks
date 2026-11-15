package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$animator;
import java.util.HashMap;
import java.util.Map;
import qa.h;
import qa.j;

@Deprecated
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    private Map f29361i;

    public FabTransformationSheetBehavior() {
    }

    private void g0(View view, boolean z10) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                this.f29361i = new HashMap(childCount);
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                boolean z11 = (childAt.getLayoutParams() instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) childAt.getLayoutParams()).f() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z11) {
                    if (z10) {
                        this.f29361i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        ViewCompat.setImportantForAccessibility(childAt, 4);
                    } else {
                        Map map = this.f29361i;
                        if (map != null && map.containsKey(childAt)) {
                            ViewCompat.setImportantForAccessibility(childAt, ((Integer) this.f29361i.get(childAt)).intValue());
                        }
                    }
                }
            }
            if (z10) {
                return;
            }
            this.f29361i = null;
        }
    }

    @Override
    protected boolean H(View view, View view2, boolean z10, boolean z11) {
        g0(view2, z10);
        return super.H(view, view2, z10, z11);
    }

    @Override
    protected FabTransformationBehavior.e e0(Context context, boolean z10) {
        int i10 = z10 ? R$animator.mtrl_fab_transformation_sheet_expand_spec : R$animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.e eVar = new FabTransformationBehavior.e();
        eVar.f29354a = h.d(context, i10);
        eVar.f29355b = new j(17, 0.0f, 0.0f);
        return eVar;
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}

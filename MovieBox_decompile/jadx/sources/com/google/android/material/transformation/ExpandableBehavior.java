package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;

@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.c {

    private int f29330a;

    class a implements ViewTreeObserver.OnPreDrawListener {

        final View f29331a;

        final int f29332b;

        final wa.a f29333c;

        a(View view, int i10, wa.a aVar) {
            this.f29331a = view;
            this.f29332b = i10;
            this.f29333c = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onPreDraw() {
            this.f29331a.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f29330a == this.f29332b) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                wa.a aVar = this.f29333c;
                expandableBehavior.H((View) aVar, this.f29331a, aVar.isExpanded(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f29330a = 0;
    }

    private boolean F(boolean z10) {
        if (!z10) {
            return this.f29330a == 1;
        }
        int i10 = this.f29330a;
        return i10 == 0 || i10 == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected wa.a G(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = dependencies.get(i10);
            if (e(coordinatorLayout, view, view2)) {
                return (wa.a) view2;
            }
        }
        return null;
    }

    protected abstract boolean H(View view, View view2, boolean z10, boolean z11);

    @Override
    public abstract boolean e(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        wa.a aVar = (wa.a) view2;
        if (!F(aVar.isExpanded())) {
            return false;
        }
        this.f29330a = aVar.isExpanded() ? 1 : 2;
        return H((View) aVar, view, aVar.isExpanded(), true);
    }

    @Override
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
        wa.a aVarG;
        if (ViewCompat.isLaidOut(view) || (aVarG = G(coordinatorLayout, view)) == null || !F(aVarG.isExpanded())) {
            return false;
        }
        int i11 = aVarG.isExpanded() ? 1 : 2;
        this.f29330a = i11;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i11, aVarG));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29330a = 0;
    }
}

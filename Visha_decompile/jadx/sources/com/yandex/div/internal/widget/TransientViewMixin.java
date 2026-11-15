package com.yandex.div.internal.widget;

import android.view.View;
import androidx.core.view.ViewKt;
import defpackage.e74;
import defpackage.l7b;
import defpackage.pc9;
import defpackage.vg2;
import defpackage.y45;
import java.util.Iterator;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class TransientViewMixin implements l7b {
    public int b;

    public final void a(View view) {
        view.invalidate();
        pc9 pc9VarF = SequencesKt___SequencesKt.F(ViewKt.getAllViews(view), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(obj instanceof vg2);
            }
        });
        y45.h(pc9VarF, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        Iterator it = pc9VarF.iterator();
        while (it.hasNext()) {
            ((vg2) it.next()).invalidateBorder();
        }
    }

    @Override
    public boolean isTransient() {
        return this.b != 0;
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        int i = this.b;
        if (i > 0) {
            int i2 = i - 1;
            this.b = i2;
            if (i2 == 0) {
                a(view);
            }
        }
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        int i = this.b + 1;
        this.b = i;
        if (i == 1) {
            a(view);
        }
    }
}

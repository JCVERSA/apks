package androidx.compose.ui.window;

import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.m;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.platform.AbstractComposeView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

final class DialogLayout extends AbstractComposeView implements d {

    private final Window f6217i;

    private final i1 f6218j;

    private boolean f6219k;

    private boolean f6220l;

    public DialogLayout(Context context, Window window) {
        super(context, null, 0, 6, null);
        this.f6217i = window;
        this.f6218j = u2.c(ComposableSingletons$AndroidDialog_androidKt.f6213a.a(), null, 2, null);
    }

    private final Function2 getContent() {
        return (Function2) this.f6218j.getValue();
    }

    private final int getDisplayHeight() {
        return Math.round(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayWidth() {
        return Math.round(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final void setContent(Function2 function2) {
        this.f6218j.setValue(function2);
    }

    @Override
    public void Content(androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVarG = iVar.g(1735448596);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.A(this) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 3) == 2 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1735448596, i11, -1, "androidx.compose.ui.window.DialogLayout.Content (AndroidDialog.android.kt:280)");
            }
            getContent().invoke(iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i12) {
                    DialogLayout.this.Content(iVar2, v1.a(i10 | 1));
                }
            });
        }
    }

    public final boolean f() {
        return this.f6219k;
    }

    public final void g(boolean z10) {
        this.f6219k = z10;
    }

    @Override
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.f6220l;
    }

    @Override
    public Window getWindow() {
        return this.f6217i;
    }

    @Override
    public void internalOnLayout$ui_release(boolean z10, int i10, int i11, int i12, int i13) {
        View childAt;
        super.internalOnLayout$ui_release(z10, i10, i11, i12, i13);
        if (this.f6219k || (childAt = getChildAt(0)) == null) {
            return;
        }
        getWindow().setLayout(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }

    @Override
    public void internalOnMeasure$ui_release(int i10, int i11) {
        if (this.f6219k) {
            super.internalOnMeasure$ui_release(i10, i11);
        } else {
            super.internalOnMeasure$ui_release(View.MeasureSpec.makeMeasureSpec(getDisplayWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getDisplayHeight(), Integer.MIN_VALUE));
        }
    }

    public final void setContent(m mVar, Function2 function2) {
        setParentCompositionContext(mVar);
        setContent(function2);
        this.f6220l = true;
        createComposition();
    }
}

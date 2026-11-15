package com.yandex.div.core.view2.errors;

import android.view.ViewGroup;
import com.yandex.div.core.view2.Div2View;
import defpackage.e74;
import defpackage.te0;
import defpackage.vbc;
import defpackage.xc3;
import defpackage.y45;
import defpackage.zfb;

public final class ErrorVisualMonitor {
    public final boolean a;
    public final boolean b;
    public final vbc c;
    public boolean d;
    public final ErrorModel e;
    public ViewGroup f;
    public ErrorView g;

    public ErrorVisualMonitor(xc3 xc3Var, Div2View div2View, boolean z, boolean z2, vbc vbcVar) {
        y45.j(xc3Var, "errorCollectors");
        y45.j(div2View, "divView");
        y45.j(vbcVar, "bindingProvider");
        this.a = z;
        this.b = z2;
        this.c = vbcVar;
        this.d = z || z2;
        this.e = new ErrorModel(xc3Var, div2View, z);
        c();
    }

    public final void b(ViewGroup viewGroup) {
        y45.j(viewGroup, "root");
        this.f = viewGroup;
        if (this.d) {
            ErrorView errorView = this.g;
            if (errorView != null) {
                errorView.close();
            }
            this.g = new ErrorView(viewGroup, this.e, this.b);
        }
    }

    public final void c() {
        if (!this.d) {
            ErrorView errorView = this.g;
            if (errorView != null) {
                errorView.close();
            }
            this.g = null;
            return;
        }
        this.c.a(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((te0) obj);
                return zfb.a;
            }

            public final void invoke(te0 te0Var) {
                y45.j(te0Var, "it");
                this.this$0.e.i(te0Var);
            }
        });
        ViewGroup viewGroup = this.f;
        if (viewGroup != null) {
            b(viewGroup);
        }
    }

    public final boolean d() {
        return this.d;
    }

    public final void e(boolean z) {
        this.d = z;
        c();
    }
}

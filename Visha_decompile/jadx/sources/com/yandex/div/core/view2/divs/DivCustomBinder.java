package com.yandex.div.core.view2.divs;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.R;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivCustomWrapper;
import com.yandex.div2.Div;
import com.yandex.div2.DivCustom;
import defpackage.bh2;
import defpackage.c74;
import defpackage.e74;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.rg2;
import defpackage.vi2;
import defpackage.wu2;
import defpackage.wv2;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;

public final class DivCustomBinder extends wu2 {
    public final DivBaseBinder b;
    public final com.yandex.div.core.a c;
    public final vi2 d;
    public final oj8 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivCustomBinder(DivBaseBinder divBaseBinder, com.yandex.div.core.a aVar, vi2 vi2Var, oj8 oj8Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(aVar, "divCustomContainerViewAdapter");
        y45.j(vi2Var, "extensionController");
        y45.j(oj8Var, "divBinder");
        this.b = divBaseBinder;
        this.c = aVar;
        this.d = vi2Var;
        this.e = oj8Var;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    public final void g(DivCustomWrapper divCustomWrapper, View view, DivCustom divCustom, DivCustom divCustom2, com.yandex.div.core.view2.a aVar, c74 c74Var, e74 e74Var) {
        View view2;
        List listL;
        DivCustom divCustomC;
        if (view == null) {
            view2 = (View) c74Var.invoke();
            view2.setTag(R.id.div_custom_tag, divCustom2);
        } else {
            Div.c div = divCustomWrapper.getDiv();
            if (!y45.e((div == null || (divCustomC = div.c()) == null) ? null : divCustomC.j, divCustom2.j) || divCustom == null || (listL = bh2.l(divCustom)) == null || listL.size() != bh2.l(divCustom2).size()) {
                view2 = (View) c74Var.invoke();
                view2.setTag(R.id.div_custom_tag, divCustom2);
            } else {
                view2 = view;
            }
        }
        Div2View div2ViewA = aVar.a();
        if (!y45.e(view, view2)) {
            i(divCustomWrapper, view2, div2ViewA);
        }
        e74Var.invoke(view2);
        this.b.D(div2ViewA, view2, divCustom2.getId());
        this.d.b(div2ViewA, aVar.b(), view2, divCustom2);
    }

    public void h(com.yandex.div.core.view2.a aVar, DivCustomWrapper divCustomWrapper, Div.c cVar, final DivStatePath divStatePath) {
        com.yandex.div.core.view2.a bindingContext;
        oj3 oj3VarB;
        y45.j(aVar, "context");
        y45.j(divCustomWrapper, "view");
        y45.j(cVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        View customView = divCustomWrapper.getCustomView();
        Div.c div = divCustomWrapper.getDiv();
        final Div2View div2ViewA = aVar.a();
        final oj3 oj3VarB2 = aVar.b();
        if (div == cVar) {
            Object obj = this.e.get();
            y45.i(obj, "divBinder.get()");
            BaseDivViewExtensionsKt.E(divCustomWrapper, aVar, (rg2) obj);
            return;
        }
        if (customView != null && div != null && (bindingContext = divCustomWrapper.getBindingContext()) != null && (oj3VarB = bindingContext.b()) != null) {
            this.d.e(div2ViewA, oj3VarB, customView, div.b());
        }
        this.b.N(aVar, divCustomWrapper, cVar, div);
        this.b.D(div2ViewA, divCustomWrapper, null);
        final DivCustom divCustomC = cVar.c();
        if (this.c.isCustomTypeSupported(divCustomC.j)) {
            g(divCustomWrapper, customView, div != null ? div.c() : null, divCustomC, aVar, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final View invoke() {
                    return this.this$0.c.createView(divCustomC, div2ViewA, oj3VarB2, divStatePath);
                }
            }, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((View) obj2);
                    return zfb.a;
                }

                public final void invoke(View view) {
                    y45.j(view, "it");
                    this.this$0.c.bindView(view, divCustomC, div2ViewA, oj3VarB2, divStatePath);
                }
            });
        }
    }

    public final void i(ViewGroup viewGroup, View view, Div2View div2View) {
        if (viewGroup.getChildCount() != 0) {
            wv2.a(div2View.getReleaseViewVisitor$div_release(), ViewGroupKt.get(viewGroup, 0));
            viewGroup.removeViewAt(0);
        }
        viewGroup.addView(view);
    }
}

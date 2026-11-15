package com.yandex.div.core.view2.divs;

import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.widget.DivViewWrapper;
import com.yandex.div2.Div;
import defpackage.hh2;
import defpackage.mk2;
import defpackage.oj3;
import defpackage.oo8;
import defpackage.rg2;
import defpackage.y45;
import defpackage.yr8;
import java.util.LinkedHashMap;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0013H$¢\u0006\u0004\b\u0018\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R$\u0010,\u001a\u0004\u0018\u00010\u000f8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R \u00101\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\n0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00062"}, d2 = {"Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/yandex/div/core/widget/DivViewWrapper;", "viewWrapper", "Lcom/yandex/div/core/view2/a;", "parentContext", "Lrg2;", "divBinder", "Lcom/yandex/div/core/view2/DivViewCreator;", "viewCreator", "Lcom/yandex/div/core/state/DivStatePath;", "path", MethodDecl.initName, "(Lcom/yandex/div/core/widget/DivViewWrapper;Lcom/yandex/div/core/view2/a;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V", "bindingContext", "Lcom/yandex/div2/Div;", TtmlNode.TAG_DIV, "", "index", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;I)V", "e", "()V", "d", "Landroid/view/View;", "b", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)Landroid/view/View;", TtmlNode.TAG_P, "Lcom/yandex/div/core/widget/DivViewWrapper;", "q", "Lcom/yandex/div/core/view2/a;", "r", "Lrg2;", "s", "Lcom/yandex/div/core/view2/DivViewCreator;", "t", "Lcom/yandex/div/core/state/DivStatePath;", "u", "Lcom/yandex/div2/Div;", "c", "()Lcom/yandex/div2/Div;", "setOldDiv", "(Lcom/yandex/div2/Div;)V", "oldDiv", "", "", "v", "Ljava/util/Map;", "childrenPaths", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class DivCollectionViewHolder extends RecyclerView.ViewHolder {

    public final DivViewWrapper viewWrapper;

    public final com.yandex.div.core.view2.a parentContext;

    public final rg2 divBinder;

    public final DivViewCreator viewCreator;

    public final DivStatePath path;

    public Div oldDiv;

    public final Map childrenPaths;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivCollectionViewHolder(DivViewWrapper divViewWrapper, com.yandex.div.core.view2.a aVar, rg2 rg2Var, DivViewCreator divViewCreator, DivStatePath divStatePath) {
        super(divViewWrapper);
        y45.j(divViewWrapper, "viewWrapper");
        y45.j(aVar, "parentContext");
        y45.j(rg2Var, "divBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(divStatePath, "path");
        this.viewWrapper = divViewWrapper;
        this.parentContext = aVar;
        this.divBinder = rg2Var;
        this.viewCreator = divViewCreator;
        this.path = divStatePath;
        this.childrenPaths = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005b  */
    public final void a(com.yandex.div.core.view2.a bindingContext, Div div, int index) {
        View viewB;
        RuntimeStore runtimeStoreE;
        com.yandex.div.core.view2.a bindingContext2;
        oj3 oj3VarB;
        y45.j(bindingContext, "bindingContext");
        y45.j(div, TtmlNode.TAG_DIV);
        oj3 oj3VarB2 = bindingContext.b();
        if (oo8.b(this.viewWrapper, bindingContext.a(), div)) {
            this.oldDiv = div;
            return;
        }
        View child = this.viewWrapper.getChild();
        if (child != null) {
            viewB = null;
            View view = this.oldDiv != null ? child : null;
            if (view == null) {
                viewB = b(bindingContext, div);
            } else {
                mk2 mk2Var = view instanceof mk2 ? (mk2) view : null;
                if (mk2Var != null && (bindingContext2 = mk2Var.getBindingContext()) != null && (oj3VarB = bindingContext2.b()) != null && hh2.d(hh2.a, this.oldDiv, div, oj3VarB, oj3VarB2, null, 16, null)) {
                    viewB = view;
                }
                if (viewB == null) {
                    viewB = b(bindingContext, div);
                }
            }
        } else {
            viewB = b(bindingContext, div);
        }
        this.oldDiv = div;
        String strA0 = BaseDivViewExtensionsKt.a0(div.b(), index);
        Map map = this.childrenPaths;
        Object objC = map.get(strA0);
        if (objC == null) {
            objC = this.path.c(strA0);
            map.put(strA0, objC);
        }
        DivStatePath divStatePath = (DivStatePath) objC;
        if (!y45.e(this.parentContext.b(), bindingContext.b()) && (runtimeStoreE = bindingContext.e()) != null) {
            runtimeStoreE.p(divStatePath.e(), div, oj3VarB2, this.parentContext.b());
        }
        this.divBinder.b(bindingContext, viewB, div, divStatePath);
        RuntimeStore runtimeStoreE2 = bindingContext.e();
        if (runtimeStoreE2 != null) {
            runtimeStoreE2.r(div.b());
        }
    }

    public final View b(com.yandex.div.core.view2.a bindingContext, Div div) {
        if (this.oldDiv != null) {
            d();
        }
        yr8.a.a(this.viewWrapper, bindingContext.a());
        View viewL = this.viewCreator.L(div, bindingContext.b());
        this.viewWrapper.addView(viewL);
        return viewL;
    }

    public final Div getOldDiv() {
        return this.oldDiv;
    }

    public abstract void d();

    public final void e() {
        com.yandex.div.core.view2.a aVarZ;
        View child = this.viewWrapper.getChild();
        if (child == null || (aVarZ = BaseDivViewExtensionsKt.Z(child)) == null) {
            return;
        }
        BaseDivViewExtensionsKt.E(child, aVarZ, this.divBinder);
    }
}

package com.yandex.div.core.view2.divs.gallery;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.R;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivCollectionViewHolder;
import com.yandex.div.core.widget.DivViewWrapper;
import com.yandex.div.logging.Severity;
import com.yandex.div2.Div;
import defpackage.ne5;
import defpackage.rg2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;", "Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;", "Lcom/yandex/div/core/view2/a;", "parentContext", "Lcom/yandex/div/core/widget/DivViewWrapper;", "rootView", "Lrg2;", "divBinder", "Lcom/yandex/div/core/view2/DivViewCreator;", "viewCreator", "Lcom/yandex/div/core/state/DivStatePath;", "path", MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/widget/DivViewWrapper;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V", "bindingContext", "Lcom/yandex/div2/Div;", TtmlNode.TAG_DIV, "", "position", "index", "Lzfb;", "f", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)V", "d", "()V", "w", "Lcom/yandex/div/core/widget/DivViewWrapper;", "x", "Lrg2;", "y", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivGalleryViewHolder extends DivCollectionViewHolder {

    public final DivViewWrapper rootView;

    public final rg2 divBinder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGalleryViewHolder(a aVar, DivViewWrapper divViewWrapper, rg2 rg2Var, DivViewCreator divViewCreator, DivStatePath divStatePath) {
        super(divViewWrapper, aVar, rg2Var, divViewCreator, divStatePath);
        y45.j(aVar, "parentContext");
        y45.j(divViewWrapper, "rootView");
        y45.j(rg2Var, "divBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(divStatePath, "path");
        this.rootView = divViewWrapper;
        this.divBinder = rg2Var;
    }

    @Override
    public void d() {
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.DEBUG)) {
            ne5Var.b(3, "DivGalleryViewHolder", "Gallery holder reuse failed");
        }
    }

    public final void f(a bindingContext, Div div, int position, int index) {
        y45.j(bindingContext, "bindingContext");
        y45.j(div, TtmlNode.TAG_DIV);
        a(bindingContext, div, index);
        this.rootView.setTag(R.id.div_gallery_item_index, Integer.valueOf(position));
        this.divBinder.a();
    }
}

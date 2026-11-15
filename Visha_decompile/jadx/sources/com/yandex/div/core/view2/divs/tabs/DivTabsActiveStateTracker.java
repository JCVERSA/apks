package com.yandex.div.core.view2.divs.tabs;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.viewpager.widget.ViewPager;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.a;
import com.yandex.div.internal.widget.tabs.b;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivTabs;
import defpackage.gd2;
import defpackage.rda;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001d\u0010\u001bJ\u001f\u0010 \u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0012H\u0016¢\u0006\u0004\b \u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\"R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b#\u0010/¨\u00060"}, d2 = {"Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "Lcom/yandex/div/internal/widget/tabs/b$c;", "Lcom/yandex/div2/DivAction;", "Lcom/yandex/div/core/view2/a;", "context", "Lcom/yandex/div/core/state/DivStatePath;", "path", "Lgd2;", "div2Logger", "Lrda;", "tabsStateCache", "Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;", "runtimeVisitor", "Lcom/yandex/div2/DivTabs;", TtmlNode.TAG_DIV, MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lgd2;Lrda;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;Lcom/yandex/div2/DivTabs;)V", "", "position", "", "positionOffset", "positionOffsetPixels", "Lzfb;", "onPageScrolled", "(IFI)V", "onPageSelected", "(I)V", ICode.CALL.CALL_KEY_STATE, "onPageScrollStateChanged", "action", "tabPosition", "b", "(Lcom/yandex/div2/DivAction;I)V", "Lcom/yandex/div/core/view2/a;", "c", "Lcom/yandex/div/core/state/DivStatePath;", "d", "Lgd2;", "e", "Lrda;", "f", "Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/yandex/div2/DivTabs;", "getDiv", "()Lcom/yandex/div2/DivTabs;", "(Lcom/yandex/div2/DivTabs;)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivTabsActiveStateTracker implements ViewPager.OnPageChangeListener, b.c {

    public final a context;

    public final DivStatePath path;

    public final gd2 div2Logger;

    public final rda tabsStateCache;

    public final DivRuntimeVisitor runtimeVisitor;

    public DivTabs div;

    public DivTabsActiveStateTracker(a aVar, DivStatePath divStatePath, gd2 gd2Var, rda rdaVar, DivRuntimeVisitor divRuntimeVisitor, DivTabs divTabs) {
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        y45.j(gd2Var, "div2Logger");
        y45.j(rdaVar, "tabsStateCache");
        y45.j(divRuntimeVisitor, "runtimeVisitor");
        y45.j(divTabs, TtmlNode.TAG_DIV);
        this.context = aVar;
        this.path = divStatePath;
        this.div2Logger = gd2Var;
        this.tabsStateCache = rdaVar;
        this.runtimeVisitor = divRuntimeVisitor;
        this.div = divTabs;
    }

    @Override
    public void a(DivAction action, int tabPosition) {
        y45.j(action, "action");
    }

    public final void c(DivTabs divTabs) {
        y45.j(divTabs, "<set-?>");
        this.div = divTabs;
    }

    @Override
    public void onPageScrollStateChanged(int state) {
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
    }

    @Override
    public void onPageSelected(int position) {
        this.div2Logger.h(this.context.a(), position);
        rda rdaVar = this.tabsStateCache;
        String strA = this.context.a().getDataTag().a();
        y45.i(strA, "context.divView.dataTag.id");
        rdaVar.b(strA, this.path.e(), position);
        this.runtimeVisitor.d(this.context.a(), this.div, this.path, this.context.b());
    }
}

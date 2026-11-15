package com.yandex.div.core.view2.divs.tabs;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.viewpager.widget.ViewPager;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.push.PushConstants;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.core.view2.divs.widgets.DivTabsLayout;
import com.yandex.div.internal.widget.tabs.b;
import com.yandex.div.logging.Severity;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivTabs;
import defpackage.gd2;
import defpackage.ne5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0000\u0018\u0000 32\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u00014B7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001d\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u001e\u0010\u001bJ\u001f\u0010!\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0012H\u0016¢\u0006\u0004\b!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010$R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b%\u0010/R\u0016\u00102\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "Lcom/yandex/div/internal/widget/tabs/b$c;", "Lcom/yandex/div2/DivAction;", "Lcom/yandex/div/core/view2/a;", "context", "Lcom/yandex/div/core/view2/divs/DivActionBinder;", "actionBinder", "Lgd2;", "div2Logger", "Lcom/yandex/div/core/view2/DivVisibilityActionTracker;", "visibilityActionTracker", "Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;", "tabLayout", "Lcom/yandex/div2/DivTabs;", TtmlNode.TAG_DIV, MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lgd2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;)V", "", "position", "", "positionOffset", "positionOffsetPixels", "Lzfb;", "onPageScrolled", "(IFI)V", "onPageSelected", "(I)V", ICode.CALL.CALL_KEY_STATE, "onPageScrollStateChanged", "c", "action", "tabPosition", "b", "(Lcom/yandex/div2/DivAction;I)V", "Lcom/yandex/div/core/view2/a;", "Lcom/yandex/div/core/view2/divs/DivActionBinder;", "d", "Lgd2;", "e", "Lcom/yandex/div/core/view2/DivVisibilityActionTracker;", "f", "Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/yandex/div2/DivTabs;", "getDiv", "()Lcom/yandex/div2/DivTabs;", "(Lcom/yandex/div2/DivTabs;)V", CmcdData.STREAMING_FORMAT_HLS, "I", "currentPagePosition", CmcdData.OBJECT_TYPE_INIT_SEGMENT, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivTabsEventManager implements ViewPager.OnPageChangeListener, b.c {

    public final a context;

    public final DivActionBinder actionBinder;

    public final gd2 div2Logger;

    public final DivVisibilityActionTracker visibilityActionTracker;

    public final DivTabsLayout tabLayout;

    public DivTabs div;

    public int currentPagePosition;

    public DivTabsEventManager(a aVar, DivActionBinder divActionBinder, gd2 gd2Var, DivVisibilityActionTracker divVisibilityActionTracker, DivTabsLayout divTabsLayout, DivTabs divTabs) {
        y45.j(aVar, "context");
        y45.j(divActionBinder, "actionBinder");
        y45.j(gd2Var, "div2Logger");
        y45.j(divVisibilityActionTracker, "visibilityActionTracker");
        y45.j(divTabsLayout, "tabLayout");
        y45.j(divTabs, TtmlNode.TAG_DIV);
        this.context = aVar;
        this.actionBinder = divActionBinder;
        this.div2Logger = gd2Var;
        this.visibilityActionTracker = divVisibilityActionTracker;
        this.tabLayout = divTabsLayout;
        this.div = divTabs;
        this.currentPagePosition = -1;
    }

    @Override
    public void a(DivAction action, int tabPosition) {
        y45.j(action, "action");
        if (action.e != null) {
            ne5 ne5Var = ne5.a;
            if (ne5Var.a(Severity.WARNING)) {
                ne5Var.b(5, "DivTabsEventManager", "non-null menuItems ignored in title click action");
            }
        }
        this.div2Logger.x(this.context.a(), this.context.b(), tabPosition, action);
        DivActionBinder.E(this.actionBinder, this.context.a(), this.context.b(), action, PushConstants.PUSH_SERVICE_TYPE_CLICK, null, null, 48, null);
    }

    public final void c(int position) {
        int i = this.currentPagePosition;
        if (position == i) {
            return;
        }
        if (i != -1) {
            this.visibilityActionTracker.o(this.context, this.tabLayout, ((DivTabs.Item) this.div.q.get(i)).a);
            this.context.a().unbindViewFromDiv$div_release(this.tabLayout);
        }
        DivTabs.Item item = (DivTabs.Item) this.div.q.get(position);
        this.visibilityActionTracker.s(this.context, this.tabLayout, item.a);
        this.context.a().bindViewToDiv$div_release(this.tabLayout, item.a);
        this.currentPagePosition = position;
    }

    public final void d(DivTabs divTabs) {
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
        c(position);
    }
}

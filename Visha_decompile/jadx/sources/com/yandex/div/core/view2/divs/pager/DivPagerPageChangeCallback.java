package com.yandex.div.core.view2.divs.pager;

import android.view.View;
import androidx.core.view.ViewGroupKt;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div2.Div;
import com.yandex.div2.DivPager;
import defpackage.pdc;
import defpackage.y45;
import defpackage.zl2;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0017¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0013J'\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00100\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010)R\u0016\u00102\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010)¨\u00063"}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "Lcom/yandex/div2/DivPager;", "divPager", "", "Lzl2;", "items", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", "pagerView", MethodDecl.initName, "(Lcom/yandex/div2/DivPager;Ljava/util/List;Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V", "", ICode.CALL.CALL_KEY_STATE, "Lzfb;", "onPageScrollStateChanged", "(I)V", "position", "onPageSelected", "", "positionOffset", "positionOffsetPixels", "onPageScrolled", "(IFI)V", "c", "()V", "b", "d", "Lcom/yandex/div2/DivPager;", "e", "Ljava/util/List;", "f", "Lcom/yandex/div/core/view2/a;", GslbInterceptor.HEADER_KEY_GSLB, "Landroidx/recyclerview/widget/RecyclerView;", CmcdData.STREAMING_FORMAT_HLS, "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "I", "prevPosition", "Lcom/yandex/div/core/view2/Div2View;", "j", "Lcom/yandex/div/core/view2/Div2View;", "divView", "k", "minimumSignificantDx", CmcdData.STREAM_TYPE_LIVE, "totalDelta", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivPagerPageChangeCallback extends ViewPager2.OnPageChangeCallback {

    public final DivPager divPager;

    public final List items;

    public final com.yandex.div.core.view2.a bindingContext;

    public final RecyclerView recyclerView;

    public final DivPagerView pagerView;

    public int prevPosition;

    public final Div2View divView;

    public final int minimumSignificantDx;

    public int totalDelta;

    public static final class a implements View.OnLayoutChangeListener {
        public a() {
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            DivPagerPageChangeCallback.this.b();
        }
    }

    public DivPagerPageChangeCallback(DivPager divPager, List list, com.yandex.div.core.view2.a aVar, RecyclerView recyclerView, DivPagerView divPagerView) {
        y45.j(divPager, "divPager");
        y45.j(list, "items");
        y45.j(aVar, "bindingContext");
        y45.j(recyclerView, "recyclerView");
        y45.j(divPagerView, "pagerView");
        this.divPager = divPager;
        this.items = list;
        this.bindingContext = aVar;
        this.recyclerView = recyclerView;
        this.pagerView = divPagerView;
        this.prevPosition = -1;
        Div2View div2ViewA = aVar.a();
        this.divView = div2ViewA;
        this.minimumSignificantDx = div2ViewA.getConfig().a();
    }

    public final void b() {
        View view;
        int childAdapterPosition;
        Iterator it = ViewGroupKt.getChildren(this.recyclerView).iterator();
        while (it.hasNext() && (childAdapterPosition = this.recyclerView.getChildAdapterPosition((view = (View) it.next()))) != -1) {
            zl2 zl2Var = (zl2) this.items.get(childAdapterPosition);
            this.divView.getDiv2Component().H().s(this.bindingContext.c(zl2Var.d()), view, zl2Var.c());
        }
    }

    public final void c() {
        if (SequencesKt___SequencesKt.A(ViewGroupKt.getChildren(this.recyclerView)) > 0) {
            b();
            return;
        }
        RecyclerView recyclerView = this.recyclerView;
        if (!pdc.d(recyclerView) || recyclerView.isLayoutRequested()) {
            recyclerView.addOnLayoutChangeListener(new a());
        } else {
            b();
        }
    }

    @Override
    public void onPageScrollStateChanged(int state) {
        super.onPageScrollStateChanged(state);
        if (state == 0) {
            c();
        }
    }

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        super.onPageScrolled(position, positionOffset, positionOffsetPixels);
        int width = this.minimumSignificantDx;
        if (width <= 0) {
            RecyclerView.LayoutManager layoutManager = this.recyclerView.getLayoutManager();
            width = (layoutManager != null ? layoutManager.getWidth() : 0) / 20;
        }
        int i = this.totalDelta + positionOffsetPixels;
        this.totalDelta = i;
        if (i > width) {
            this.totalDelta = 0;
            c();
        }
    }

    @Override
    public void onPageSelected(int position) {
        super.onPageSelected(position);
        c();
        int i = this.prevPosition;
        if (position == i) {
            return;
        }
        if (i != -1) {
            this.divView.unbindViewFromDiv$div_release(this.pagerView);
        }
        if (position == -1) {
            this.prevPosition = position;
            return;
        }
        int i2 = this.prevPosition;
        if (i2 != -1) {
            this.divView.getDiv2Component().g().p(this.divView, ((zl2) this.items.get(position)).d(), this.divPager, position, position > i2 ? ES6Iterator.NEXT_METHOD : "back");
        }
        Div divC = ((zl2) this.items.get(position)).c();
        if (BaseDivViewExtensionsKt.b0(divC.b())) {
            this.divView.bindViewToDiv$div_release(this.pagerView, divC);
        }
        this.prevPosition = position;
    }
}

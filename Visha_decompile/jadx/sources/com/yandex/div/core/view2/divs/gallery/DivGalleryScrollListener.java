package com.yandex.div.core.view2.divs.gallery;

import android.view.View;
import androidx.core.view.ViewGroupKt;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div2.Div;
import com.yandex.div2.DivGallery;
import defpackage.rj2;
import defpackage.y45;
import defpackage.zl2;
import java.util.LinkedHashMap;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0015\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u00066"}, d2 = {"Lcom/yandex/div/core/view2/divs/gallery/DivGalleryScrollListener;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;", "recycler", "Lrj2;", "galleryItemHelper", "Lcom/yandex/div2/DivGallery;", "galleryDiv", MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lrj2;Lcom/yandex/div2/DivGallery;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "Lzfb;", "onScrollStateChanged", "(Landroidx/recyclerview/widget/RecyclerView;I)V", "dx", "dy", "onScrolled", "(Landroidx/recyclerview/widget/RecyclerView;II)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V", "c", "Lcom/yandex/div/core/view2/a;", "d", "Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;", "e", "Lrj2;", "f", "Lcom/yandex/div2/DivGallery;", "Lcom/yandex/div/core/view2/Div2View;", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/yandex/div/core/view2/Div2View;", "divView", CmcdData.STREAMING_FORMAT_HLS, "I", "minimumSignificantDx", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "totalDelta", "", "j", "Z", "alreadyLogged", "", "k", "Ljava/lang/String;", "getDirection", "()Ljava/lang/String;", "setDirection", "(Ljava/lang/String;)V", ICode.CALL.CALL_KEY_DIRECTION, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivGalleryScrollListener extends RecyclerView.OnScrollListener {

    public final a bindingContext;

    public final DivRecyclerView recycler;

    public final rj2 galleryItemHelper;

    public final DivGallery galleryDiv;

    public final Div2View divView;

    public final int minimumSignificantDx;

    public int totalDelta;

    public boolean alreadyLogged;

    public String direction;

    public DivGalleryScrollListener(a aVar, DivRecyclerView divRecyclerView, rj2 rj2Var, DivGallery divGallery) {
        y45.j(aVar, "bindingContext");
        y45.j(divRecyclerView, "recycler");
        y45.j(rj2Var, "galleryItemHelper");
        y45.j(divGallery, "galleryDiv");
        this.bindingContext = aVar;
        this.recycler = divRecyclerView;
        this.galleryItemHelper = rj2Var;
        this.galleryDiv = divGallery;
        Div2View div2ViewA = aVar.a();
        this.divView = div2ViewA;
        this.minimumSignificantDx = div2ViewA.getConfig().a();
        this.direction = ES6Iterator.NEXT_METHOD;
    }

    public final void a() {
        DivVisibilityActionTracker divVisibilityActionTrackerH = this.divView.getDiv2Component().H();
        y45.i(divVisibilityActionTrackerH, "divView.div2Component.visibilityActionTracker");
        divVisibilityActionTrackerH.A(SequencesKt___SequencesKt.c0(ViewGroupKt.getChildren(this.recycler)));
        for (View view : ViewGroupKt.getChildren(this.recycler)) {
            int childAdapterPosition = this.recycler.getChildAdapterPosition(view);
            if (childAdapterPosition != -1) {
                RecyclerView.Adapter adapter = this.recycler.getAdapter();
                y45.h(adapter, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.gallery.DivGalleryAdapter");
                divVisibilityActionTrackerH.s(this.bindingContext, view, ((zl2) ((DivGalleryAdapter) adapter).getVisibleItems().get(childAdapterPosition)).c());
            }
        }
        Map mapP = divVisibilityActionTrackerH.p();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapP.entrySet()) {
            if (!SequencesKt___SequencesKt.z(ViewGroupKt.getChildren(this.recycler), entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            divVisibilityActionTrackerH.t(this.bindingContext, (View) entry2.getKey(), (Div) entry2.getValue());
        }
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
        y45.j(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, newState);
        if (newState == 1) {
            this.alreadyLogged = false;
        }
        if (newState == 0) {
            this.divView.getDiv2Component().g().l(this.divView, this.bindingContext.b(), this.galleryDiv, this.galleryItemHelper.firstVisibleItemPosition(), this.galleryItemHelper.lastVisibleItemPosition(), this.direction);
        }
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
        y45.j(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, dx, dy);
        int iWidth = this.minimumSignificantDx;
        if (iWidth <= 0) {
            iWidth = this.galleryItemHelper.width() / 20;
        }
        int iAbs = this.totalDelta + Math.abs(dx) + Math.abs(dy);
        this.totalDelta = iAbs;
        if (iAbs > iWidth) {
            this.totalDelta = 0;
            if (!this.alreadyLogged) {
                this.alreadyLogged = true;
                this.divView.getDiv2Component().g().q(this.divView);
                this.direction = (dx > 0 || dy > 0) ? ES6Iterator.NEXT_METHOD : "back";
            }
            a();
        }
    }
}

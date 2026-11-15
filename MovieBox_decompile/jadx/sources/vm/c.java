package vm;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.video.NineGridVideoView;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c extends RecyclerView.r {

    public static final a f73667i = new a(null);

    private BaseQuickAdapter f73668a;

    private wm.a f73669b;

    private d f73670c;

    private int f73671d = -1;

    private int f73672e = -1;

    private int f73673f = -1;

    private int f73674g = -1;

    private int f73675h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void d(RecyclerView recyclerView) {
        List<Object> data;
        int position;
        d dVar;
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if ((layoutManager instanceof LinearLayoutManager) && g()) {
            if (this.f73669b == null && (dVar = this.f73670c) != null) {
                dVar.a();
            }
            wm.a aVar = this.f73669b;
            int iB = aVar != null ? aVar.b() : -1;
            wm.a aVar2 = this.f73669b;
            int iF = aVar2 != null ? aVar2.f() : -1;
            wm.a aVar3 = this.f73669b;
            if (aVar3 != null && aVar3.n() && h((LinearLayoutManager) layoutManager, iB, iF)) {
                return;
            }
            wm.a aVar4 = this.f73669b;
            if (aVar4 != null) {
                aVar4.r();
            }
            BaseQuickAdapter baseQuickAdapter = this.f73668a;
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int iF2 = f(baseQuickAdapter != null ? baseQuickAdapter.getData() : null, linearLayoutManager);
            if (iF2 < 0) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, "ItemChangeListener", "curPos=" + iB + " next=" + iF2 + ", dy=" + this.f73675h + ", firstVisible=" + this.f73673f + " lastVisible=" + this.f73674g, false, 4, null);
            BaseQuickAdapter baseQuickAdapter2 = this.f73668a;
            if (baseQuickAdapter2 == null || (data = baseQuickAdapter2.getData()) == null) {
                return;
            }
            int childCount = linearLayoutManager.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = linearLayoutManager.getChildAt(i10);
                if (childAt != null && (position = linearLayoutManager.getPosition(childAt)) == iF2 && position < data.size() && iB != iF2) {
                    PostSubjectItem postSubjectItem = (PostSubjectItem) data.get(iF2);
                    wm.a aVar5 = this.f73669b;
                    if (aVar5 != null) {
                        aVar5.s(postSubjectItem, childAt, iF2);
                    }
                    wm.a aVar6 = this.f73669b;
                    if (aVar6 != null && aVar6.e(postSubjectItem.getMedia()) == 1) {
                        i(iF2);
                    }
                }
            }
        }
    }

    private final int f(List list, LinearLayoutManager linearLayoutManager) {
        NineGridVideoView nineGridVideoView;
        int position;
        int i10 = -1;
        if (list == null) {
            return -1;
        }
        int childCount = linearLayoutManager.getChildCount();
        float f10 = 0.0f;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = linearLayoutManager.getChildAt(i11);
            if (childAt != null && (nineGridVideoView = (NineGridVideoView) childAt.findViewById(R$id.nine_grid)) != null && (position = linearLayoutManager.getPosition(childAt)) >= 0 && position < list.size()) {
                PostSubjectItem postSubjectItem = (PostSubjectItem) list.get(position);
                if (wm.b.a(postSubjectItem.getMedia())) {
                    wm.a aVar = this.f73669b;
                    float fH = aVar != null ? aVar.h(nineGridVideoView, postSubjectItem.getMedia()) : 0.0f;
                    if (f10 < fH) {
                        if (fH > 0.5f) {
                            i10 = position;
                        }
                        f10 = fH;
                    }
                }
            }
        }
        return i10;
    }

    private final boolean g() {
        List<Object> data;
        BaseQuickAdapter baseQuickAdapter = this.f73668a;
        if (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null) {
            return false;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            if (wm.b.a(((PostSubjectItem) it.next()).getMedia())) {
                return true;
            }
        }
        return false;
    }

    private final boolean h(LinearLayoutManager linearLayoutManager, int i10, int i11) {
        int childCount = linearLayoutManager.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = linearLayoutManager.getChildAt(i12);
            if (childAt != null) {
                NineGridVideoView nineGridVideoView = (NineGridVideoView) childAt.findViewById(R$id.nine_grid);
                int position = linearLayoutManager.getPosition(childAt);
                if (position == i10) {
                    Boolean boolValueOf = nineGridVideoView != null ? Boolean.valueOf(nineGridVideoView.currentGifVisible(i11)) : null;
                    if (Intrinsics.c(boolValueOf, Boolean.TRUE)) {
                        wf.a.C0922a.f(wf.a.f74274a, "ItemChangeListener", "childPos=" + position + " currentGifVisible=" + boolValueOf, false, 4, null);
                        return true;
                    }
                    boolean zHasGifVisible = nineGridVideoView != null ? nineGridVideoView.hasGifVisible() : false;
                    wf.a.C0922a.f(wf.a.f74274a, "ItemChangeListener", "childPos=" + position + " gifVisible=" + zHasGifVisible, false, 4, null);
                    wm.a aVar = this.f73669b;
                    if (aVar != null) {
                        aVar.q();
                    }
                    return zHasGifVisible;
                }
            }
        }
        return false;
    }

    private final void i(int i10) {
        List<Object> data;
        List<Object> data2;
        BaseQuickAdapter baseQuickAdapter = this.f73668a;
        int size = (baseQuickAdapter == null || (data2 = baseQuickAdapter.getData()) == null) ? 0 : data2.size();
        for (int i11 = i10; i11 < size; i11++) {
            if (i11 > i10) {
                BaseQuickAdapter baseQuickAdapter2 = this.f73668a;
                PostSubjectItem postSubjectItem = (baseQuickAdapter2 == null || (data = baseQuickAdapter2.getData()) == null) ? null : (PostSubjectItem) data.get(i11);
                if (wm.b.a(postSubjectItem != null ? postSubjectItem.getMedia() : null)) {
                    wm.a aVar = this.f73669b;
                    if (aVar != null) {
                        aVar.v(postSubjectItem != null ? postSubjectItem.getMedia() : null);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final void e() {
        this.f73668a = null;
        this.f73669b = null;
        this.f73672e = -1;
        this.f73671d = -1;
        this.f73673f = -1;
        this.f73674g = -1;
        this.f73675h = 0;
        this.f73670c = null;
    }

    public final void j(BaseQuickAdapter baseQuickAdapter) {
        this.f73668a = baseQuickAdapter;
    }

    public final void k(wm.a aVar) {
        this.f73669b = aVar;
    }

    public final void l(d dVar) {
        this.f73670c = dVar;
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.h(recyclerView, "recyclerView");
        if (recyclerView.getScrollState() == 0) {
            d(recyclerView);
        }
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            throw new RuntimeException("Unsupported layoutManager.");
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        this.f73671d = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        this.f73672e = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        this.f73673f = linearLayoutManager.findFirstVisibleItemPosition();
        this.f73674g = linearLayoutManager.findLastVisibleItemPosition();
        this.f73675h = i11;
        if (recyclerView.getScrollState() == 0) {
            d(recyclerView);
        }
    }
}

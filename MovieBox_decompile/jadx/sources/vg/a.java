package vg;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a extends RecyclerView.r {

    public static final C0911a f73599f = new C0911a(null);

    private b f73600a;

    private RecyclerView f73603d;

    private int f73601b = 10;

    private int f73602c = 2;

    private final SparseArray f73604e = new SparseArray();

    public static final class C0911a {
        public C0911a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0911a() {
        }
    }

    public interface b {
        int a();

        void onItemViewVisible(boolean z10, int i10);
    }

    private final int[] e(int[] iArr, int[] iArr2) {
        int i10 = iArr[0];
        int i11 = iArr2[0];
        int length = iArr.length;
        for (int i12 = 1; i12 < length; i12++) {
            int i13 = iArr[i12];
            if (i10 > i13) {
                i10 = i13;
            }
        }
        int length2 = iArr2.length;
        for (int i14 = 1; i14 < length2; i14++) {
            int i15 = iArr2[i14];
            if (i11 < i15) {
                i11 = i15;
            }
        }
        return new int[]{i10, i11};
    }

    private final int[] f(GridLayoutManager gridLayoutManager) {
        return new int[]{gridLayoutManager.findFirstVisibleItemPosition(), gridLayoutManager.findLastVisibleItemPosition()};
    }

    private final int[] g(LinearLayoutManager linearLayoutManager) {
        return new int[]{linearLayoutManager.findFirstVisibleItemPosition(), linearLayoutManager.findLastVisibleItemPosition()};
    }

    private final int[] h(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        int[] iArr = new int[staggeredGridLayoutManager.Q()];
        int[] iArr2 = new int[staggeredGridLayoutManager.Q()];
        staggeredGridLayoutManager.D(iArr);
        staggeredGridLayoutManager.G(iArr2);
        return e(iArr, iArr2);
    }

    private final String i() {
        return a.class.getSimpleName();
    }

    private final void j() {
        Object objM453constructorimpl;
        RecyclerView recyclerView = this.f73603d;
        if (recyclerView == null || recyclerView == null || recyclerView.getVisibility() != 0) {
            return;
        }
        RecyclerView recyclerView2 = this.f73603d;
        if (recyclerView2 == null || recyclerView2.isShown()) {
            RecyclerView recyclerView3 = this.f73603d;
            if (recyclerView3 == null || recyclerView3.getGlobalVisibleRect(new Rect())) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    int[] iArrH = new int[2];
                    RecyclerView recyclerView4 = this.f73603d;
                    RecyclerView.m layoutManager = recyclerView4 != null ? recyclerView4.getLayoutManager() : null;
                    if (layoutManager instanceof GridLayoutManager) {
                        iArrH = f((GridLayoutManager) layoutManager);
                    } else if (layoutManager instanceof LinearLayoutManager) {
                        iArrH = g((LinearLayoutManager) layoutManager);
                    } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                        iArrH = h((StaggeredGridLayoutManager) layoutManager);
                    }
                    int i10 = iArrH[0];
                    int i11 = iArrH[1];
                    if (i10 <= i11) {
                        while (true) {
                            b bVar = this.f73600a;
                            if (bVar == null || i10 != bVar.a()) {
                                m(layoutManager != null ? layoutManager.findViewByPosition(i10) : null, i10);
                            }
                            if (i10 == i11) {
                                break;
                            } else {
                                i10++;
                            }
                        }
                    }
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl == null) {
                    return;
                }
                Log.e(i(), "RecyclerViewExposeUtil --> handleCurrentVisibleItems() --> " + Log.getStackTraceString(thM456exceptionOrNullimpl));
            }
        }
    }

    private final void m(View view, int i10) {
        if (view != null && view.getVisibility() == 0 && view.isShown() && view.getGlobalVisibleRect(new Rect())) {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            boolean z10 = ((double) rect.height()) * ((double) rect.width()) > ((((double) view.getMeasuredHeight()) * ((double) view.getMeasuredWidth())) * ((double) this.f73601b)) / ((double) 100);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("isItemViewVisibleInLogic = ");
            sb2.append(z10);
            if (!globalVisibleRect || !z10) {
                b bVar = this.f73600a;
                if (bVar != null) {
                    bVar.onItemViewVisible(false, i10);
                }
                if (this.f73602c == 2) {
                    this.f73604e.remove(i10);
                    return;
                }
                return;
            }
            if (this.f73604e.get(i10) != null) {
                return;
            }
            this.f73604e.put(i10, Long.valueOf(System.currentTimeMillis()));
            b bVar2 = this.f73600a;
            if (bVar2 != null) {
                bVar2.onItemViewVisible(true, i10);
            }
        }
    }

    public final void d() {
        l();
        RecyclerView recyclerView = this.f73603d;
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this);
        }
        this.f73600a = null;
        this.f73603d = null;
    }

    public final void k() {
        j();
    }

    public final void l() {
        this.f73604e.clear();
    }

    public final void n(RecyclerView recyclerView, b bVar) {
        RecyclerView recyclerView2;
        this.f73600a = bVar;
        this.f73603d = recyclerView;
        if (recyclerView == null || recyclerView == null || recyclerView.getVisibility() != 0 || (recyclerView2 = this.f73603d) == null) {
            return;
        }
        recyclerView2.addOnScrollListener(this);
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.h(recyclerView, "recyclerView");
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        j();
    }
}

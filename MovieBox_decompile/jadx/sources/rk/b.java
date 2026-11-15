package rk;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$id;
import com.transsion.home.view.OpRankingView;
import java.util.SortedSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b extends RecyclerView.r {

    public static final a f71239i = new a(null);

    public static final int f71240j = 8;

    private static String f71241k = "ExposureHelper";

    private final float f71242a;

    private final rk.a f71243b;

    private final boolean f71244c;

    private int f71245d;

    private int f71246e;

    private int f71247f;

    private final SparseArray f71248g;

    private SortedSet f71249h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(float f10, rk.a aVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, aVar, (i10 & 4) != 0 ? false : z10);
    }

    private final boolean d(View view) {
        if (view == null) {
            return false;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return false;
        }
        if (f(view)) {
            return true;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i10 = this.f71245d;
        if (i10 != 1) {
            if (i10 != 2) {
                double d10 = (((double) iWidth) * 1.0d) / ((double) width);
                float f10 = this.f71242a;
                if (d10 < f10 || (((double) iHeight) * 1.0d) / ((double) height) < f10) {
                    return false;
                }
            } else if ((((double) iHeight) * 1.0d) / ((double) height) < this.f71242a) {
                return false;
            }
        } else if ((((double) iWidth) * 1.0d) / ((double) width) < this.f71242a) {
            return false;
        }
        return true;
    }

    private final boolean f(View view) {
        OpRankingView opRankingView;
        if (view == null || (opRankingView = (OpRankingView) view.findViewById(R$id.ranking_view)) == null) {
            opRankingView = null;
        } else {
            RecyclerView.m layoutManager = ((RecyclerView) opRankingView.findViewById(R$id.recycler_view)).getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
            this.f71249h = opRankingView.calcExposureLines((GridLayoutManager) layoutManager);
        }
        return opRankingView != null;
    }

    private final void g(int i10, int i11, int i12) {
        if (i11 < 0 || i12 >= i10 || i11 > i12 || i11 > i12) {
            return;
        }
        while (true) {
            if (this.f71248g.get(i11) == null) {
                wf.a.C0922a.f(wf.a.f74274a, f71241k, "offer position  " + i11, false, 4, null);
                this.f71248g.put(i11, Long.valueOf(System.currentTimeMillis()));
            }
            if (i11 == i12) {
                return;
            } else {
                i11++;
            }
        }
    }

    private final void j(int i10) {
        if (this.f71248g.get(i10) == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l10 = (Long) this.f71248g.get(i10);
        long jLongValue = l10 != null ? l10.longValue() : jCurrentTimeMillis;
        this.f71248g.remove(i10);
        long j10 = jCurrentTimeMillis - jLongValue;
        wf.a.C0922a.f(wf.a.f74274a, f71241k, "out position " + i10 + " duration " + j10, false, 4, null);
        if (j10 <= 1000) {
            return;
        }
        this.f71243b.a(i10, j10, null);
    }

    private final void k(int i10, int i11, int i12) {
        if (i11 < 0 || i12 >= i10 || i11 > i12 || i11 > i12) {
            return;
        }
        while (true) {
            j(i12);
            if (i12 == i11) {
                return;
            } else {
                i12--;
            }
        }
    }

    public final void e() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        SparseArray sparseArray = this.f71248g;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            Long l10 = (Long) sparseArray.valueAt(i10);
            long jLongValue = jCurrentTimeMillis - (l10 != null ? l10.longValue() : jCurrentTimeMillis);
            wf.a.C0922a.f(wf.a.f74274a, f71241k, "clearCache out position " + iKeyAt + " duration " + jLongValue, false, 4, null);
            if (jLongValue <= 1000) {
                return;
            }
            this.f71243b.a(iKeyAt, jLongValue, null);
        }
        this.f71248g.clear();
    }

    public final void h(LinearLayoutManager manager, int i10, boolean z10) {
        Intrinsics.h(manager, "manager");
        if (z10) {
            g(manager.getItemCount(), i10, i10);
        }
    }

    public final void i(LinearLayoutManager manager, boolean z10) {
        Intrinsics.h(manager, "manager");
        int iFindFirstVisibleItemPosition = manager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = manager.findLastVisibleItemPosition();
        if (!d(manager.findViewByPosition(iFindFirstVisibleItemPosition))) {
            iFindFirstVisibleItemPosition++;
        }
        if (!d(manager.findViewByPosition(iFindLastVisibleItemPosition))) {
            iFindLastVisibleItemPosition--;
        }
        if (this.f71246e == 0 && this.f71247f == 0) {
            g(manager.getItemCount(), iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
            this.f71246e = iFindFirstVisibleItemPosition;
            this.f71247f = iFindLastVisibleItemPosition;
            return;
        }
        if (z10) {
            k(manager.getItemCount(), this.f71246e, iFindFirstVisibleItemPosition - 1);
            g(manager.getItemCount(), this.f71247f + 1, iFindLastVisibleItemPosition);
        } else {
            k(manager.getItemCount(), iFindLastVisibleItemPosition + 1, this.f71247f);
            g(manager.getItemCount(), iFindFirstVisibleItemPosition, this.f71246e - 1);
        }
        this.f71246e = iFindFirstVisibleItemPosition;
        this.f71247f = iFindLastVisibleItemPosition;
    }

    public final void l(int i10) {
        this.f71245d = i10;
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.h(recyclerView, "recyclerView");
        wf.a.C0922a.f(wf.a.f74274a, f71241k, "newState " + i10, false, 4, null);
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        i((LinearLayoutManager) layoutManager, i11 >= 0);
    }

    public b(float f10, rk.a callback, boolean z10) {
        Intrinsics.h(callback, "callback");
        this.f71242a = f10;
        this.f71243b = callback;
        this.f71244c = z10;
        this.f71248g = new SparseArray();
    }
}

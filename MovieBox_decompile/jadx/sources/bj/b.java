package bj;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.transsion.baselib.exposure.ExposureType;
import ij.q;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b extends RecyclerView.r {

    public static final a f15826j = new a(null);

    private static String f15827k = "ExposureHelper";

    private final float f15828a;

    private final bj.a f15829b;

    private final boolean f15830c;

    private int f15831d;

    private ExposureType f15832e;

    private q f15833f;

    private int f15834g;

    private int f15835h;

    private final SparseArray f15836i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return b.f15827k;
        }

        private a() {
        }
    }

    public b(float f10, bj.a aVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, aVar, (i10 & 4) != 0 ? false : z10);
    }

    private final boolean e(View view) {
        if (view == null) {
            return false;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return false;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i10 = this.f15831d;
        if (i10 != 1) {
            if (i10 != 2) {
                double d10 = (((double) iWidth) * 1.0d) / ((double) width);
                float f10 = this.f15828a;
                if (d10 < f10 || (((double) iHeight) * 1.0d) / ((double) height) < f10) {
                    return false;
                }
            } else if ((((double) iHeight) * 1.0d) / ((double) height) < this.f15828a) {
                return false;
            }
        } else if ((((double) iWidth) * 1.0d) / ((double) width) < this.f15828a) {
            return false;
        }
        return true;
    }

    private final void h(int i10, int i11, int i12) {
        if (i11 < 0 || i12 >= i10 || i11 > i12 || i11 > i12) {
            return;
        }
        while (this.f15836i.get(i11) == null) {
            int i13 = i11 + 1;
            wf.a.C0922a.f(wf.a.f74274a, f15827k, "offer position  " + i11, false, 4, null);
            this.f15836i.put(i11, Long.valueOf(System.currentTimeMillis()));
            q qVar = this.f15833f;
            if (qVar != null) {
                qVar.a(i13);
            }
            if (i11 == i12) {
                return;
            } else {
                i11 = i13;
            }
        }
    }

    public static void j(b bVar, RecyclerView.m mVar, int i10, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z11 = false;
        }
        bVar.i(mVar, i10, z10, z11);
    }

    private final void l(int i10) {
        if (this.f15836i.get(i10) == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l10 = (Long) this.f15836i.get(i10);
        long jLongValue = l10 != null ? l10.longValue() : jCurrentTimeMillis;
        this.f15836i.remove(i10);
        long j10 = jCurrentTimeMillis - jLongValue;
        wf.a.C0922a.f(wf.a.f74274a, f15827k, "out position " + i10 + " duration " + j10, false, 4, null);
        if (j10 <= 1000) {
            return;
        }
        this.f15829b.a(i10, j10, null);
    }

    private final void m(int i10, int i11, int i12) {
        if (i11 < 0 || i12 >= i10 || i11 > i12 || i11 > i12) {
            return;
        }
        while (true) {
            l(i12);
            if (i12 == i11) {
                return;
            } else {
                i12--;
            }
        }
    }

    public final void f() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        SparseArray sparseArray = this.f15836i;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            Long l10 = (Long) sparseArray.valueAt(i10);
            long jLongValue = jCurrentTimeMillis - (l10 != null ? l10.longValue() : jCurrentTimeMillis);
            wf.a.C0922a.f(wf.a.f74274a, f15827k, "clearCache out position " + iKeyAt + " duration " + jLongValue, false, 4, null);
            this.f15829b.a(iKeyAt, jLongValue, null);
        }
        this.f15836i.clear();
    }

    public final void g() {
        f();
        this.f15834g = 0;
        this.f15835h = 0;
    }

    public final void i(RecyclerView.m manager, int i10, boolean z10, boolean z11) {
        Intrinsics.h(manager, "manager");
        if (z10) {
            View viewFindViewByPosition = manager.findViewByPosition(i10);
            if (z11) {
                h(manager.getItemCount(), i10, i10);
                return;
            }
            boolean zE = e(viewFindViewByPosition);
            wf.a.C0922a.f(wf.a.f74274a, f15827k, "firstView " + viewFindViewByPosition + " export " + zE + " count " + manager.getItemCount(), false, 4, null);
            if (zE) {
                h(manager.getItemCount(), i10, i10);
            }
        }
    }

    public final void k(RecyclerView.m manager, boolean z10) {
        int iR;
        int iR2;
        Intrinsics.h(manager, "manager");
        boolean z11 = manager instanceof LinearLayoutManager;
        if (z11) {
            iR = ((LinearLayoutManager) manager).findFirstVisibleItemPosition();
        } else {
            if (!(manager instanceof StaggeredGridLayoutManager)) {
                return;
            }
            int[] iArrD = ((StaggeredGridLayoutManager) manager).D(null);
            Intrinsics.g(iArrD, "findFirstVisibleItemPositions(...)");
            iR = ArraysKt.R(iArrD);
        }
        if (z11) {
            iR2 = ((LinearLayoutManager) manager).findLastVisibleItemPosition();
        } else {
            if (!(manager instanceof StaggeredGridLayoutManager)) {
                return;
            }
            int[] iArrG = ((StaggeredGridLayoutManager) manager).G(null);
            Intrinsics.g(iArrG, "findLastVisibleItemPositions(...)");
            iR2 = ArraysKt.R(iArrG);
        }
        if (!e(manager.findViewByPosition(iR)) && this.f15832e != ExposureType.NEST_HORIZONTAL) {
            iR++;
        }
        if (!e(manager.findViewByPosition(iR2)) && this.f15832e != ExposureType.NEST_HORIZONTAL) {
            iR2--;
        }
        if (this.f15834g == 0 && this.f15835h == 0) {
            h(manager.getItemCount(), iR, iR2);
            this.f15834g = iR;
            this.f15835h = iR2;
            return;
        }
        if (z10) {
            m(manager.getItemCount(), this.f15834g, iR - 1);
            h(manager.getItemCount(), this.f15835h + 1, iR2);
        } else {
            m(manager.getItemCount(), iR2 + 1, this.f15835h);
            h(manager.getItemCount(), iR, this.f15834g - 1);
        }
        this.f15834g = iR;
        this.f15835h = iR2;
    }

    public final void n(int i10) {
        this.f15831d = i10;
    }

    public final void o(ExposureType exposureType) {
        Intrinsics.h(exposureType, "exposureType");
        this.f15832e = exposureType;
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.h(recyclerView, "recyclerView");
        wf.a.C0922a.f(wf.a.f74274a, f15827k, "newState " + i10, false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0030 A[DONT_INVERT] */
    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            return;
        }
        boolean z10 = false;
        if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).getOrientation() == 1) {
                if (i11 > 0) {
                    z10 = true;
                }
            } else if (i10 > 0) {
                z10 = true;
            }
        } else {
            if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
                return;
            }
            if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1) {
                if (i11 > 0) {
                    z10 = true;
                }
            } else if (i10 > 0) {
                z10 = true;
            }
        }
        k(layoutManager, z10);
    }

    public final void p(q qVar) {
        this.f15833f = qVar;
    }

    public b(float f10, bj.a callback, boolean z10) {
        Intrinsics.h(callback, "callback");
        this.f15828a = f10;
        this.f15829b = callback;
        this.f15830c = z10;
        this.f15832e = ExposureType.VERTICAL_FEED;
        this.f15836i = new SparseArray();
    }
}

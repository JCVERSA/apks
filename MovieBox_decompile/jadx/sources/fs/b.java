package fs;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv_pugc.base.exposure.ExposureType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b extends RecyclerView.r {

    public static final a f60499i = new a(null);

    private static String f60500j = "ExposureHelper";

    private final float f60501a;

    private final fs.a f60502b;

    private final boolean f60503c;

    private int f60504d;

    private ExposureType f60505e;

    private int f60506f;

    private int f60507g;

    private final SparseArray f60508h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(float f10, fs.a aVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
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
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i10 = this.f60504d;
        if (i10 != 1) {
            if (i10 != 2) {
                double d10 = (((double) iWidth) * 1.0d) / ((double) width);
                float f10 = this.f60501a;
                if (d10 < f10 || (((double) iHeight) * 1.0d) / ((double) height) < f10) {
                    return false;
                }
            } else if ((((double) iHeight) * 1.0d) / ((double) height) < this.f60501a) {
                return false;
            }
        } else if ((((double) iWidth) * 1.0d) / ((double) width) < this.f60501a) {
            return false;
        }
        return true;
    }

    private final void f(int i10, int i11, int i12) {
        if (i11 < 0 || i12 >= i10 || i11 > i12 || i11 > i12) {
            return;
        }
        while (this.f60508h.get(i11) == null) {
            wf.a.C0922a.f(wf.a.f74274a, f60500j, "offer position  " + i11, false, 4, null);
            this.f60508h.put(i11, Long.valueOf(System.currentTimeMillis()));
            if (i11 == i12) {
                return;
            } else {
                i11++;
            }
        }
    }

    public static void h(b bVar, LinearLayoutManager linearLayoutManager, int i10, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z11 = false;
        }
        bVar.g(linearLayoutManager, i10, z10, z11);
    }

    private final void j(int i10) {
        if (this.f60508h.get(i10) == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l10 = (Long) this.f60508h.get(i10);
        long jLongValue = l10 != null ? l10.longValue() : jCurrentTimeMillis;
        this.f60508h.remove(i10);
        long j10 = jCurrentTimeMillis - jLongValue;
        wf.a.C0922a.f(wf.a.f74274a, f60500j, "out position " + i10 + " duration " + j10, false, 4, null);
        if (j10 <= 1000) {
            return;
        }
        this.f60502b.a(i10, j10, null);
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
        SparseArray sparseArray = this.f60508h;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            Long l10 = (Long) sparseArray.valueAt(i10);
            long jLongValue = jCurrentTimeMillis - (l10 != null ? l10.longValue() : jCurrentTimeMillis);
            wf.a.C0922a.f(wf.a.f74274a, f60500j, "clearCache out position " + iKeyAt + " duration " + jLongValue, false, 4, null);
            this.f60502b.a(iKeyAt, jLongValue, null);
        }
        this.f60508h.clear();
    }

    public final void g(LinearLayoutManager manager, int i10, boolean z10, boolean z11) {
        Intrinsics.h(manager, "manager");
        if (z10) {
            View viewFindViewByPosition = manager.findViewByPosition(i10);
            if (z11) {
                f(manager.getItemCount(), i10, i10);
                return;
            }
            boolean zD = d(viewFindViewByPosition);
            wf.a.C0922a.f(wf.a.f74274a, f60500j, "firstView " + viewFindViewByPosition + " export " + zD + " count " + manager.getItemCount(), false, 4, null);
            if (zD) {
                f(manager.getItemCount(), i10, i10);
            }
        }
    }

    public final void i(LinearLayoutManager manager, boolean z10) {
        Intrinsics.h(manager, "manager");
        int iFindFirstVisibleItemPosition = manager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = manager.findLastVisibleItemPosition();
        if (!d(manager.findViewByPosition(iFindFirstVisibleItemPosition)) && this.f60505e != ExposureType.NEST_HORIZONTAL) {
            iFindFirstVisibleItemPosition++;
        }
        if (!d(manager.findViewByPosition(iFindLastVisibleItemPosition)) && this.f60505e != ExposureType.NEST_HORIZONTAL) {
            iFindLastVisibleItemPosition--;
        }
        if (this.f60506f == 0 && this.f60507g == 0) {
            f(manager.getItemCount(), iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
            this.f60506f = iFindFirstVisibleItemPosition;
            this.f60507g = iFindLastVisibleItemPosition;
            return;
        }
        if (z10) {
            k(manager.getItemCount(), this.f60506f, iFindFirstVisibleItemPosition - 1);
            f(manager.getItemCount(), this.f60507g + 1, iFindLastVisibleItemPosition);
        } else {
            k(manager.getItemCount(), iFindLastVisibleItemPosition + 1, this.f60507g);
            f(manager.getItemCount(), iFindFirstVisibleItemPosition, this.f60506f - 1);
        }
        this.f60506f = iFindFirstVisibleItemPosition;
        this.f60507g = iFindLastVisibleItemPosition;
    }

    @Override
    public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        Intrinsics.h(recyclerView, "recyclerView");
        wf.a.C0922a.f(wf.a.f74274a, f60500j, "newState " + i10, false, 4, null);
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            boolean z10 = false;
            if (linearLayoutManager.getOrientation() != 1 ? i10 > 0 : i11 > 0) {
                z10 = true;
            }
            i(linearLayoutManager, z10);
        }
    }

    public b(float f10, fs.a callback, boolean z10) {
        Intrinsics.h(callback, "callback");
        this.f60501a = f10;
        this.f60502b = callback;
        this.f60503c = z10;
        this.f60505e = ExposureType.VERTICAL_FEED;
        this.f60508h = new SparseArray();
    }
}

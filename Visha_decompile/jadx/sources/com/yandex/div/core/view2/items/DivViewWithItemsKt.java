package com.yandex.div.core.view2.items;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.DivSizeUnit;
import defpackage.s74;
import kotlin.NoWhenBranchMatchedException;

public abstract class DivViewWithItemsKt {

    public class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[Direction.values().length];
            try {
                iArr[Direction.PREVIOUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Direction.NEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
            int[] iArr2 = new int[DivSizeUnit.values().length];
            try {
                iArr2[DivSizeUnit.PX.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[DivSizeUnit.SP.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DivSizeUnit.DP.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            b = iArr2;
        }
    }

    public static final boolean g(RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManagerK = k(recyclerView);
        Integer numValueOf = linearLayoutManagerK != null ? Integer.valueOf(linearLayoutManagerK.getOrientation()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            return recyclerView.canScrollHorizontally(1);
        }
        if (numValueOf != null && numValueOf.intValue() == 1) {
            return recyclerView.canScrollVertically(1);
        }
        return false;
    }

    public static final int h(RecyclerView recyclerView, Direction direction) {
        LinearLayoutManager linearLayoutManagerK = k(recyclerView);
        if (linearLayoutManagerK == null) {
            return -1;
        }
        int i = a.a[direction.ordinal()];
        if (i == 1) {
            return linearLayoutManagerK.findFirstCompletelyVisibleItemPosition();
        }
        if (i == 2) {
            return g(recyclerView) ? linearLayoutManagerK.findFirstCompletelyVisibleItemPosition() : linearLayoutManagerK.findLastCompletelyVisibleItemPosition();
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final int i(RecyclerView recyclerView, Direction direction) {
        Integer numValueOf = Integer.valueOf(h(recyclerView, direction));
        if (numValueOf.intValue() == -1) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        LinearLayoutManager linearLayoutManagerK = k(recyclerView);
        return linearLayoutManagerK != null ? p(linearLayoutManagerK, direction) : -1;
    }

    public static final int j(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            return layoutManager.getItemCount();
        }
        return 0;
    }

    public static final LinearLayoutManager k(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return (LinearLayoutManager) layoutManager;
        }
        return null;
    }

    public static final int l(RecyclerView recyclerView) {
        LinearLayoutManager linearLayoutManagerK = k(recyclerView);
        Integer numValueOf = linearLayoutManagerK != null ? Integer.valueOf(linearLayoutManagerK.getOrientation()) : null;
        return (numValueOf != null && numValueOf.intValue() == 0) ? recyclerView.computeHorizontalScrollOffset() : recyclerView.computeVerticalScrollOffset();
    }

    public static final int m(RecyclerView recyclerView) {
        int iComputeVerticalScrollRange;
        int paddingBottom;
        LinearLayoutManager linearLayoutManagerK = k(recyclerView);
        Integer numValueOf = linearLayoutManagerK != null ? Integer.valueOf(linearLayoutManagerK.getOrientation()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            iComputeVerticalScrollRange = (recyclerView.computeHorizontalScrollRange() - recyclerView.getWidth()) + recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            iComputeVerticalScrollRange = (recyclerView.computeVerticalScrollRange() - recyclerView.getHeight()) + recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return iComputeVerticalScrollRange + paddingBottom;
    }

    public static final void n(RecyclerView recyclerView, int i, DivSizeUnit divSizeUnit, DisplayMetrics displayMetrics, boolean z) {
        int i2 = a.b[divSizeUnit.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                i = BaseDivViewExtensionsKt.t0(Integer.valueOf(i), displayMetrics);
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i = BaseDivViewExtensionsKt.L(Integer.valueOf(i), displayMetrics);
            }
        }
        LinearLayoutManager linearLayoutManagerK = k(recyclerView);
        if (linearLayoutManagerK == null) {
            return;
        }
        s74 divViewWithItemsKt$scrollTo$scroll$1 = z ? new DivViewWithItemsKt$scrollTo$scroll$1(recyclerView) : new DivViewWithItemsKt$scrollTo$scroll$2(recyclerView);
        int orientation = linearLayoutManagerK.getOrientation();
        if (orientation == 0) {
            divViewWithItemsKt$scrollTo$scroll$1.invoke(Integer.valueOf(i - recyclerView.computeHorizontalScrollOffset()), 0);
        } else {
            if (orientation != 1) {
                return;
            }
            divViewWithItemsKt$scrollTo$scroll$1.invoke(0, Integer.valueOf(i - recyclerView.computeVerticalScrollOffset()));
        }
    }

    public static final void o(RecyclerView recyclerView, DisplayMetrics displayMetrics, boolean z) {
        n(recyclerView, m(recyclerView), DivSizeUnit.PX, displayMetrics, z);
    }

    public static final int p(LinearLayoutManager linearLayoutManager, Direction direction) {
        int i = a.a[direction.ordinal()];
        if (i == 1) {
            return linearLayoutManager.findLastVisibleItemPosition();
        }
        if (i == 2) {
            return linearLayoutManager.findFirstVisibleItemPosition();
        }
        throw new NoWhenBranchMatchedException();
    }
}

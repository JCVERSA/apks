package com.transsion.moviedetail.staff;

import android.graphics.Rect;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class v extends RecyclerView.r {

    private final s f45610a;

    private final Function2 f45611b;

    private RecyclerView f45612c;

    private final String f45613d;

    private int f45614e;

    private int f45615f;

    private int f45616g;

    private int f45617h;

    private int f45618i;

    private SparseArray f45619j;

    public v(s adapter, Function2 callback) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(callback, "callback");
        this.f45610a = adapter;
        this.f45611b = callback;
        this.f45613d = "MovieStaffScroll";
        this.f45616g = -1;
        this.f45617h = -1;
        this.f45618i = -1;
        this.f45619j = new SparseArray();
    }

    private final void h(int i10, int i11) {
        if (i10 > i11) {
            return;
        }
        try {
            int itemCount = this.f45610a.getItemCount();
            if (this.f45616g == i10 && i11 == this.f45617h && this.f45618i == itemCount) {
                return;
            }
            this.f45618i = itemCount;
            wf.a.C0922a.f(wf.a.f74274a, this.f45613d, "showChange firstPosition:" + i10 + "  lastPosition:" + i11, false, 4, null);
            if (this.f45616g >= 0 && this.f45617h >= 0) {
                ArrayList arrayList = new ArrayList();
                IntIterator intIteratorA = androidx.core.util.k.a(this.f45619j);
                while (intIteratorA.hasNext()) {
                    int iIntValue = intIteratorA.next().intValue();
                    if (i10 > iIntValue || iIntValue > i11) {
                        Function2 function2 = this.f45611b;
                        Integer numValueOf = Integer.valueOf(iIntValue);
                        Object obj = this.f45619j.get(iIntValue);
                        Intrinsics.g(obj, "get(...)");
                        function2.invoke(numValueOf, obj);
                        arrayList.add(Integer.valueOf(iIntValue));
                    } else if (iIntValue >= 0 && iIntValue < this.f45610a.getItemCount() && !Intrinsics.c(((Pair) this.f45619j.get(iIntValue)).getFirst(), this.f45610a.getItem(iIntValue))) {
                        Function2 function3 = this.f45611b;
                        Integer numValueOf2 = Integer.valueOf(iIntValue);
                        Object obj2 = this.f45619j.get(iIntValue);
                        Intrinsics.g(obj2, "get(...)");
                        function3.invoke(numValueOf2, obj2);
                        this.f45619j.put(iIntValue, new Pair(this.f45610a.getItem(iIntValue), Long.valueOf(SystemClock.elapsedRealtime())));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.f45619j.remove(((Number) it.next()).intValue());
                }
                if (i10 <= i11) {
                    int i12 = i10;
                    while (true) {
                        Object item = this.f45610a.getItem(i12);
                        if (this.f45619j.get(i12) == null) {
                            this.f45619j.put(i12, new Pair(item, Long.valueOf(SystemClock.elapsedRealtime())));
                        }
                        if (i12 == i11) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
            } else if (i10 <= i11) {
                int i13 = i10;
                while (true) {
                    this.f45619j.put(i13, new Pair(this.f45610a.getItem(i13), Long.valueOf(SystemClock.elapsedRealtime())));
                    if (i13 == i11) {
                        break;
                    } else {
                        i13++;
                    }
                }
            }
            this.f45616g = i10;
            this.f45617h = i11;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void d(AppBarLayout appBarLayout, int i10) {
        Intrinsics.h(appBarLayout, "appBarLayout");
        wf.a.C0922a.f(wf.a.f74274a, this.f45613d, "appbarScroll  moveY:" + i10, false, 4, null);
        try {
            this.f45615f = i10;
            int iC = com.blankj.utilcode.util.y.c();
            int iA = com.blankj.utilcode.util.d.a();
            RecyclerView recyclerView = this.f45612c;
            int iE = 0;
            int top = (iC - iA) - (recyclerView != null ? recyclerView.getTop() : 0);
            RecyclerView recyclerView2 = this.f45612c;
            GridLayoutManager gridLayoutManager = (GridLayoutManager) (recyclerView2 != null ? recyclerView2.getLayoutManager() : null);
            if (gridLayoutManager == null) {
                return;
            }
            int iFindFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
            int i11 = -1;
            if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
                int i12 = 0;
                int i13 = -1;
                while (true) {
                    View viewFindViewByPosition = gridLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    if (viewFindViewByPosition != null) {
                        wf.a.C0922a c0922a = wf.a.f74274a;
                        wf.a.C0922a.f(c0922a, this.f45613d, "appbarScroll  *****  index:" + iFindFirstVisibleItemPosition + "  totalY:" + this.f45614e + "    top:" + viewFindViewByPosition.getTop(), false, 4, null);
                        if (viewFindViewByPosition.getTop() >= 0) {
                            if (viewFindViewByPosition.getBottom() >= viewFindViewByPosition.getHeight() * 0.7f) {
                                if (gridLayoutManager.Y().e(iFindFirstVisibleItemPosition, gridLayoutManager.U()) == 0) {
                                    if (i13 == -1) {
                                        i13 = iFindFirstVisibleItemPosition;
                                    }
                                    int height = viewFindViewByPosition.getHeight();
                                    int i14 = i12 + height;
                                    if (i14 >= top) {
                                        if (((top - i12) * 100) / height < 70) {
                                            iE = RangesKt.e(iFindFirstVisibleItemPosition - 1, 0);
                                            break;
                                        }
                                        int i15 = iFindFirstVisibleItemPosition + 1;
                                        if (i15 <= iFindLastVisibleItemPosition) {
                                            while (true) {
                                                int i16 = iFindFirstVisibleItemPosition;
                                                iFindFirstVisibleItemPosition = i15;
                                                if (gridLayoutManager.Y().e(iFindFirstVisibleItemPosition, gridLayoutManager.U()) != 0) {
                                                    if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                                                        break;
                                                    } else {
                                                        i15 = iFindFirstVisibleItemPosition + 1;
                                                    }
                                                } else {
                                                    iFindFirstVisibleItemPosition = i16;
                                                    break;
                                                }
                                            }
                                        }
                                        iE = iFindFirstVisibleItemPosition;
                                        break;
                                    }
                                    i12 = i14;
                                }
                            } else {
                                wf.a.C0922a.f(c0922a, this.f45613d, "index:" + iFindFirstVisibleItemPosition + "  标题栏档住了，不计入", false, 4, null);
                            }
                        } else {
                            return;
                        }
                    }
                    if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                        break;
                    } else {
                        iFindFirstVisibleItemPosition++;
                    }
                }
                i11 = i13;
            }
            wf.a.C0922a.f(wf.a.f74274a, this.f45613d, "firstVisiblePosition:" + i11 + "   realLastVisiblePosition:" + iE, false, 4, null);
            h(i11, iE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void e(int i10, int i11) {
        while (i10 < i11) {
            try {
                Pair pair = (Pair) this.f45619j.get(i10);
                if (pair != null) {
                    this.f45611b.invoke(Integer.valueOf(i10), pair);
                    this.f45619j.remove(i10);
                }
                i10++;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    public final void f() {
        try {
            IntIterator intIteratorA = androidx.core.util.k.a(this.f45619j);
            while (intIteratorA.hasNext()) {
                int iIntValue = intIteratorA.next().intValue();
                Function2 function2 = this.f45611b;
                Integer numValueOf = Integer.valueOf(iIntValue);
                Object obj = this.f45619j.get(iIntValue);
                Intrinsics.g(obj, "get(...)");
                function2.invoke(numValueOf, obj);
            }
            this.f45619j.clear();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void g() {
        try {
            int i10 = this.f45616g;
            if (i10 >= 0) {
                int i11 = this.f45617h;
                this.f45616g = -1;
                this.f45617h = -1;
                h(i10, i11);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i10, i11);
        this.f45614e += i11;
        this.f45612c = recyclerView;
        if (this.f45615f >= 0) {
            return;
        }
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        int iFindFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
        for (int i12 = iFindFirstVisibleItemPosition; i12 < iFindLastVisibleItemPosition; i12++) {
            View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i12);
            if (viewFindViewByPosition != null) {
                Rect rect = new Rect();
                viewFindViewByPosition.getLocalVisibleRect(rect);
                wf.a.C0922a c0922a = wf.a.f74274a;
                wf.a.C0922a.f(c0922a, this.f45613d, "index:" + i12 + "  totalY:" + this.f45614e + "    dy:" + i11 + " top:" + recyclerView.getTop(), false, 4, null);
                wf.a.C0922a.f(c0922a, this.f45613d, "index:" + i12 + "  firstView top:" + viewFindViewByPosition.getTop() + "    bottom:" + viewFindViewByPosition.getBottom(), false, 4, null);
                if (viewFindViewByPosition.getBottom() >= viewFindViewByPosition.getHeight() * 0.7f) {
                    if ((rect.height() * 100) / viewFindViewByPosition.getHeight() >= 70) {
                        iFindFirstVisibleItemPosition = i12;
                        break;
                    }
                } else {
                    wf.a.C0922a.f(c0922a, this.f45613d, "index:" + i12 + "  标题栏档住了，不计入", false, 4, null);
                }
            }
        }
        if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            int i13 = iFindLastVisibleItemPosition;
            while (true) {
                View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i13);
                if (viewFindViewByPosition2 != null) {
                    Rect rect2 = new Rect();
                    viewFindViewByPosition2.getLocalVisibleRect(rect2);
                    if ((rect2.height() * 100) / viewFindViewByPosition2.getHeight() >= 70) {
                        iFindLastVisibleItemPosition = i13;
                        break;
                    }
                }
                if (i13 == iFindFirstVisibleItemPosition) {
                    break;
                } else {
                    i13--;
                }
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f45613d, "firstVisiblePosition:" + iFindFirstVisibleItemPosition + "   lastVisiblePosition:" + iFindLastVisibleItemPosition, false, 4, null);
        h(iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
    }
}

package com.yanzhenjie.recyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.yanzhenjie.recyclerview.touch.DefaultItemTouchHelper;
import com.yanzhenjie.recyclerview.widget.DefaultLoadMoreView;
import defpackage.af7;
import defpackage.bf7;
import defpackage.d8;
import defpackage.q7a;
import defpackage.r7a;
import defpackage.we7;
import defpackage.xe7;
import defpackage.ye7;
import defpackage.ze7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SwipeRecyclerView extends RecyclerView {
    public static final int LEFT_DIRECTION = 1;
    public static final int RIGHT_DIRECTION = -1;
    public boolean A;
    public g B;
    public int e;
    public SwipeMenuLayout f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public DefaultItemTouchHelper k;
    public r7a l;
    public ye7 m;
    public we7 n;
    public xe7 o;
    public d8 p;
    public boolean q;
    public List r;
    public RecyclerView.AdapterDataObserver s;
    public List t;
    public List u;
    public int v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    public class a extends GridLayoutManager.SpanSizeLookup {
        public final GridLayoutManager a;
        public final GridLayoutManager.SpanSizeLookup b;

        public a(GridLayoutManager gridLayoutManager, GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.a = gridLayoutManager;
            this.b = spanSizeLookup;
        }

        @Override
        public int getSpanSize(int i) {
            if (SwipeRecyclerView.this.p.t(i) || SwipeRecyclerView.this.p.s(i)) {
                return this.a.getSpanCount();
            }
            GridLayoutManager.SpanSizeLookup spanSizeLookup = this.b;
            if (spanSizeLookup != null) {
                return spanSizeLookup.getSpanSize(i - SwipeRecyclerView.this.getHeaderCount());
            }
            return 1;
        }
    }

    public static class c implements we7 {
        public SwipeRecyclerView a;
        public we7 b;

        public c(SwipeRecyclerView swipeRecyclerView, we7 we7Var) {
            this.a = swipeRecyclerView;
            this.b = we7Var;
        }

        @Override
        public void a(View view, int i) {
            int headerCount = i - this.a.getHeaderCount();
            if (headerCount >= 0) {
                this.b.a(view, headerCount);
            }
        }
    }

    public static class d implements xe7 {
        public SwipeRecyclerView a;
        public xe7 b;

        public d(SwipeRecyclerView swipeRecyclerView, xe7 xe7Var) {
            this.a = swipeRecyclerView;
            this.b = xe7Var;
        }

        @Override
        public void a(View view, int i) {
            int headerCount = i - this.a.getHeaderCount();
            if (headerCount >= 0) {
                this.b.a(view, headerCount);
            }
        }
    }

    public static class e implements ye7 {
        public SwipeRecyclerView a;
        public ye7 b;

        public e(SwipeRecyclerView swipeRecyclerView, ye7 ye7Var) {
            this.a = swipeRecyclerView;
            this.b = ye7Var;
        }

        @Override
        public void a(q7a q7aVar, int i) {
            int headerCount = i - this.a.getHeaderCount();
            if (headerCount >= 0) {
                this.b.a(q7aVar, headerCount);
            }
        }
    }

    public interface f {
    }

    public interface g {
        void onLoadError(int i, String str);

        void onLoadFinish(boolean z, boolean z2);

        void onLoading();

        void onWaitToLoadMore(f fVar);
    }

    public SwipeRecyclerView(Context context) {
        this(context, null);
    }

    public void addFooterView(View view) {
        this.u.add(view);
        d8 d8Var = this.p;
        if (d8Var != null) {
            d8Var.g(view);
        }
    }

    public void addHeaderView(View view) {
        this.t.add(view);
        d8 d8Var = this.p;
        if (d8Var != null) {
            d8Var.i(view);
        }
    }

    public final void b(String str) {
        if (this.p != null) {
            throw new IllegalStateException(str);
        }
    }

    public final void c() {
        if (this.y) {
            return;
        }
        if (!this.x) {
            g gVar = this.B;
            if (gVar != null) {
                gVar.onWaitToLoadMore(null);
                return;
            }
            return;
        }
        if (this.w || this.z || !this.A) {
            return;
        }
        this.w = true;
        g gVar2 = this.B;
        if (gVar2 != null) {
            gVar2.onLoading();
        }
    }

    public final View d(View view) {
        if (view instanceof SwipeMenuLayout) {
            return view;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(view);
        while (!arrayList.isEmpty()) {
            View view2 = (View) arrayList.remove(0);
            if (view2 instanceof ViewGroup) {
                if (view2 instanceof SwipeMenuLayout) {
                    return view2;
                }
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    arrayList.add(viewGroup.getChildAt(i));
                }
            }
        }
        return view;
    }

    public final boolean e(int i, int i2, boolean z) {
        int i3 = this.h - i;
        int i4 = this.i - i2;
        if (Math.abs(i3) > this.e && Math.abs(i3) > Math.abs(i4)) {
            return false;
        }
        if (Math.abs(i4) >= this.e || Math.abs(i3) >= this.e) {
            return z;
        }
        return false;
    }

    public final void f() {
        if (this.k == null) {
            DefaultItemTouchHelper defaultItemTouchHelper = new DefaultItemTouchHelper();
            this.k = defaultItemTouchHelper;
            defaultItemTouchHelper.attachToRecyclerView(this);
        }
    }

    public int getFooterCount() {
        d8 d8Var = this.p;
        if (d8Var == null) {
            return 0;
        }
        return d8Var.k();
    }

    public int getHeaderCount() {
        d8 d8Var = this.p;
        if (d8Var == null) {
            return 0;
        }
        return d8Var.getHeaderCount();
    }

    public int getItemViewType(int i) {
        d8 d8Var = this.p;
        if (d8Var == null) {
            return 0;
        }
        return d8Var.getItemViewType(i);
    }

    public RecyclerView.Adapter getOriginAdapter() {
        d8 d8Var = this.p;
        if (d8Var == null) {
            return null;
        }
        return d8Var.l();
    }

    public boolean isItemViewSwipeEnabled() {
        f();
        return this.k.a();
    }

    public boolean isLongPressDragEnabled() {
        f();
        return this.k.b();
    }

    public boolean isSwipeItemMenuEnabled() {
        return this.q;
    }

    public void loadMoreError(int i, String str) {
        this.w = false;
        this.y = true;
        g gVar = this.B;
        if (gVar != null) {
            gVar.onLoadError(i, str);
        }
    }

    public final void loadMoreFinish(boolean z, boolean z2) {
        this.w = false;
        this.y = false;
        this.z = z;
        this.A = z2;
        g gVar = this.B;
        if (gVar != null) {
            gVar.onLoadFinish(z, z2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0042  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        SwipeMenuLayout swipeMenuLayout;
        boolean z;
        SwipeMenuLayout swipeMenuLayout2;
        ViewParent parent;
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (this.j || this.l == null) {
            return zOnInterceptTouchEvent;
        }
        boolean z2 = true;
        if (motionEvent.getPointerCount() > 1) {
            return true;
        }
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int childAdapterPosition = getChildAdapterPosition(findChildViewUnder(x, y));
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(childAdapterPosition);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            View viewD = d(viewHolderFindViewHolderForAdapterPosition.itemView);
            if (viewD instanceof SwipeMenuLayout) {
                swipeMenuLayout = (SwipeMenuLayout) viewD;
            } else {
                swipeMenuLayout = null;
            }
        } else {
            swipeMenuLayout = null;
        }
        boolean z3 = this.q && !this.r.contains(Integer.valueOf(childAdapterPosition));
        if (swipeMenuLayout != null) {
            swipeMenuLayout.setSwipeEnable(z3);
        }
        if (!z3) {
            return zOnInterceptTouchEvent;
        }
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    zOnInterceptTouchEvent = e(x, y, zOnInterceptTouchEvent);
                    if (this.f == null || (parent = getParent()) == null) {
                        return zOnInterceptTouchEvent;
                    }
                    int i = this.h - x;
                    boolean z4 = i > 0 && (this.f.hasRightMenu() || this.f.isLeftCompleteOpen());
                    boolean z5 = i < 0 && (this.f.hasLeftMenu() || this.f.isRightCompleteOpen());
                    if (!z4 && !z5) {
                        z2 = false;
                    }
                    parent.requestDisallowInterceptTouchEvent(z2);
                } else if (action != 3) {
                    return zOnInterceptTouchEvent;
                }
            }
            return e(x, y, zOnInterceptTouchEvent);
        }
        this.h = x;
        this.i = y;
        if (childAdapterPosition == this.g || (swipeMenuLayout2 = this.f) == null || !swipeMenuLayout2.isMenuOpen()) {
            z = false;
        } else {
            this.f.smoothCloseMenu();
            z = true;
        }
        if (z) {
            this.f = null;
            this.g = -1;
            return z;
        }
        if (swipeMenuLayout == null) {
            return z;
        }
        this.f = swipeMenuLayout;
        this.g = childAdapterPosition;
        return z;
    }

    @Override
    public void onScrollStateChanged(int i) {
        this.v = i;
    }

    @Override
    public void onScrolled(int i, int i2) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int itemCount = layoutManager.getItemCount();
            if (itemCount > 0 && itemCount == linearLayoutManager.findLastVisibleItemPosition() + 1) {
                int i3 = this.v;
                if (i3 == 1 || i3 == 2) {
                    c();
                    return;
                }
                return;
            }
            return;
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int itemCount2 = layoutManager.getItemCount();
            if (itemCount2 <= 0) {
                return;
            }
            int[] iArrFindLastCompletelyVisibleItemPositions = staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(null);
            if (itemCount2 == iArrFindLastCompletelyVisibleItemPositions[iArrFindLastCompletelyVisibleItemPositions.length - 1] + 1) {
                int i4 = this.v;
                if (i4 == 1 || i4 == 2) {
                    c();
                }
            }
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        SwipeMenuLayout swipeMenuLayout;
        if (motionEvent.getAction() == 2 && (swipeMenuLayout = this.f) != null && swipeMenuLayout.isMenuOpen()) {
            this.f.smoothCloseMenu();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void removeFooterView(View view) {
        this.u.remove(view);
        d8 d8Var = this.p;
        if (d8Var != null) {
            d8Var.w(view);
        }
    }

    public void removeHeaderView(View view) {
        this.t.remove(view);
        d8 d8Var = this.p;
        if (d8Var != null) {
            d8Var.x(view);
        }
    }

    @Override
    public void setAdapter(RecyclerView.Adapter adapter) {
        d8 d8Var = this.p;
        if (d8Var != null) {
            d8Var.l().unregisterAdapterDataObserver(this.s);
        }
        if (adapter == null) {
            this.p = null;
        } else {
            adapter.registerAdapterDataObserver(this.s);
            d8 d8Var2 = new d8(getContext(), adapter);
            this.p = d8Var2;
            d8Var2.setOnItemClickListener(this.n);
            this.p.setOnItemLongClickListener(this.o);
            this.p.y(this.l);
            this.p.setOnItemMenuClickListener(this.m);
            if (this.t.size() > 0) {
                Iterator it = this.t.iterator();
                while (it.hasNext()) {
                    this.p.h((View) it.next());
                }
            }
            if (this.u.size() > 0) {
                Iterator it2 = this.u.iterator();
                while (it2.hasNext()) {
                    this.p.d((View) it2.next());
                }
            }
        }
        super.setAdapter(this.p);
    }

    public void setAutoLoadMore(boolean z) {
        this.x = z;
    }

    public void setItemViewSwipeEnabled(boolean z) {
        f();
        this.j = z;
        this.k.c(z);
    }

    @Override
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new a(gridLayoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
        super.setLayoutManager(layoutManager);
    }

    public void setLoadMoreListener(f fVar) {
    }

    public void setLoadMoreView(g gVar) {
        this.B = gVar;
    }

    public void setLongPressDragEnabled(boolean z) {
        f();
        this.k.d(z);
    }

    public void setOnItemClickListener(we7 we7Var) {
        if (we7Var == null) {
            return;
        }
        b("Cannot set item click listener, setAdapter has already been called.");
        this.n = new c(this, we7Var);
    }

    public void setOnItemLongClickListener(xe7 xe7Var) {
        if (xe7Var == null) {
            return;
        }
        b("Cannot set item long click listener, setAdapter has already been called.");
        this.o = new d(this, xe7Var);
    }

    public void setOnItemMenuClickListener(ye7 ye7Var) {
        if (ye7Var == null) {
            return;
        }
        b("Cannot set menu item click listener, setAdapter has already been called.");
        this.m = new e(this, ye7Var);
    }

    public void setOnItemMoveListener(ze7 ze7Var) {
        f();
        this.k.setOnItemMoveListener(ze7Var);
    }

    public void setOnItemMovementListener(af7 af7Var) {
        f();
        this.k.setOnItemMovementListener(af7Var);
    }

    public void setOnItemStateChangedListener(bf7 bf7Var) {
        f();
        this.k.setOnItemStateChangedListener(bf7Var);
    }

    public void setSwipeItemMenuEnabled(boolean z) {
        this.q = z;
    }

    public void setSwipeMenuCreator(r7a r7aVar) {
        if (r7aVar == null) {
            return;
        }
        b("Cannot set menu creator, setAdapter has already been called.");
        this.l = r7aVar;
    }

    public void smoothCloseMenu() {
        SwipeMenuLayout swipeMenuLayout = this.f;
        if (swipeMenuLayout == null || !swipeMenuLayout.isMenuOpen()) {
            return;
        }
        this.f.smoothCloseMenu();
    }

    public void smoothOpenLeftMenu(int i) {
        smoothOpenMenu(i, 1, 200);
    }

    public void smoothOpenMenu(int i, int i2, int i3) {
        SwipeMenuLayout swipeMenuLayout = this.f;
        if (swipeMenuLayout != null && swipeMenuLayout.isMenuOpen()) {
            this.f.smoothCloseMenu();
        }
        int headerCount = i + getHeaderCount();
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(headerCount);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            View viewD = d(viewHolderFindViewHolderForAdapterPosition.itemView);
            if (viewD instanceof SwipeMenuLayout) {
                SwipeMenuLayout swipeMenuLayout2 = (SwipeMenuLayout) viewD;
                this.f = swipeMenuLayout2;
                if (i2 == -1) {
                    this.g = headerCount;
                    swipeMenuLayout2.smoothOpenRightMenu(i3);
                } else if (i2 == 1) {
                    this.g = headerCount;
                    swipeMenuLayout2.smoothOpenLeftMenu(i3);
                }
            }
        }
    }

    public void smoothOpenRightMenu(int i) {
        smoothOpenMenu(i, -1, 200);
    }

    public void startDrag(RecyclerView.ViewHolder viewHolder) {
        f();
        this.k.startDrag(viewHolder);
    }

    public void startSwipe(RecyclerView.ViewHolder viewHolder) {
        f();
        this.k.startSwipe(viewHolder);
    }

    public void useDefaultLoadMore() {
        DefaultLoadMoreView defaultLoadMoreView = new DefaultLoadMoreView(getContext());
        addFooterView(defaultLoadMoreView);
        setLoadMoreView(defaultLoadMoreView);
    }

    public class b extends RecyclerView.AdapterDataObserver {
        public b() {
        }

        @Override
        public void onChanged() {
            SwipeRecyclerView.this.p.notifyDataSetChanged();
        }

        @Override
        public void onItemRangeChanged(int i, int i2) {
            SwipeRecyclerView.this.p.notifyItemRangeChanged(i + SwipeRecyclerView.this.getHeaderCount(), i2);
        }

        @Override
        public void onItemRangeInserted(int i, int i2) {
            SwipeRecyclerView.this.p.notifyItemRangeInserted(i + SwipeRecyclerView.this.getHeaderCount(), i2);
        }

        @Override
        public void onItemRangeMoved(int i, int i2, int i3) {
            SwipeRecyclerView.this.p.notifyItemMoved(i + SwipeRecyclerView.this.getHeaderCount(), i2 + SwipeRecyclerView.this.getHeaderCount());
        }

        @Override
        public void onItemRangeRemoved(int i, int i2) {
            SwipeRecyclerView.this.p.notifyItemRangeRemoved(i + SwipeRecyclerView.this.getHeaderCount(), i2);
        }

        @Override
        public void onItemRangeChanged(int i, int i2, Object obj) {
            SwipeRecyclerView.this.p.notifyItemRangeChanged(i + SwipeRecyclerView.this.getHeaderCount(), i2, obj);
        }
    }

    public SwipeRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean isSwipeItemMenuEnabled(int i) {
        return !this.r.contains(Integer.valueOf(i));
    }

    public void setSwipeItemMenuEnabled(int i, boolean z) {
        if (z) {
            if (this.r.contains(Integer.valueOf(i))) {
                this.r.remove(Integer.valueOf(i));
            }
        } else {
            if (this.r.contains(Integer.valueOf(i))) {
                return;
            }
            this.r.add(Integer.valueOf(i));
        }
    }

    public void smoothOpenLeftMenu(int i, int i2) {
        smoothOpenMenu(i, 1, i2);
    }

    public void smoothOpenRightMenu(int i, int i2) {
        smoothOpenMenu(i, -1, i2);
    }

    public SwipeRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = -1;
        this.q = true;
        this.r = new ArrayList();
        this.s = new b();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = -1;
        this.w = false;
        this.x = true;
        this.y = false;
        this.z = true;
        this.A = false;
        this.e = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }
}

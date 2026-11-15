package com.transsion.widgetslistitemlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.olb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class OSSlideMutiSelectHotZoneLayout extends FrameLayout {
    public RecyclerView b;
    public GestureDetectorCompat c;
    public RecyclerView.Adapter d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public int p;
    public final SparseBooleanArray q;
    public boolean r;
    public boolean s;
    public boolean t;
    public int u;
    public float v;
    public final SparseBooleanArray w;
    public final RecyclerView.AdapterDataObserver x;
    public final Runnable y;
    public final RecyclerView.OnItemTouchListener z;

    public class a extends RecyclerView.AdapterDataObserver {
        public a() {
        }

        @Override
        public void onChanged() {
            OSSlideMutiSelectHotZoneLayout.this.N();
        }

        @Override
        public void onItemRangeInserted(int i, int i2) {
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(OSSlideMutiSelectHotZoneLayout.this.w.size());
            for (int i3 = 0; i3 < OSSlideMutiSelectHotZoneLayout.this.w.size(); i3++) {
                int iKeyAt = OSSlideMutiSelectHotZoneLayout.this.w.keyAt(i3);
                boolean zValueAt = OSSlideMutiSelectHotZoneLayout.this.w.valueAt(i3);
                if (iKeyAt >= i) {
                    iKeyAt += i2;
                }
                sparseBooleanArray.put(iKeyAt, zValueAt);
            }
            OSSlideMutiSelectHotZoneLayout.this.w.clear();
            for (int i4 = 0; i4 < sparseBooleanArray.size(); i4++) {
                OSSlideMutiSelectHotZoneLayout.this.w.put(sparseBooleanArray.keyAt(i4), sparseBooleanArray.valueAt(i4));
            }
            OSSlideMutiSelectHotZoneLayout.this.B();
            OSSlideMutiSelectHotZoneLayout.this.r();
        }

        @Override
        public void onItemRangeRemoved(int i, int i2) {
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(OSSlideMutiSelectHotZoneLayout.this.w.size());
            for (int i3 = 0; i3 < OSSlideMutiSelectHotZoneLayout.this.w.size(); i3++) {
                int iKeyAt = OSSlideMutiSelectHotZoneLayout.this.w.keyAt(i3);
                boolean zValueAt = OSSlideMutiSelectHotZoneLayout.this.w.valueAt(i3);
                if (iKeyAt < i) {
                    sparseBooleanArray.put(iKeyAt, zValueAt);
                } else if (iKeyAt >= i + i2) {
                    sparseBooleanArray.put(iKeyAt - i2, zValueAt);
                }
            }
            OSSlideMutiSelectHotZoneLayout.this.w.clear();
            for (int i4 = 0; i4 < sparseBooleanArray.size(); i4++) {
                OSSlideMutiSelectHotZoneLayout.this.w.put(sparseBooleanArray.keyAt(i4), sparseBooleanArray.valueAt(i4));
            }
            OSSlideMutiSelectHotZoneLayout.this.B();
            OSSlideMutiSelectHotZoneLayout.this.r();
        }
    }

    public class b implements RecyclerView.OnItemTouchListener {
        public b() {
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (!OSSlideMutiSelectHotZoneLayout.this.J(motionEvent)) {
                return OSSlideMutiSelectHotZoneLayout.this.c.onTouchEvent(motionEvent) && motionEvent.getActionMasked() == 1;
            }
            OSSlideMutiSelectHotZoneLayout.this.q(true);
            return true;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (OSSlideMutiSelectHotZoneLayout.this.J(motionEvent)) {
                OSSlideMutiSelectHotZoneLayout.this.u(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 1 || actionMasked == 3) {
                    OSSlideMutiSelectHotZoneLayout.this.q(false);
                }
            }
        }
    }

    public class c extends GestureDetector.SimpleOnGestureListener {
        public c() {
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            View viewFindChildViewUnder;
            int childAdapterPosition;
            if (!OSSlideMutiSelectHotZoneLayout.this.l || OSSlideMutiSelectHotZoneLayout.this.b == null || (viewFindChildViewUnder = OSSlideMutiSelectHotZoneLayout.this.b.findChildViewUnder(motionEvent.getX(), motionEvent.getY())) == null || (childAdapterPosition = OSSlideMutiSelectHotZoneLayout.this.b.getChildAdapterPosition(viewFindChildViewUnder)) == -1 || !OSSlideMutiSelectHotZoneLayout.this.x(childAdapterPosition)) {
                return false;
            }
            OSSlideMutiSelectHotZoneLayout oSSlideMutiSelectHotZoneLayout = OSSlideMutiSelectHotZoneLayout.this;
            oSSlideMutiSelectHotZoneLayout.O(childAdapterPosition, !oSSlideMutiSelectHotZoneLayout.w.get(childAdapterPosition));
            return true;
        }
    }

    public interface d {
    }

    public interface e {
    }

    public interface f {
    }

    public OSSlideMutiSelectHotZoneLayout(Context context) {
        super(context);
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = new SparseBooleanArray();
        this.w = new SparseBooleanArray();
        this.x = new a();
        this.y = new Runnable() {
            @Override
            public final void run() {
                this.b.y();
            }
        };
        this.z = new b();
        v(context, null);
    }

    private int getAdapterItemCount() {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return 0;
        }
        return this.b.getAdapter().getItemCount();
    }

    private void setRecyclerView(@NonNull RecyclerView recyclerView) {
        if (this.b == recyclerView) {
            return;
        }
        RecyclerView.Adapter adapter = this.d;
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.x);
            this.d = null;
        }
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeOnItemTouchListener(this.z);
        }
        this.b = recyclerView;
        n();
        C(recyclerView.getAdapter());
    }

    public final void A(MotionEvent motionEvent) {
        if (this.b == null) {
            return;
        }
        float y = motionEvent.getY();
        this.v = y;
        int height = this.b.getHeight();
        int i = this.g;
        int iMax = Math.max(0, this.h);
        boolean z = y >= 0.0f && y <= ((float) i);
        int i2 = height - i;
        float f2 = i2;
        boolean z2 = y >= f2 && y <= ((float) height);
        boolean z3 = y <= ((float) (i + iMax));
        boolean z4 = y >= ((float) (i2 - iMax));
        if (this.s) {
            z = z3;
        }
        if (this.t) {
            z2 = z4;
        }
        float fMax = 1.0f;
        if (z && !z2) {
            if (y > 0.0f) {
                float f3 = i;
                fMax = Math.max(0.0f, Math.min(1.0f, (f3 - y) / f3));
            }
            this.u = (int) (this.i * fMax * (-1.0f));
            if (!this.b.canScrollVertically(-1)) {
                M();
                return;
            } else {
                if (this.s) {
                    return;
                }
                this.s = true;
                this.t = false;
                K();
                return;
            }
        }
        if (!z2 || z) {
            M();
            return;
        }
        this.u = (int) (this.i * (y < ((float) height) ? Math.max(0.0f, Math.min(1.0f, (y - f2) / i)) : 1.0f));
        if (!this.b.canScrollVertically(1)) {
            M();
        } else {
            if (this.t) {
                return;
            }
            this.t = true;
            this.s = false;
            K();
        }
    }

    public final void B() {
        int adapterItemCount = getAdapterItemCount();
        for (int size = this.w.size() - 1; size >= 0; size--) {
            int iKeyAt = this.w.keyAt(size);
            if (iKeyAt < 0 || iKeyAt >= adapterItemCount || !x(iKeyAt)) {
                this.w.delete(iKeyAt);
            }
        }
    }

    public final void C(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.d;
        if (adapter2 == adapter) {
            return;
        }
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.x);
        }
        this.d = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.x);
        }
    }

    public final void D() {
        this.j = false;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q.clear();
        M();
    }

    public final void E(int i, int i2) {
        while (i <= i2) {
            if (x(i) && this.q.indexOfKey(i) >= 0) {
                H(i, this.q.get(i));
            }
            i++;
        }
    }

    public final void F(int i, int i2) {
        while (i <= i2) {
            if (x(i) && this.q.indexOfKey(i) < 0) {
                this.q.put(i, this.w.get(i));
            }
            i++;
        }
    }

    public final void G(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return;
        }
        recyclerView.scrollBy(0, i);
        P(t(this.v));
    }

    public final boolean H(int i, boolean z) {
        if (this.w.get(i) == z) {
            return false;
        }
        if (z) {
            this.w.put(i, true);
        } else {
            this.w.delete(i);
        }
        updateItemCheckedState(i, z);
        return true;
    }

    public final void I(int i, int i2, boolean z) {
        while (i <= i2) {
            if (x(i)) {
                H(i, z);
            }
            i++;
        }
    }

    public final boolean J(MotionEvent motionEvent) {
        if (!this.l || this.b == null) {
            return false;
        }
        if (this.j) {
            return true;
        }
        if (motionEvent.getActionMasked() != 0 || !w(motionEvent)) {
            return false;
        }
        int iT = t(motionEvent.getY());
        return iT == -1 || x(iT);
    }

    public final void K() {
        RecyclerView recyclerView;
        if (this.r || (recyclerView = this.b) == null) {
            return;
        }
        this.r = true;
        recyclerView.removeCallbacks(this.y);
        ViewCompat.postOnAnimation(this.b, this.y);
    }

    public final void L(int i) {
        if (x(i)) {
            this.q.clear();
            this.q.put(i, this.w.get(i));
            this.m = i;
            this.n = i;
            this.o = i;
            this.p = i;
            H(i, this.k);
            r();
        }
    }

    public final void M() {
        RecyclerView recyclerView;
        this.t = false;
        this.s = false;
        if (!this.r || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.removeCallbacks(this.y);
        this.r = false;
    }

    public final void N() {
        B();
        r();
    }

    public final void O(int i, boolean z) {
        if (i < 0 || i >= getAdapterItemCount() || !x(i) || !H(i, z)) {
            return;
        }
        r();
    }

    public final void P(int i) {
        if (i == -1 || !x(i)) {
            return;
        }
        if (this.m == -1) {
            L(i);
        } else if (this.n != i) {
            this.n = i;
            z();
        }
    }

    public final void Q(boolean z) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.b.getChildAt(i);
            if (childAt instanceof OSListItemView) {
                ((OSListItemView) childAt).setMultiSelectMode(z);
            }
        }
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view instanceof RecyclerView) {
            setRecyclerView((RecyclerView) view);
        }
    }

    public void clearSelection(boolean z) {
        if (this.w.size() == 0) {
            return;
        }
        this.w.clear();
        if (z) {
            r();
        }
    }

    public void enterMultiSelectMode() {
        setMultiSelectMode(true);
    }

    public void exitMultiSelectMode() {
        setMultiSelectMode(false);
    }

    @NonNull
    public List<Integer> getSelectedPositions() {
        return o();
    }

    public boolean isMultiSelectMode() {
        return this.l;
    }

    public final void n() {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return;
        }
        recyclerView.removeOnItemTouchListener(this.z);
        this.b.addOnItemTouchListener(this.z);
    }

    public final List o() {
        if (this.w.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.w.size());
        for (int i = 0; i < this.w.size(); i++) {
            if (this.w.valueAt(i)) {
                arrayList.add(Integer.valueOf(this.w.keyAt(i)));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
        n();
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            C(recyclerView.getAdapter());
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        M();
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.removeOnItemTouchListener(this.z);
        }
        RecyclerView.Adapter adapter = this.d;
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.x);
            this.d = null;
        }
    }

    public final GestureDetector.SimpleOnGestureListener p() {
        return new c();
    }

    public final void q(boolean z) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return;
        }
        recyclerView.requestDisallowInterceptTouchEvent(z);
    }

    public final void r() {
    }

    public final void s() {
        if (this.b != null) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof RecyclerView) {
                setRecyclerView((RecyclerView) childAt);
                return;
            }
        }
    }

    public void setAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.getAdapter() == adapter) {
            return;
        }
        RecyclerView.Adapter adapter2 = this.d;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.x);
        }
        this.b.setAdapter(adapter);
        C(adapter);
        clearSelection(false);
        N();
    }

    public void setAutoScrollHotspotHeight(int i) {
        if (i <= 0) {
            return;
        }
        this.g = i;
    }

    public void setAutoScrollHotspotInnerThreshold(int i) {
        if (i < 0) {
            return;
        }
        this.h = i;
    }

    public void setAutoScrollMaxSpeed(int i) {
        if (i <= 0) {
            return;
        }
        this.i = i;
    }

    public void setCheckableItemProvider(@Nullable d dVar) {
        B();
        r();
    }

    public void setHotZoneRange(int i, int i2) {
        if (i <= i2) {
            return;
        }
        this.e = olb.h(getContext(), i);
        this.f = olb.h(getContext(), i2);
    }

    public void setItemChecked(int i, boolean z) {
        if (i < 0 || i >= getAdapterItemCount() || !x(i) || !H(i, z)) {
            return;
        }
        r();
    }

    public void setMultiSelectMode(boolean z) {
        if (this.l == z) {
            return;
        }
        this.l = z;
        if (!z) {
            D();
        }
        Q(z);
    }

    public void setOnMultiSelectModeChangedListener(@Nullable e eVar) {
    }

    public void setOnSelectionChangedListener(@Nullable f fVar) {
    }

    public final int t(float f2) {
        View childAt;
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return -1;
        }
        float width = recyclerView.getWidth() * 0.5f;
        int height = this.b.getHeight();
        if (f2 < 0.0f) {
            View childAt2 = this.b.getChildAt(0);
            if (childAt2 != null) {
                return this.b.getChildAdapterPosition(childAt2);
            }
            return -1;
        }
        if (f2 <= height) {
            View viewFindChildViewUnder = this.b.findChildViewUnder(width, f2);
            if (viewFindChildViewUnder == null) {
                return -1;
            }
            return this.b.getChildAdapterPosition(viewFindChildViewUnder);
        }
        int childCount = this.b.getChildCount();
        if (childCount <= 0 || (childAt = this.b.getChildAt(childCount - 1)) == null) {
            return -1;
        }
        return this.b.getChildAdapterPosition(childAt);
    }

    public final boolean u(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int iT = t(motionEvent.getY());
        if (actionMasked == 0) {
            if (!w(motionEvent) || iT == -1 || !x(iT)) {
                return false;
            }
            this.j = true;
            this.k = !this.w.get(iT);
            L(iT);
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (!this.j) {
                    return true;
                }
                A(motionEvent);
                if (!this.s && !this.t) {
                    P(iT);
                }
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        D();
        return true;
    }

    public void updateItemCheckedState(int i, boolean z) {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || (viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i)) == null) {
            return;
        }
        View view = viewHolderFindViewHolderForAdapterPosition.itemView;
        if (view instanceof OSListItemView) {
            OSListItemView oSListItemView = (OSListItemView) view;
            if (oSListItemView.getCheckBox() != null) {
                oSListItemView.getCheckBox().setChecked(z);
            }
        }
    }

    public final void v(Context context, AttributeSet attributeSet) {
        this.e = getResources().getDimensionPixelSize(R.dimen.os_hotZoneInnerEdge);
        this.f = getResources().getDimensionPixelSize(R.dimen.os_hotZoneOuterEdge);
        this.g = getResources().getDimensionPixelSize(R.dimen.os_autoScrollStartHeight);
        this.h = getResources().getDimensionPixelSize(R.dimen.os_autoScrollHotspotInnerThreshold);
        this.i = getResources().getDimensionPixelSize(R.dimen.os_space200);
        this.c = new GestureDetectorCompat(context, p());
        setClipChildren(false);
        setClipToPadding(false);
        s();
        n();
        setMultiSelectMode(false);
    }

    public final boolean w(MotionEvent motionEvent) {
        if (this.b == null) {
            return false;
        }
        float x = motionEvent.getX();
        int width = this.b.getWidth();
        if (olb.l0()) {
            return x >= ((float) this.f) && x <= ((float) this.e);
        }
        return x >= ((float) (width - this.e)) && x <= ((float) (width - this.f));
    }

    public final boolean x(int i) {
        return i >= 0 && i < getAdapterItemCount();
    }

    public final void y() {
        if (this.r) {
            G(this.u);
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || !this.r) {
                return;
            }
            ViewCompat.postOnAnimation(recyclerView, this.y);
        }
    }

    public final void z() {
        int i;
        int i2 = this.m;
        if (i2 == -1 || (i = this.n) == -1) {
            return;
        }
        int iMin = Math.min(i2, i);
        int iMax = Math.max(this.m, this.n);
        int i3 = this.o;
        if (i3 == -1 || this.p == -1) {
            F(iMin, iMax);
            I(iMin, iMax, this.k);
        } else {
            if (iMin > i3) {
                E(i3, iMin - 1);
            } else if (iMin < i3) {
                F(iMin, i3 - 1);
                I(iMin, this.o - 1, this.k);
            }
            int i4 = this.p;
            if (iMax > i4) {
                F(i4 + 1, iMax);
                I(this.p + 1, iMax, this.k);
            } else if (iMax < i4) {
                E(iMax + 1, i4);
            }
        }
        this.o = iMin;
        this.p = iMax;
        r();
    }

    public OSSlideMutiSelectHotZoneLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = new SparseBooleanArray();
        this.w = new SparseBooleanArray();
        this.x = new a();
        this.y = new Runnable() {
            @Override
            public final void run() {
                this.b.y();
            }
        };
        this.z = new b();
        v(context, attributeSet);
    }

    public OSSlideMutiSelectHotZoneLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = new SparseBooleanArray();
        this.w = new SparseBooleanArray();
        this.x = new a();
        this.y = new Runnable() {
            @Override
            public final void run() {
                this.b.y();
            }
        };
        this.z = new b();
        v(context, attributeSet);
    }
}

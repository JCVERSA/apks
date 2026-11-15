package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<b> sTaskComparator = new Comparator<b>() {
        @Override
        public int compare(b bVar, b bVar2) {
            RecyclerView recyclerView = bVar.f13876d;
            if ((recyclerView == null) != (bVar2.f13876d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = bVar.f13873a;
            if (z10 != bVar2.f13873a) {
                return z10 ? -1 : 1;
            }
            int i10 = bVar2.f13874b - bVar.f13874b;
            if (i10 != 0) {
                return i10;
            }
            int i11 = bVar.f13875c - bVar2.f13875c;
            if (i11 != 0) {
                return i11;
            }
            return 0;
        }
    };
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private ArrayList<b> mTasks = new ArrayList<>();

    static class a implements RecyclerView.m.c {

        int f13869a;

        int f13870b;

        int[] f13871c;

        int f13872d;

        a() {
        }

        @Override
        public void a(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i12 = this.f13872d;
            int i13 = i12 * 2;
            int[] iArr = this.f13871c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f13871c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i13 >= iArr.length) {
                int[] iArr3 = new int[i12 * 4];
                this.f13871c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f13871c;
            iArr4[i13] = i10;
            iArr4[i13 + 1] = i11;
            this.f13872d++;
        }

        void b() {
            int[] iArr = this.f13871c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f13872d = 0;
        }

        void c(RecyclerView recyclerView, boolean z10) {
            this.f13872d = 0;
            int[] iArr = this.f13871c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.m mVar = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || mVar == null || !mVar.isItemPrefetchEnabled()) {
                return;
            }
            if (z10) {
                if (!recyclerView.mAdapterHelper.p()) {
                    mVar.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                mVar.collectAdjacentPrefetchPositions(this.f13869a, this.f13870b, recyclerView.mState, this);
            }
            int i10 = this.f13872d;
            if (i10 > mVar.mPrefetchMaxCountObserved) {
                mVar.mPrefetchMaxCountObserved = i10;
                mVar.mPrefetchMaxObservedInInitialPrefetch = z10;
                recyclerView.mRecycler.P();
            }
        }

        boolean d(int i10) {
            if (this.f13871c != null) {
                int i11 = this.f13872d * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.f13871c[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }

        void e(int i10, int i11) {
            this.f13869a = i10;
            this.f13870b = i11;
        }
    }

    static class b {

        public boolean f13873a;

        public int f13874b;

        public int f13875c;

        public RecyclerView f13876d;

        public int f13877e;

        b() {
        }

        public void a() {
            this.f13873a = false;
            this.f13874b = 0;
            this.f13875c = 0;
            this.f13876d = null;
            this.f13877e = 0;
        }
    }

    GapWorker() {
    }

    private void buildTaskList() {
        b bVar;
        int size = this.mRecyclerViews.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.c(recyclerView, false);
                i10 += recyclerView.mPrefetchRegistry.f13872d;
            }
        }
        this.mTasks.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(aVar.f13869a) + Math.abs(aVar.f13870b);
                for (int i14 = 0; i14 < aVar.f13872d * 2; i14 += 2) {
                    if (i12 >= this.mTasks.size()) {
                        bVar = new b();
                        this.mTasks.add(bVar);
                    } else {
                        bVar = this.mTasks.get(i12);
                    }
                    int[] iArr = aVar.f13871c;
                    int i15 = iArr[i14 + 1];
                    bVar.f13873a = i15 <= iAbs;
                    bVar.f13874b = iAbs;
                    bVar.f13875c = i15;
                    bVar.f13876d = recyclerView2;
                    bVar.f13877e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    private void flushTaskWithDeadline(b bVar, long j10) {
        RecyclerView.a0 a0VarPrefetchPositionWithDeadline = prefetchPositionWithDeadline(bVar.f13876d, bVar.f13877e, bVar.f13873a ? Long.MAX_VALUE : j10);
        if (a0VarPrefetchPositionWithDeadline == null || a0VarPrefetchPositionWithDeadline.mNestedRecyclerView == null || !a0VarPrefetchPositionWithDeadline.isBound() || a0VarPrefetchPositionWithDeadline.isInvalid()) {
            return;
        }
        prefetchInnerRecyclerViewWithDeadline(a0VarPrefetchPositionWithDeadline.mNestedRecyclerView.get(), j10);
    }

    private void flushTasksWithDeadline(long j10) {
        for (int i10 = 0; i10 < this.mTasks.size(); i10++) {
            b bVar = this.mTasks.get(i10);
            if (bVar.f13876d == null) {
                return;
            }
            flushTaskWithDeadline(bVar, j10);
            bVar.a();
        }
    }

    static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int i10) {
        int iJ = recyclerView.mChildHelper.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            RecyclerView.a0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.i(i11));
            if (childViewHolderInt.mPosition == i10 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView recyclerView, long j10) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.j() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        a aVar = recyclerView.mPrefetchRegistry;
        aVar.c(recyclerView, true);
        if (aVar.f13872d != 0) {
            try {
                androidx.core.os.s.a("RV Nested Prefetch");
                recyclerView.mState.f(recyclerView.mAdapter);
                for (int i10 = 0; i10 < aVar.f13872d * 2; i10 += 2) {
                    prefetchPositionWithDeadline(recyclerView, aVar.f13871c[i10], j10);
                }
                androidx.core.os.s.b();
            } catch (Throwable th2) {
                androidx.core.os.s.b();
                throw th2;
            }
        }
    }

    private RecyclerView.a0 prefetchPositionWithDeadline(RecyclerView recyclerView, int i10, long j10) {
        if (isPrefetchPositionAttached(recyclerView, i10)) {
            return null;
        }
        RecyclerView.t tVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.a0 a0VarN = tVar.N(i10, false, j10);
            if (a0VarN != null) {
                if (!a0VarN.isBound() || a0VarN.isInvalid()) {
                    tVar.a(a0VarN, false);
                } else {
                    tVar.G(a0VarN.itemView);
                }
            }
            return a0VarN;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public void add(RecyclerView recyclerView) {
        if (RecyclerView.sDebugAssertionsEnabled && this.mRecyclerViews.contains(recyclerView)) {
            throw new IllegalStateException("RecyclerView already present in worker list!");
        }
        this.mRecyclerViews.add(recyclerView);
    }

    void postFromTraversal(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.mRecyclerViews.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.mPostTimeNs == 0) {
                this.mPostTimeNs = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        recyclerView.mPrefetchRegistry.e(i10, i11);
    }

    void prefetch(long j10) {
        buildTaskList();
        flushTasksWithDeadline(j10);
    }

    public void remove(RecyclerView recyclerView) {
        boolean zRemove = this.mRecyclerViews.remove(recyclerView);
        if (RecyclerView.sDebugAssertionsEnabled && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
    }

    @Override
    public void run() {
        try {
            androidx.core.os.s.a("RV Prefetch");
            if (!this.mRecyclerViews.isEmpty()) {
                int size = this.mRecyclerViews.size();
                long jMax = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = this.mRecyclerViews.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(jMax) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            androidx.core.os.s.b();
        }
    }
}

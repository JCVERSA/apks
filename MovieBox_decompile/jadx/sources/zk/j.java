package zk;

import android.os.Parcelable;
import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    private final SparseArray f76819a = new SparseArray();

    private Parcelable f76820b;

    private int f76821c;

    public final int a() {
        return this.f76821c;
    }

    public final void b(int i10, RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        Parcelable parcelable = (Parcelable) this.f76819a.get(i10);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (parcelable == null || layoutManager == null) {
            recyclerView.scrollToPosition(0);
        } else {
            layoutManager.onRestoreInstanceState(parcelable);
        }
    }

    public final void c(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Parcelable parcelable = this.f76820b;
        if (parcelable == null || layoutManager == null) {
            return;
        }
        layoutManager.onRestoreInstanceState(parcelable);
    }

    public final void d(int i10, RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            this.f76819a.put(i10, layoutManager.onSaveInstanceState());
        }
    }

    public final void e(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        this.f76820b = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
    }

    public final void f(int i10) {
        this.f76821c = i10;
    }
}

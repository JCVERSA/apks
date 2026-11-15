package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class q extends RecyclerView.j {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView.a0 a0Var);

    @Override
    public boolean animateAppearance(@NonNull RecyclerView.a0 a0Var, @Nullable RecyclerView.j.c cVar, @NonNull RecyclerView.j.c cVar2) {
        int i10;
        int i11;
        return (cVar == null || ((i10 = cVar.f13919a) == (i11 = cVar2.f13919a) && cVar.f13920b == cVar2.f13920b)) ? animateAdd(a0Var) : animateMove(a0Var, i10, cVar.f13920b, i11, cVar2.f13920b);
    }

    public abstract boolean animateChange(RecyclerView.a0 a0Var, RecyclerView.a0 a0Var2, int i10, int i11, int i12, int i13);

    @Override
    public boolean animateChange(@NonNull RecyclerView.a0 a0Var, @NonNull RecyclerView.a0 a0Var2, @NonNull RecyclerView.j.c cVar, @NonNull RecyclerView.j.c cVar2) {
        int i10;
        int i11;
        int i12 = cVar.f13919a;
        int i13 = cVar.f13920b;
        if (a0Var2.shouldIgnore()) {
            int i14 = cVar.f13919a;
            i11 = cVar.f13920b;
            i10 = i14;
        } else {
            i10 = cVar2.f13919a;
            i11 = cVar2.f13920b;
        }
        return animateChange(a0Var, a0Var2, i12, i13, i10, i11);
    }

    @Override
    public boolean animateDisappearance(@NonNull RecyclerView.a0 a0Var, @NonNull RecyclerView.j.c cVar, @Nullable RecyclerView.j.c cVar2) {
        int i10 = cVar.f13919a;
        int i11 = cVar.f13920b;
        View view = a0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f13919a;
        int top = cVar2 == null ? view.getTop() : cVar2.f13920b;
        if (a0Var.isRemoved() || (i10 == left && i11 == top)) {
            return animateRemove(a0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return animateMove(a0Var, i10, i11, left, top);
    }

    public abstract boolean animateMove(RecyclerView.a0 a0Var, int i10, int i11, int i12, int i13);

    @Override
    public boolean animatePersistence(@NonNull RecyclerView.a0 a0Var, @NonNull RecyclerView.j.c cVar, @NonNull RecyclerView.j.c cVar2) {
        int i10 = cVar.f13919a;
        int i11 = cVar2.f13919a;
        if (i10 != i11 || cVar.f13920b != cVar2.f13920b) {
            return animateMove(a0Var, i10, cVar.f13920b, i11, cVar2.f13920b);
        }
        dispatchMoveFinished(a0Var);
        return false;
    }

    public abstract boolean animateRemove(RecyclerView.a0 a0Var);

    @Override
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.a0 a0Var) {
        return !this.mSupportsChangeAnimations || a0Var.isInvalid();
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchAddFinished(RecyclerView.a0 a0Var) {
        onAddFinished(a0Var);
        dispatchAnimationFinished(a0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchAddStarting(RecyclerView.a0 a0Var) {
        onAddStarting(a0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchChangeFinished(RecyclerView.a0 a0Var, boolean z10) {
        onChangeFinished(a0Var, z10);
        dispatchAnimationFinished(a0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchChangeStarting(RecyclerView.a0 a0Var, boolean z10) {
        onChangeStarting(a0Var, z10);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchMoveFinished(RecyclerView.a0 a0Var) {
        onMoveFinished(a0Var);
        dispatchAnimationFinished(a0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchMoveStarting(RecyclerView.a0 a0Var) {
        onMoveStarting(a0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchRemoveFinished(RecyclerView.a0 a0Var) {
        onRemoveFinished(a0Var);
        dispatchAnimationFinished(a0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchRemoveStarting(RecyclerView.a0 a0Var) {
        onRemoveStarting(a0Var);
    }

    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    public void setSupportsChangeAnimations(boolean z10) {
        this.mSupportsChangeAnimations = z10;
    }

    @SuppressLint({"UnknownNullness"})
    public void onAddFinished(RecyclerView.a0 a0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onAddStarting(RecyclerView.a0 a0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onMoveFinished(RecyclerView.a0 a0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onMoveStarting(RecyclerView.a0 a0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRemoveFinished(RecyclerView.a0 a0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRemoveStarting(RecyclerView.a0 a0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onChangeFinished(RecyclerView.a0 a0Var, boolean z10) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onChangeStarting(RecyclerView.a0 a0Var, boolean z10) {
    }
}

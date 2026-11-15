package tf;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import kotlin.jvm.internal.Intrinsics;

public final class g extends RecyclerView.l {

    private final int f72730a;

    private final boolean f72731b;

    public g(int i10, boolean z10) {
        this.f72730a = i10;
        this.f72731b = z10;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
        int iA = ((StaggeredGridLayoutManager.b) layoutParams).a();
        RecyclerView.m layoutManager = parent.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
        int iQ = ((StaggeredGridLayoutManager) layoutManager).Q();
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (!this.f72731b) {
            int i10 = iA % 2;
            outRect.left = i10 == 0 ? 0 : this.f72730a / 2;
            outRect.right = i10 == 0 ? this.f72730a / 2 : 0;
            outRect.bottom = this.f72730a;
            return;
        }
        if (iA == 0) {
            int i11 = this.f72730a;
            outRect.left = i11;
            outRect.right = i11 / 2;
        } else if (iA == iQ - 1) {
            int i12 = this.f72730a;
            outRect.left = i12 / 2;
            outRect.right = i12;
        } else {
            int i13 = this.f72730a;
            outRect.left = i13 / 2;
            outRect.right = i13 / 2;
        }
        if (childAdapterPosition < iQ) {
            outRect.top = this.f72730a;
        }
        outRect.bottom = this.f72730a;
    }
}

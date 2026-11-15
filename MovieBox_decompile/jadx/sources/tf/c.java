package tf;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public final class c extends RecyclerView.l {

    private final int f72720a;

    private final int f72721b;

    public c(int i10, int i11) {
        this.f72720a = i10;
        this.f72721b = i11;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = parent.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if (itemCount == 0) {
            return;
        }
        if (childAdapterPosition == 0) {
            outRect.left = this.f72720a;
            outRect.right = this.f72721b / 2;
        } else if (childAdapterPosition == itemCount - 1) {
            outRect.left = this.f72721b / 2;
            outRect.right = this.f72720a;
        } else {
            int i10 = this.f72721b;
            outRect.left = i10 / 2;
            outRect.right = i10 / 2;
        }
    }
}

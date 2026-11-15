package tf;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class i extends RecyclerView.l {

    private final int f72737a;

    private final int f72738b;

    public i(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i12 & 2) != 0 ? -1 : i11);
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        int i10;
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        if (parent.getChildAdapterPosition(view) == 0 && (i10 = this.f72738b) > 0) {
            outRect.top = i10;
        }
        outRect.bottom = this.f72737a;
    }

    public i(int i10, int i11) {
        this.f72737a = i10;
        this.f72738b = i11;
    }
}

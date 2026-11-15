package gp;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public final class a extends RecyclerView.l {

    private int f61190a;

    private int f61191b;

    private int f61192c;

    public a(int i10, int i11, int i12) {
        this.f61192c = i10;
        this.f61191b = i11;
        this.f61190a = i12;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        parent.getChildAdapterPosition(view);
        outRect.top = this.f61192c;
        outRect.left = this.f61191b;
        outRect.right = this.f61190a;
    }
}

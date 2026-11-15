package tf;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;

public final class a extends RecyclerView.l {

    private int f72712a;

    private int f72713b;

    private int f72714c;

    private int f72715d;

    public a(int i10, int i11, int i12, int i13) {
        this.f72712a = i10;
        this.f72713b = i11;
        this.f72714c = i12;
        this.f72715d = i13;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.m layoutManager = parent.getLayoutManager();
        RecyclerView.Adapter adapter = parent.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int iU = gridLayoutManager.U();
            if (gridLayoutManager.getOrientation() != 1) {
                if (gridLayoutManager.getOrientation() == 0) {
                    int i10 = this.f72713b;
                    outRect.top = i10 / 2;
                    outRect.bottom = i10 / 2;
                    int i11 = ((itemCount + iU) - 1) / iU;
                    int i12 = childAdapterPosition / iU;
                    if (i12 == 0) {
                        outRect.left = this.f72714c;
                        outRect.right = this.f72712a / 2;
                        return;
                    } else if (i12 == i11 - 1) {
                        outRect.left = this.f72712a / 2;
                        outRect.right = this.f72715d;
                        return;
                    } else {
                        int i13 = this.f72712a;
                        outRect.left = i13 / 2;
                        outRect.right = i13 / 2;
                        return;
                    }
                }
                return;
            }
            int i14 = this.f72712a;
            outRect.left = i14 / 2;
            outRect.right = i14 / 2;
            if ((adapter instanceof BaseQuickAdapter) && ((BaseQuickAdapter) adapter).s0()) {
                if (childAdapterPosition == 0) {
                    outRect.left = 0;
                    outRect.right = 0;
                    outRect.top = 0;
                    outRect.bottom = this.f72713b / 2;
                    return;
                }
                childAdapterPosition--;
            }
            int i15 = ((itemCount + iU) - 1) / iU;
            int i16 = childAdapterPosition / iU;
            if (i16 == 0) {
                outRect.top = this.f72714c;
                outRect.bottom = this.f72713b / 2;
            } else if (i16 == i15 - 1) {
                outRect.top = this.f72713b / 2;
                outRect.bottom = this.f72715d;
            } else {
                int i17 = this.f72713b;
                outRect.top = i17 / 2;
                outRect.bottom = i17 / 2;
            }
        }
    }
}

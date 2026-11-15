package sq;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class b extends RecyclerView.l {

    private int f72389a;

    private int f72390b;

    private int f72391c;

    private int f72392d;

    public b(int i10, int i11, int i12, int i13) {
        this.f72389a = i10;
        this.f72390b = i11;
        this.f72391c = i12;
        this.f72392d = i13;
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
        if (!(layoutManager instanceof GridLayoutManager)) {
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                ((StaggeredGridLayoutManager) layoutManager).Q();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
                int iA = ((StaggeredGridLayoutManager.b) layoutParams).a();
                if (childAdapterPosition == 0) {
                    outRect.left = 0;
                    outRect.right = 0;
                    return;
                }
                outRect.bottom = a0.a(16.0f);
                if (iA == 0) {
                    outRect.left = this.f72389a;
                    outRect.right = this.f72390b;
                    return;
                } else {
                    outRect.left = this.f72390b;
                    outRect.right = this.f72389a;
                    return;
                }
            }
            return;
        }
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        int iU = gridLayoutManager.U();
        int iE = gridLayoutManager.Y().e(childAdapterPosition, iU);
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        if (iE == 0) {
            if (z10) {
                outRect.left = this.f72390b;
                outRect.right = this.f72389a;
            } else {
                outRect.left = this.f72389a;
                outRect.right = this.f72390b;
            }
        } else if (iE != iU - 1) {
            int i10 = this.f72390b;
            outRect.left = i10;
            outRect.right = i10;
        } else if (z10) {
            outRect.left = this.f72389a;
            outRect.right = this.f72390b;
        } else {
            outRect.left = this.f72390b;
            outRect.right = this.f72389a;
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if ((adapter instanceof BaseQuickAdapter) && ((BaseQuickAdapter) adapter).s0()) {
            if (childAdapterPosition == 0) {
                outRect.left = 0;
                outRect.right = 0;
                outRect.top = 0;
                outRect.bottom = this.f72392d / 2;
                return;
            }
            childAdapterPosition--;
        }
        int i11 = (itemCount / iU) + (itemCount % iU != 0 ? 1 : 0);
        int i12 = childAdapterPosition / iU;
        if (i12 == 0) {
            outRect.top = 0;
            outRect.bottom = this.f72392d / 2;
        } else if (i12 == i11 - 1) {
            outRect.top = this.f72391c / 2;
            outRect.bottom = 0;
        } else {
            outRect.top = this.f72391c / 2;
            outRect.bottom = this.f72392d / 2;
        }
    }
}

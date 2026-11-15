package com.transsion.widgets.fastscroller;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/widgets/fastscroller/EmptySpaceItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", MethodDecl.initName, "()V", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "Lzfb;", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EmptySpaceItemDecoration extends RecyclerView.ItemDecoration {
    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        View view2;
        y45.j(outRect, "outRect");
        y45.j(view, "view");
        y45.j(parent, "parent");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (childAdapterPosition == (adapter != null ? adapter.getItemCount() : -1)) {
            RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
            y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            int iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
            if (iFindFirstVisibleItemPosition != -1) {
                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = parent.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                outRect.bottom = (viewHolderFindViewHolderForAdapterPosition == null || (view2 = viewHolderFindViewHolderForAdapterPosition.itemView) == null) ? 0 : view2.getHeight();
            }
        }
    }
}

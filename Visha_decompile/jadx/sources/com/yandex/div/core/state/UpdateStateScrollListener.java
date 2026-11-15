package com.yandex.div.core.state;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.cd4;
import defpackage.rj2;
import defpackage.uv2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/yandex/div/core/state/UpdateStateScrollListener;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "", "blockId", "Luv2;", "divViewState", "Lrj2;", "layoutManager", MethodDecl.initName, "(Ljava/lang/String;Luv2;Lrj2;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "Lzfb;", "onScrolled", "(Landroidx/recyclerview/widget/RecyclerView;II)V", "c", "Ljava/lang/String;", "d", "Luv2;", "e", "Lrj2;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UpdateStateScrollListener extends RecyclerView.OnScrollListener {

    public final String blockId;

    public final uv2 divViewState;

    public final rj2 layoutManager;

    public UpdateStateScrollListener(String str, uv2 uv2Var, rj2 rj2Var) {
        y45.j(str, "blockId");
        y45.j(uv2Var, "divViewState");
        y45.j(rj2Var, "layoutManager");
        this.blockId = str;
        this.divViewState = uv2Var;
        this.layoutManager = rj2Var;
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
        View view;
        y45.j(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, dx, dy);
        int iFirstVisibleItemPosition = this.layoutManager.firstVisibleItemPosition();
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = recyclerView.findViewHolderForLayoutPosition(iFirstVisibleItemPosition);
        this.divViewState.d(this.blockId, new cd4(iFirstVisibleItemPosition, (viewHolderFindViewHolderForLayoutPosition == null || (view = viewHolderFindViewHolderForLayoutPosition.itemView) == null) ? 0 : this.layoutManager.calcScrollOffset(view)));
    }
}

package com.yandex.div.core.view2.divs;

import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.wv2;
import defpackage.y45;
import defpackage.zr8;
import java.util.LinkedHashSet;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/yandex/div/core/view2/divs/ReleasingViewPool;", "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "Lzr8;", "releaseViewVisitor", MethodDecl.initName, "(Lzr8;)V", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "scrap", "Lzfb;", "putRecycledView", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "", "viewType", "getRecycledView", "(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "clear", "()V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lzr8;", "", "b", "Ljava/util/Set;", "viewsSet", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ReleasingViewPool extends RecyclerView.RecycledViewPool {

    public final zr8 releaseViewVisitor;

    public final Set viewsSet;

    public ReleasingViewPool(zr8 zr8Var) {
        y45.j(zr8Var, "releaseViewVisitor");
        this.releaseViewVisitor = zr8Var;
        this.viewsSet = new LinkedHashSet();
    }

    @Override
    public void clear() {
        super.clear();
        for (RecyclerView.ViewHolder viewHolder : this.viewsSet) {
            zr8 zr8Var = this.releaseViewVisitor;
            View view = viewHolder.itemView;
            y45.i(view, "viewHolder.itemView");
            wv2.a(zr8Var, view);
        }
        this.viewsSet.clear();
    }

    @Override
    public RecyclerView.ViewHolder getRecycledView(int viewType) {
        RecyclerView.ViewHolder recycledView = super.getRecycledView(viewType);
        if (recycledView == null) {
            return null;
        }
        this.viewsSet.remove(recycledView);
        return recycledView;
    }

    @Override
    public void putRecycledView(RecyclerView.ViewHolder scrap) {
        super.putRecycledView(scrap);
        if (scrap != null) {
            this.viewsSet.add(scrap);
        }
    }
}

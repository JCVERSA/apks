package com.transsion.widgetslib.flipper;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.widgetslib.flipper.DefaultAdapter;
import defpackage.e74;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R0\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/transsion/widgetslib/flipper/DefaultAdapter;", "T", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "list", MethodDecl.initName, "(Ljava/util/List;)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getItemCount", "()I", "holder", "position", "Lzfb;", "onBindViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V", "o", "Ljava/util/List;", "getList", "()Ljava/util/List;", "Lkotlin/Function1;", TtmlNode.TAG_P, "Le74;", "getOnItemClick", "()Le74;", "setOnItemClick", "(Le74;)V", "onItemClick", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DefaultAdapter<T> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    public final List list;

    public e74 onItemClick;

    public DefaultAdapter(List list) {
        y45.j(list, "list");
        this.list = list;
    }

    public static final void c(e74 e74Var, int i, View view) {
        y45.j(e74Var, "$oic");
        e74Var.invoke(Integer.valueOf(i));
    }

    @Override
    public int getItemCount() {
        return this.list.size();
    }

    public final List<T> getList() {
        return this.list;
    }

    public final e74 getOnItemClick() {
        return this.onItemClick;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        y45.j(holder, "holder");
        View view = holder.itemView;
        y45.i(view, "holder.itemView");
        final e74 e74Var = this.onItemClick;
        if (e74Var != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DefaultAdapter.c(e74Var, position, view2);
                }
            });
        }
        if (!(view instanceof ImageView) || position < 0 || position >= this.list.size()) {
            return;
        }
        Object obj = this.list.get(position);
        if (obj instanceof Drawable) {
            ((ImageView) view).setImageDrawable((Drawable) obj);
        }
        if (obj instanceof Integer) {
            ((ImageView) view).setImageResource(((Number) obj).intValue());
        }
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        y45.j(parent, "parent");
        ImageView imageView = new ImageView(parent.getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return new RecyclerView.ViewHolder(imageView) {
        };
    }

    public final void setOnItemClick(e74 e74Var) {
        this.onItemClick = e74Var;
    }
}

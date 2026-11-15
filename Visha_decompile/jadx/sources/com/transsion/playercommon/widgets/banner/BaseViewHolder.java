package com.transsion.playercommon.widgets.banner;

import android.util.SparseArray;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u00028\u0001\"\n\b\u0001\u0010\u0007*\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", MethodDecl.initName, "(Landroid/view/View;)V", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "viewId", "findViewById", "(I)Landroid/view/View;", "Landroid/util/SparseArray;", TtmlNode.TAG_P, "Landroid/util/SparseArray;", "mViews", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BaseViewHolder<T> extends RecyclerView.ViewHolder {

    public final SparseArray mViews;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(View view) {
        super(view);
        y45.j(view, "itemView");
        this.mViews = new SparseArray();
    }

    public final View findViewById(int viewId) {
        View view = (View) this.mViews.get(viewId);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.itemView.findViewById(viewId);
        this.mViews.put(viewId, viewFindViewById);
        return viewFindViewById;
    }
}

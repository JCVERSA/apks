package com.yandex.div.internal.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.ae5;
import defpackage.pdc;
import defpackage.xi;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001BO\b\u0007\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0003\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0018R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0018¨\u0006\u001f"}, d2 = {"Lcom/yandex/div/internal/widget/PaddingItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "", "paddingLeft", "midItemPadding", "crossItemPadding", "paddingRight", "paddingTop", "paddingBottom", "orientation", MethodDecl.initName, "(IIIIIII)V", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "Lzfb;", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "b", "I", "c", "d", "e", "f", GslbInterceptor.HEADER_KEY_GSLB, CmcdData.STREAMING_FORMAT_HLS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PaddingItemDecoration extends RecyclerView.ItemDecoration {

    public final int paddingLeft;

    public final int midItemPadding;

    public final int crossItemPadding;

    public final int paddingRight;

    public final int paddingTop;

    public final int paddingBottom;

    public final int orientation;

    public PaddingItemDecoration() {
        this(0, 0, 0, 0, 0, 0, 0, 127, null);
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        int spanCount;
        y45.j(outRect, "outRect");
        y45.j(view, "view");
        y45.j(parent, "parent");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            spanCount = ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        } else {
            if (!(layoutManager instanceof LinearLayoutManager)) {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unsupported layoutManger: " + layoutManager);
                }
            }
            spanCount = 1;
        }
        if (spanCount != 1) {
            int i = this.midItemPadding / 2;
            int i2 = this.crossItemPadding / 2;
            int i3 = this.orientation;
            if (i3 == 0) {
                outRect.set(i, i2, i, i2);
                return;
            }
            if (i3 == 1) {
                outRect.set(i2, i, i2, i);
                return;
            }
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.i("Unsupported orientation: " + this.orientation);
                return;
            }
            return;
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (childAdapterPosition == -1) {
                return;
            }
            boolean z = childAdapterPosition == 0;
            int i4 = itemCount - 1;
            boolean z2 = childAdapterPosition == i4;
            int i5 = this.orientation;
            if (i5 == 0) {
                if (pdc.f(parent)) {
                    z = childAdapterPosition == i4;
                    z2 = childAdapterPosition == 0;
                }
                outRect.set(z ? this.paddingLeft : 0, this.paddingTop, z2 ? this.paddingRight : this.midItemPadding, this.paddingBottom);
                return;
            }
            if (i5 == 1) {
                outRect.set(this.paddingLeft, z ? this.paddingTop : 0, this.paddingRight, z2 ? this.paddingBottom : this.midItemPadding);
                return;
            }
            ae5 ae5Var3 = ae5.a;
            if (xi.o()) {
                xi.i("Unsupported orientation: " + this.orientation);
            }
        }
    }

    public PaddingItemDecoration(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        this((i8 & 1) != 0 ? 0 : i, (i8 & 2) != 0 ? 0 : i2, (i8 & 4) != 0 ? 0 : i3, (i8 & 8) != 0 ? 0 : i4, (i8 & 16) != 0 ? 0 : i5, (i8 & 32) != 0 ? 0 : i6, (i8 & 64) != 0 ? 0 : i7);
    }

    public PaddingItemDecoration(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.paddingLeft = i;
        this.midItemPadding = i2;
        this.crossItemPadding = i3;
        this.paddingRight = i4;
        this.paddingTop = i5;
        this.paddingBottom = i6;
        this.orientation = i7;
    }
}

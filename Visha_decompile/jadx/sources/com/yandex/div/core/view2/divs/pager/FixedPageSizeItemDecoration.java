package com.yandex.div.core.view2.divs.pager;

import android.graphics.Rect;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import defpackage.ex3;
import defpackage.s86;
import defpackage.sn2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J/\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u0013*\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0019R\u0014\u0010 \u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0019¨\u0006!"}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Lsn2;", "paddings", "Lex3;", "sizeProvider", MethodDecl.initName, "(Lsn2;Lex3;)V", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "Lzfb;", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/Integer;)I", "b", "Lex3;", "c", "I", "offsetLeft", "d", "offsetTop", "e", "offsetRight", "f", "offsetBottom", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FixedPageSizeItemDecoration extends RecyclerView.ItemDecoration {

    public final ex3 sizeProvider;

    public final int offsetLeft;

    public final int offsetTop;

    public final int offsetRight;

    public final int offsetBottom;

    public FixedPageSizeItemDecoration(sn2 sn2Var, ex3 ex3Var) {
        y45.j(sn2Var, "paddings");
        y45.j(ex3Var, "sizeProvider");
        this.sizeProvider = ex3Var;
        this.offsetLeft = a(sn2Var.b());
        this.offsetTop = a(sn2Var.d());
        this.offsetRight = a(sn2Var.c());
        this.offsetBottom = a(sn2Var.a());
    }

    public final int a(Integer num) {
        return num != null ? num.intValue() : s86.c(this.sizeProvider.b());
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        y45.j(outRect, "outRect");
        y45.j(view, "view");
        y45.j(parent, "parent");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        outRect.set(this.offsetLeft, this.offsetTop, this.offsetRight, this.offsetBottom);
    }
}

package com.yandex.div.core.view2.divs.gallery;

import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivSize;
import defpackage.ae5;
import defpackage.hi;
import defpackage.i81;
import defpackage.og2;
import defpackage.rj2;
import defpackage.wn8;
import defpackage.xi;
import defpackage.y45;
import defpackage.zl2;
import java.util.HashSet;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0014J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u0014J7\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\"J\u0019\u0010%\u001a\u00020 2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J\u001f\u0010)\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J7\u0010+\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010\"J\u001b\u0010.\u001a\u00020 2\n\u0010-\u001a\u00060,R\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u00101J#\u00102\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010-\u001a\u00060,R\u00020\u0005H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020 2\u0006\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b9\u00105J\u0017\u0010:\u001a\u00020 2\u0006\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b:\u00108J7\u0010;\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b;\u0010\"J\u000f\u0010<\u001a\u00020\tH\u0016¢\u0006\u0004\b<\u0010\u0014J\u000f\u0010=\u001a\u00020\tH\u0016¢\u0006\u0004\b=\u0010\u0014J\u000f\u0010>\u001a\u00020\tH\u0016¢\u0006\u0004\b>\u0010\u0014J\u000f\u0010?\u001a\u00020\tH\u0016¢\u0006\u0004\b?\u0010\u0014J\u0019\u0010@\u001a\u0004\u0018\u00010\u001a2\u0006\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\tH\u0016¢\u0006\u0004\bD\u0010\u0014J\u000f\u0010E\u001a\u00020\tH\u0016¢\u0006\u0004\bE\u0010\u0014J\u001f\u0010H\u001a\u00020 2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bH\u0010IJ'\u0010K\u001a\u00020 2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010J\u001a\u00020\t2\u0006\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\t2\u0006\u0010M\u001a\u00020\tH\u0002¢\u0006\u0004\bN\u0010OR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010WR\u001a\u0010\b\u001a\u00020\u00078\u0016X\u0096\u0004¢\u0006\f\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[R*\u0010b\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\\j\b\u0012\u0004\u0012\u00020\u001a`]8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u0014\u0010c\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b^\u0010\u0014R\u0014\u0010d\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bX\u0010\u0014¨\u0006e"}, d2 = {"Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;", "Landroidx/recyclerview/widget/StaggeredGridLayoutManager;", "Lrj2;", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Landroidx/recyclerview/widget/RecyclerView;", "view", "Lcom/yandex/div2/DivGallery;", TtmlNode.TAG_DIV, "", "orientation", MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V", "position", "Lzl2;", "getItemDiv", "(I)Lzl2;", "j", "()Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;", "getPaddingStart", "()I", "getPaddingEnd", "getPaddingLeft", "getPaddingTop", "getPaddingRight", "getPaddingBottom", "Landroid/view/View;", "child", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "Lzfb;", "layoutDecorated", "(Landroid/view/View;IIII)V", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "onLayoutCompleted", "(Landroidx/recyclerview/widget/RecyclerView$State;)V", "Landroid/graphics/Rect;", "outRect", "calculateItemDecorationsForChild", "(Landroid/view/View;Landroid/graphics/Rect;)V", "layoutDecoratedWithMargins", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "recycler", "removeAndRecycleAllViews", "(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V", "onAttachedToWindow", "(Landroidx/recyclerview/widget/RecyclerView;)V", "onDetachedFromWindow", "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V", "detachView", "(Landroid/view/View;)V", "index", "detachViewAt", "(I)V", "removeView", "removeViewAt", "superLayoutDecoratedWithMargins", "firstCompletelyVisibleItemPosition", "lastCompletelyVisibleItemPosition", "firstVisibleItemPosition", "lastVisibleItemPosition", "_getChildAt", "(I)Landroid/view/View;", "_getPosition", "(Landroid/view/View;)I", "width", "getLayoutManagerOrientation", "Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;", "scrollPosition", "instantScrollToPosition", "(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V", TypedValues.CycleType.S_WAVE_OFFSET, "instantScrollToPositionWithOffset", "(IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V", "alongOrientation", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(I)I", "e", "Lcom/yandex/div/core/view2/a;", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "f", "Landroidx/recyclerview/widget/RecyclerView;", "getView", "()Landroidx/recyclerview/widget/RecyclerView;", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/yandex/div2/DivGallery;", "getDiv", "()Lcom/yandex/div2/DivGallery;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", CmcdData.STREAMING_FORMAT_HLS, "Ljava/util/HashSet;", "getChildrenToRelayout", "()Ljava/util/HashSet;", "childrenToRelayout", "itemSpacing", "crossSpacing", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivGridLayoutManager extends StaggeredGridLayoutManager implements rj2 {

    public final a bindingContext;

    public final RecyclerView view;

    public final DivGallery div;

    public final HashSet childrenToRelayout;

    /* JADX WARN: Illegal instructions before constructor call */
    public DivGridLayoutManager(a aVar, RecyclerView recyclerView, DivGallery divGallery, int i) {
        int i2;
        y45.j(aVar, "bindingContext");
        y45.j(recyclerView, "view");
        y45.j(divGallery, TtmlNode.TAG_DIV);
        Expression expression = divGallery.h;
        if (expression != null) {
            long jLongValue = ((Number) expression.b(aVar.b())).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i2 = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i2 = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
        } else {
            i2 = 1;
        }
        super(i2, i);
        this.bindingContext = aVar;
        this.view = recyclerView;
        this.div = divGallery;
        this.childrenToRelayout = new HashSet();
    }

    @Override
    public View _getChildAt(int index) {
        return getChildAt(index);
    }

    @Override
    public int _getPosition(View child) {
        y45.j(child, "child");
        return getPosition(child);
    }

    @Override
    public void calculateItemDecorationsForChild(View child, Rect outRect) {
        zl2 itemDiv;
        y45.j(child, "child");
        y45.j(outRect, "outRect");
        super.calculateItemDecorationsForChild(child, outRect);
        int i_getPosition = _getPosition(child);
        if (i_getPosition == -1 || (itemDiv = getItemDiv(i_getPosition)) == null) {
            return;
        }
        og2 og2VarB = itemDiv.c().b();
        boolean z = og2VarB.getHeight() instanceof DivSize.b;
        boolean z2 = og2VarB.getWidth() instanceof DivSize.b;
        int i = 0;
        boolean z3 = getSpanCount() > 1;
        int i2 = (z && z3) ? i(1) / 2 : 0;
        if (z2 && z3) {
            i = i(0) / 2;
        }
        outRect.set(outRect.left - i, outRect.top - i2, outRect.right - i, outRect.bottom - i2);
    }

    @Override
    public void detachView(View child) {
        y45.j(child, "child");
        super.detachView(child);
        _detachView(child);
    }

    @Override
    public void detachViewAt(int index) {
        super.detachViewAt(index);
        _detachViewAt(index);
    }

    @Override
    public int firstCompletelyVisibleItemPosition() {
        int[] iArr = new int[wn8.d(getItemCount(), getSpanCount())];
        findFirstCompletelyVisibleItemPositions(iArr);
        return hi.V(iArr);
    }

    @Override
    public int firstVisibleItemPosition() {
        int[] iArr = new int[wn8.d(getItemCount(), getSpanCount())];
        findFirstVisibleItemPositions(iArr);
        return hi.V(iArr);
    }

    public final int g() {
        Expression expression = getDiv().k;
        if (expression == null) {
            return h();
        }
        Long lValueOf = Long.valueOf(((Number) expression.b(getBindingContext().b())).longValue());
        DisplayMetrics displayMetrics = getView().getResources().getDisplayMetrics();
        y45.i(displayMetrics, "view.resources.displayMetrics");
        return BaseDivViewExtensionsKt.K(lValueOf, displayMetrics);
    }

    @Override
    public a getBindingContext() {
        return this.bindingContext;
    }

    @Override
    public DivGallery getDiv() {
        return this.div;
    }

    @Override
    public zl2 getItemDiv(int position) {
        RecyclerView.Adapter adapter = getView().getAdapter();
        y45.h(adapter, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.gallery.DivGalleryAdapter");
        return (zl2) i81.r0(((DivGalleryAdapter) adapter).getVisibleItems(), position);
    }

    @Override
    public int getLayoutManagerOrientation() {
        return getOrientation();
    }

    @Override
    public int getPaddingBottom() {
        return super.getPaddingBottom() - (i(1) / 2);
    }

    @Override
    public int getPaddingEnd() {
        return super.getPaddingEnd() - (h() / 2);
    }

    @Override
    public int getPaddingLeft() {
        return super.getPaddingLeft() - (i(0) / 2);
    }

    @Override
    public int getPaddingRight() {
        return super.getPaddingRight() - (i(0) / 2);
    }

    @Override
    public int getPaddingStart() {
        return super.getPaddingStart() - (h() / 2);
    }

    @Override
    public int getPaddingTop() {
        return super.getPaddingTop() - (i(1) / 2);
    }

    @Override
    public RecyclerView getView() {
        return this.view;
    }

    public final int h() {
        Long l = (Long) getDiv().t.b(getBindingContext().b());
        DisplayMetrics displayMetrics = getView().getResources().getDisplayMetrics();
        y45.i(displayMetrics, "view.resources.displayMetrics");
        return BaseDivViewExtensionsKt.K(l, displayMetrics);
    }

    public final int i(int alongOrientation) {
        return alongOrientation == getOrientation() ? h() : g();
    }

    @Override
    public void instantScrollToPosition(int position, ScrollPosition scrollPosition) {
        y45.j(scrollPosition, "scrollPosition");
        rj2.a(this, position, scrollPosition, 0, 4, null);
    }

    @Override
    public void instantScrollToPositionWithOffset(int position, int offset, ScrollPosition scrollPosition) {
        y45.j(scrollPosition, "scrollPosition");
        instantScroll(position, scrollPosition, offset);
    }

    @Override
    public DivGridLayoutManager toLayoutManager() {
        return this;
    }

    @Override
    public int lastCompletelyVisibleItemPosition() {
        int[] iArr = new int[wn8.d(getItemCount(), getSpanCount())];
        findLastCompletelyVisibleItemPositions(iArr);
        return hi.t0(iArr);
    }

    @Override
    public int lastVisibleItemPosition() {
        int[] iArr = new int[wn8.d(getItemCount(), getSpanCount())];
        findLastVisibleItemPositions(iArr);
        return hi.t0(iArr);
    }

    @Override
    public void layoutDecorated(View child, int left, int top, int right, int bottom) {
        y45.j(child, "child");
        super.layoutDecorated(child, left, top, right, bottom);
        _layoutDecorated(child, left, top, right, bottom);
    }

    @Override
    public void layoutDecoratedWithMargins(View child, int left, int top, int right, int bottom) {
        y45.j(child, "child");
        rj2.f(this, child, left, top, right, bottom, false, 32, null);
    }

    @Override
    public void onAttachedToWindow(RecyclerView view) {
        y45.j(view, "view");
        super.onAttachedToWindow(view);
        _onAttachedToWindow(view);
    }

    @Override
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        y45.j(view, "view");
        y45.j(recycler, "recycler");
        super.onDetachedFromWindow(view, recycler);
        _onDetachedFromWindow(view, recycler);
    }

    @Override
    public void onLayoutCompleted(RecyclerView.State state) {
        _onLayoutCompleted(state);
        super.onLayoutCompleted(state);
    }

    @Override
    public void removeAndRecycleAllViews(RecyclerView.Recycler recycler) {
        y45.j(recycler, "recycler");
        _removeAndRecycleAllViews(recycler);
        super.removeAndRecycleAllViews(recycler);
    }

    @Override
    public void removeView(View child) {
        y45.j(child, "child");
        super.removeView(child);
        _removeView(child);
    }

    @Override
    public void removeViewAt(int index) {
        super.removeViewAt(index);
        _removeViewAt(index);
    }

    @Override
    public void superLayoutDecoratedWithMargins(View child, int left, int top, int right, int bottom) {
        y45.j(child, "child");
        super.layoutDecoratedWithMargins(child, left, top, right, bottom);
    }

    @Override
    public int width() {
        return getWidth();
    }

    @Override
    public HashSet getChildrenToRelayout() {
        return this.childrenToRelayout;
    }
}

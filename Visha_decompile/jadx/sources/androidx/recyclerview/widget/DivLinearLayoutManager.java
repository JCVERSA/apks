package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.gallery.DivGalleryAdapter;
import com.yandex.div.core.view2.divs.gallery.ScrollPosition;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div2.DivGallery;
import defpackage.i81;
import defpackage.rj2;
import defpackage.y45;
import defpackage.zl2;
import java.util.HashSet;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001fB)\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0019J7\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00172\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J7\u0010%\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010 J\u001b\u0010(\u001a\u00020\u00172\n\u0010'\u001a\u00060&R\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010+J#\u0010,\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010'\u001a\u00060&R\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\u00172\u0006\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b3\u0010/J\u0017\u00104\u001a\u00020\u00172\u0006\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b4\u00102J7\u00105\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016¢\u0006\u0004\b5\u0010 J\u000f\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\tH\u0016¢\u0006\u0004\b8\u00107J\u000f\u00109\u001a\u00020\tH\u0016¢\u0006\u0004\b9\u00107J\u000f\u0010:\u001a\u00020\tH\u0016¢\u0006\u0004\b:\u00107J\u0019\u0010;\u001a\u0004\u0018\u00010\u00132\u0006\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\tH\u0016¢\u0006\u0004\b?\u00107J\u000f\u0010@\u001a\u00020\tH\u0016¢\u0006\u0004\b@\u00107J\u001f\u0010C\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\t2\u0006\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bC\u0010DJ'\u0010F\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\t2\u0006\u0010E\u001a\u00020\t2\u0006\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bF\u0010GJ\u0019\u0010K\u001a\u00020J2\b\u0010I\u001a\u0004\u0018\u00010HH\u0016¢\u0006\u0004\bK\u0010LJ#\u0010Q\u001a\u00020H2\b\u0010N\u001a\u0004\u0018\u00010M2\b\u0010P\u001a\u0004\u0018\u00010OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0019\u0010Q\u001a\u00020H2\b\u0010I\u001a\u0004\u0018\u00010SH\u0016¢\u0006\u0004\bQ\u0010TJ\u000f\u0010U\u001a\u00020HH\u0016¢\u0006\u0004\bU\u0010VR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010W\u001a\u0004\bX\u0010YR\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010Z\u001a\u0004\b[\u0010\\R\u001a\u0010\b\u001a\u00020\u00078\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010]\u001a\u0004\b^\u0010_R*\u0010b\u001a\u0012\u0012\u0004\u0012\u00020\u00130`j\b\u0012\u0004\u0012\u00020\u0013`a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010e¨\u0006g"}, d2 = {"Landroidx/recyclerview/widget/DivLinearLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Lrj2;", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Landroidx/recyclerview/widget/RecyclerView;", "view", "Lcom/yandex/div2/DivGallery;", TtmlNode.TAG_DIV, "", "orientation", MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V", "position", "Lzl2;", "getItemDiv", "(I)Lzl2;", "toLayoutManager", "()Landroidx/recyclerview/widget/DivLinearLayoutManager;", "Landroid/view/View;", "child", "widthUsed", "heightUsed", "Lzfb;", "measureChild", "(Landroid/view/View;II)V", "measureChildWithMargins", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "layoutDecorated", "(Landroid/view/View;IIII)V", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "onLayoutCompleted", "(Landroidx/recyclerview/widget/RecyclerView$State;)V", "layoutDecoratedWithMargins", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "recycler", "removeAndRecycleAllViews", "(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V", "onAttachedToWindow", "(Landroidx/recyclerview/widget/RecyclerView;)V", "onDetachedFromWindow", "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V", "detachView", "(Landroid/view/View;)V", "index", "detachViewAt", "(I)V", "removeView", "removeViewAt", "superLayoutDecoratedWithMargins", "firstCompletelyVisibleItemPosition", "()I", "lastCompletelyVisibleItemPosition", "firstVisibleItemPosition", "lastVisibleItemPosition", "_getChildAt", "(I)Landroid/view/View;", "_getPosition", "(Landroid/view/View;)I", "width", "getLayoutManagerOrientation", "Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;", "scrollPosition", "instantScrollToPosition", "(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V", TypedValues.CycleType.S_WAVE_OFFSET, "instantScrollToPositionWithOffset", "(IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V", "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "lp", "", "checkLayoutParams", "(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z", "Landroid/content/Context;", "c", "Landroid/util/AttributeSet;", "attrs", "generateLayoutParams", "(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "Landroid/view/ViewGroup$LayoutParams;", "(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "generateDefaultLayoutParams", "()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "Lcom/yandex/div/core/view2/a;", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "Landroidx/recyclerview/widget/RecyclerView;", "getView", "()Landroidx/recyclerview/widget/RecyclerView;", "Lcom/yandex/div2/DivGallery;", "getDiv", "()Lcom/yandex/div2/DivGallery;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "childrenToRelayout", "Ljava/util/HashSet;", "getChildrenToRelayout", "()Ljava/util/HashSet;", "DivRecyclerViewLayoutParams", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivLinearLayoutManager extends LinearLayoutManager implements rj2 {
    private final a bindingContext;
    private final HashSet<View> childrenToRelayout;
    private final DivGallery div;
    private final RecyclerView view;

    public DivLinearLayoutManager(a aVar, RecyclerView recyclerView, DivGallery divGallery, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, recyclerView, divGallery, (i2 & 8) != 0 ? 0 : i);
    }

    @Override
    public void _detachView(View view) {
        super._detachView(view);
    }

    @Override
    public void _detachViewAt(int i) {
        super._detachViewAt(i);
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
    public void _layoutDecorated(View view, int i, int i2, int i3, int i4) {
        super._layoutDecorated(view, i, i2, i3, i4);
    }

    @Override
    public void _layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4, boolean z) {
        super._layoutDecoratedWithMargins(view, i, i2, i3, i4, z);
    }

    @Override
    public void _onAttachedToWindow(RecyclerView recyclerView) {
        super._onAttachedToWindow(recyclerView);
    }

    @Override
    public void _onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super._onDetachedFromWindow(recyclerView, recycler);
    }

    @Override
    public void _onLayoutCompleted(RecyclerView.State state) {
        super._onLayoutCompleted(state);
    }

    @Override
    public void _removeAndRecycleAllViews(RecyclerView.Recycler recycler) {
        super._removeAndRecycleAllViews(recycler);
    }

    @Override
    public void _removeView(View view) {
        super._removeView(view);
    }

    @Override
    public void _removeViewAt(int i) {
        super._removeViewAt(i);
    }

    @Override
    public int calcScrollOffset(View view) {
        return super.calcScrollOffset(view);
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof DivRecyclerViewLayoutParams;
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
        return findFirstCompletelyVisibleItemPosition();
    }

    @Override
    public int firstVisibleItemPosition() {
        return findFirstVisibleItemPosition();
    }

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new DivRecyclerViewLayoutParams(-2, -2);
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(Context c, AttributeSet attrs) {
        return new DivRecyclerViewLayoutParams(c, attrs);
    }

    @Override
    public a getBindingContext() {
        return this.bindingContext;
    }

    @Override
    public int getChildMeasureSpec(int i, int i2, int i3, int i4, int i5, boolean z) {
        return super.getChildMeasureSpec(i, i2, i3, i4, i5, z);
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
    public RecyclerView getView() {
        return this.view;
    }

    @Override
    public void instantScroll(int i, ScrollPosition scrollPosition, int i2) {
        super.instantScroll(i, scrollPosition, i2);
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
    public int lastCompletelyVisibleItemPosition() {
        return findLastCompletelyVisibleItemPosition();
    }

    @Override
    public int lastVisibleItemPosition() {
        return findLastVisibleItemPosition();
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
    public void measureChild(View child, int widthUsed, int heightUsed) {
        y45.j(child, "child");
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.DivLinearLayoutManager.DivRecyclerViewLayoutParams");
        DivRecyclerViewLayoutParams divRecyclerViewLayoutParams = (DivRecyclerViewLayoutParams) layoutParams;
        Rect itemDecorInsetsForChild = getView().getItemDecorInsetsForChild(child);
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + widthUsed + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right, ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).width, divRecyclerViewLayoutParams.getMaxWidth(), canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + heightUsed + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom, ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).height, divRecyclerViewLayoutParams.getMaxHeight(), canScrollVertically());
        if (shouldMeasureChild(child, childMeasureSpec, childMeasureSpec2, divRecyclerViewLayoutParams)) {
            child.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    @Override
    public void measureChildWithMargins(View child, int widthUsed, int heightUsed) {
        y45.j(child, "child");
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.DivLinearLayoutManager.DivRecyclerViewLayoutParams");
        DivRecyclerViewLayoutParams divRecyclerViewLayoutParams = (DivRecyclerViewLayoutParams) layoutParams;
        Rect itemDecorInsetsForChild = getView().getItemDecorInsetsForChild(child);
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).rightMargin + widthUsed + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right, ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).width, divRecyclerViewLayoutParams.getMaxWidth(), canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).topMargin + ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).bottomMargin + heightUsed + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom, ((ViewGroup.MarginLayoutParams) divRecyclerViewLayoutParams).height, divRecyclerViewLayoutParams.getMaxHeight(), canScrollVertically());
        if (shouldMeasureChild(child, childMeasureSpec, childMeasureSpec2, divRecyclerViewLayoutParams)) {
            child.measure(childMeasureSpec, childMeasureSpec2);
        }
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
    public DivLinearLayoutManager toLayoutManager() {
        return this;
    }

    @Override
    public void trackVisibilityAction(View view, boolean z) {
        super.trackVisibilityAction(view, z);
    }

    @Override
    public int width() {
        return getWidth();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivLinearLayoutManager(a aVar, RecyclerView recyclerView, DivGallery divGallery, int i) {
        super(recyclerView.getContext(), i, false);
        y45.j(aVar, "bindingContext");
        y45.j(recyclerView, "view");
        y45.j(divGallery, TtmlNode.TAG_DIV);
        this.bindingContext = aVar;
        this.view = recyclerView;
        this.div = divGallery;
        this.childrenToRelayout = new HashSet<>();
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof DivRecyclerViewLayoutParams) {
            return new DivRecyclerViewLayoutParams((DivRecyclerViewLayoutParams) lp);
        }
        if (lp instanceof RecyclerView.LayoutParams) {
            return new DivRecyclerViewLayoutParams((RecyclerView.LayoutParams) lp);
        }
        if (lp instanceof DivLayoutParams) {
            return new DivRecyclerViewLayoutParams((DivLayoutParams) lp);
        }
        return lp instanceof ViewGroup.MarginLayoutParams ? new DivRecyclerViewLayoutParams((ViewGroup.MarginLayoutParams) lp) : new DivRecyclerViewLayoutParams(lp);
    }

    @Override
    public HashSet<View> getChildrenToRelayout() {
        return this.childrenToRelayout;
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0017\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nB\u0011\b\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB\u0011\b\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fB\u0011\b\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0010B\u000f\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0000¢\u0006\u0002\u0010\u0011B\u000f\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018¨\u0006\u001c"}, d2 = {"Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;", "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "c", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "width", "", "height", "(II)V", "source", "Landroid/view/ViewGroup$MarginLayoutParams;", "(Landroid/view/ViewGroup$MarginLayoutParams;)V", "Landroid/view/ViewGroup$LayoutParams;", "(Landroid/view/ViewGroup$LayoutParams;)V", "(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V", "(Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;)V", "Lcom/yandex/div/internal/widget/DivLayoutParams;", "(Lcom/yandex/div/internal/widget/DivLayoutParams;)V", "maxHeight", "getMaxHeight", "()I", "setMaxHeight", "(I)V", "maxWidth", "getMaxWidth", "setMaxWidth", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class DivRecyclerViewLayoutParams extends RecyclerView.LayoutParams {
        private int maxHeight;
        private int maxWidth;

        public DivRecyclerViewLayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
        }

        public final int getMaxHeight() {
            return this.maxHeight;
        }

        public final int getMaxWidth() {
            return this.maxWidth;
        }

        public final void setMaxHeight(int i) {
            this.maxHeight = i;
        }

        public final void setMaxWidth(int i) {
            this.maxWidth = i;
        }

        public DivRecyclerViewLayoutParams(int i, int i2) {
            super(i, i2);
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
        }

        public DivRecyclerViewLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
        }

        public DivRecyclerViewLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
        }

        public DivRecyclerViewLayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DivRecyclerViewLayoutParams(DivRecyclerViewLayoutParams divRecyclerViewLayoutParams) {
            super((RecyclerView.LayoutParams) divRecyclerViewLayoutParams);
            y45.j(divRecyclerViewLayoutParams, "source");
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
            this.maxHeight = divRecyclerViewLayoutParams.maxHeight;
            this.maxWidth = divRecyclerViewLayoutParams.maxWidth;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DivRecyclerViewLayoutParams(DivLayoutParams divLayoutParams) {
            super((ViewGroup.MarginLayoutParams) divLayoutParams);
            y45.j(divLayoutParams, "source");
            this.maxHeight = Integer.MAX_VALUE;
            this.maxWidth = Integer.MAX_VALUE;
            this.maxHeight = divLayoutParams.getMaxHeight();
            this.maxWidth = divLayoutParams.getMaxWidth();
        }
    }
}

package com.yandex.div.core.view2.divs.gallery;

import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.rj2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0015\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\nJ'\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u0005R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001d¨\u0006!"}, d2 = {"Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;", "Landroidx/recyclerview/widget/PagerSnapHelper;", "", "itemSpacing", MethodDecl.initName, "(I)V", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutManager", "Landroidx/recyclerview/widget/OrientationHelper;", "getVerticalHelper", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;", "getHorizontalHelper", "Landroid/view/View;", "targetView", "helper", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I", "manager", "velocityX", "velocityY", "findTargetSnapPosition", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I", "", "calculateDistanceToFinalSnap", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I", "I", "getItemSpacing", "()I", "b", "Landroidx/recyclerview/widget/OrientationHelper;", "_verticalHelper", "c", "_horizontalHelper", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PagerSnapStartHelper extends PagerSnapHelper {

    public int itemSpacing;

    public OrientationHelper _verticalHelper;

    public OrientationHelper _horizontalHelper;

    public PagerSnapStartHelper(int i) {
        this.itemSpacing = i;
    }

    private final int a(RecyclerView.LayoutManager layoutManager, View targetView, OrientationHelper helper) {
        float y;
        int height;
        if (layoutManager.canScrollHorizontally()) {
            y = targetView.getX();
            height = targetView.getWidth() / 2;
        } else {
            y = targetView.getY();
            height = targetView.getHeight() / 2;
        }
        return ((int) (y + height)) - (layoutManager.getClipToPadding() ? helper.getStartAfterPadding() + (helper.getTotalSpace() / 2) : helper.getEnd() / 2);
    }

    private final OrientationHelper getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this._horizontalHelper;
        if (orientationHelper != null) {
            if (!y45.e(orientationHelper.getLayoutManager(), layoutManager)) {
                orientationHelper = null;
            }
            if (orientationHelper != null) {
                return orientationHelper;
            }
        }
        OrientationHelper orientationHelperCreateHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        this._horizontalHelper = orientationHelperCreateHorizontalHelper;
        y45.i(orientationHelperCreateHorizontalHelper, "createHorizontalHelper(l… _horizontalHelper = it }");
        return orientationHelperCreateHorizontalHelper;
    }

    private final OrientationHelper getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this._verticalHelper;
        if (orientationHelper != null) {
            if (!y45.e(orientationHelper.getLayoutManager(), layoutManager)) {
                orientationHelper = null;
            }
            if (orientationHelper != null) {
                return orientationHelper;
            }
        }
        OrientationHelper orientationHelperCreateVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        this._verticalHelper = orientationHelperCreateVerticalHelper;
        y45.i(orientationHelperCreateVerticalHelper, "createVerticalHelper(lay… { _verticalHelper = it }");
        return orientationHelperCreateVerticalHelper;
    }

    public final void b(int i) {
        this.itemSpacing = i;
    }

    @Override
    public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View targetView) {
        y45.j(layoutManager, "layoutManager");
        y45.j(targetView, "targetView");
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = a(layoutManager, targetView, getHorizontalHelper(layoutManager));
        } else if (layoutManager.canScrollVertically()) {
            iArr[1] = a(layoutManager, targetView, getVerticalHelper(layoutManager));
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int findTargetSnapPosition(RecyclerView.LayoutManager manager, int velocityX, int velocityY) {
        y45.j(manager, "manager");
        rj2 rj2Var = (rj2) manager;
        if (rj2Var.getLayoutManagerOrientation() != 0) {
            velocityX = velocityY;
        } else if (manager.getLayoutDirection() != 0) {
            velocityX = -velocityX;
        }
        int iFirstCompletelyVisibleItemPosition = velocityX < 0 ? rj2Var.firstCompletelyVisibleItemPosition() : rj2Var.lastCompletelyVisibleItemPosition();
        if (iFirstCompletelyVisibleItemPosition != -1) {
            return iFirstCompletelyVisibleItemPosition;
        }
        int iFirstVisibleItemPosition = rj2Var.firstVisibleItemPosition();
        int iLastVisibleItemPosition = rj2Var.lastVisibleItemPosition();
        if (iLastVisibleItemPosition != iFirstVisibleItemPosition) {
            return velocityX < 0 ? iFirstVisibleItemPosition : iLastVisibleItemPosition;
        }
        if (iLastVisibleItemPosition != -1) {
            return iLastVisibleItemPosition;
        }
        return 0;
    }
}

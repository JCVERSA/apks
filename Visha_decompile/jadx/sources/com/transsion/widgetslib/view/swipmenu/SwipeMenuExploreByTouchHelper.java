package com.transsion.widgetslib.view.swipmenu;

import android.graphics.Rect;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import defpackage.bq5;
import defpackage.p7a;
import defpackage.ubc;
import defpackage.wr4;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 +2\u00020\u0001:\u0002\u0007(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0012\u001a\u00020\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ)\u0010!\u001a\u00020 2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\r2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0014¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020 2\u0006\u0010#\u001a\u00020\rH\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010(\u001a\u00020 2\u0006\u0010'\u001a\u00020&2\u0006\u0010#\u001a\u00020\rH\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020*2\u0006\u0010\u0014\u001a\u00020\rH\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020-2\u0006\u0010\u0014\u001a\u00020\rH\u0002¢\u0006\u0004\b.\u0010/J\u001f\u00100\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b0\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00101R\u001e\u00105\u001a\f\u0012\b\u0012\u000603R\u00020\u0000028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u00104¨\u00066"}, d2 = {"Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;", "Landroidx/customview/widget/ExploreByTouchHelper;", "Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;", "mHostView", MethodDecl.initName, "(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V", GslbInterceptor.HEADER_KEY_GSLB, "", "x", "y", "", "getVirtualViewAt", "(FF)I", "", "virtualViewIds", "getVisibleVirtualViews", "(Ljava/util/List;)V", "virtualViewId", "Landroid/view/accessibility/AccessibilityEvent;", NotificationCompat.CATEGORY_EVENT, "onPopulateEventForVirtualView", "(ILandroid/view/accessibility/AccessibilityEvent;)V", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "node", "onPopulateNodeForVirtualView", "(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "action", "Landroid/os/Bundle;", "arguments", "", "onPerformActionForVirtualView", "(IILandroid/os/Bundle;)Z", "index", "f", "(I)Z", "Lp7a;", "swipeMenu", "b", "(Lp7a;I)Z", "Landroid/graphics/Rect;", "c", "(I)Landroid/graphics/Rect;", "", "d", "(I)Ljava/lang/CharSequence;", "e", "Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;", "Landroid/util/SparseArray;", "Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$b;", "Landroid/util/SparseArray;", "mItems", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SwipeMenuExploreByTouchHelper extends ExploreByTouchHelper {
    public static final Rect d = new Rect(0, 0, 0, 0);

    public final OSSwipeMenuLayout mHostView;

    public final SparseArray mItems;

    public final class b {
        public CharSequence a;

        public b(CharSequence charSequence) {
            this.a = charSequence;
        }

        public final CharSequence getDescription() {
            return this.a;
        }

        public final void setDescription(CharSequence charSequence) {
            this.a = charSequence;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeMenuExploreByTouchHelper(OSSwipeMenuLayout oSSwipeMenuLayout) {
        super(oSSwipeMenuLayout);
        y45.j(oSSwipeMenuLayout, "mHostView");
        this.mHostView = oSSwipeMenuLayout;
        this.mItems = new SparseArray();
    }

    public final void a() {
        wr4 swipeCurrentHorizontal = this.mHostView.getSwipeCurrentHorizontal();
        this.mHostView.getSwipeCurrentHorizontal().getMenuView();
        bq5.p("SwipeMenuExploreByTouch", "addAccessAbilityInfo: mHorizontal.getMenuView().getMenuItems().size() = " + swipeCurrentHorizontal.getMenuView().getMenuItems().size());
        this.mItems.clear();
        int size = swipeCurrentHorizontal.getMenuView().getMenuItems().size() + 1;
        for (int i = 1; i < size; i++) {
            this.mItems.put(i, new b(d(i)));
        }
        invalidateRoot();
    }

    public final boolean b(p7a swipeMenu, int index) {
        return index >= 0 && index < swipeMenu.getMenuItems().size();
    }

    public final Rect c(int virtualViewId) {
        wr4 swipeCurrentHorizontal = this.mHostView.getSwipeCurrentHorizontal();
        p7a menuView = this.mHostView.getSwipeCurrentHorizontal().getMenuView();
        int i = virtualViewId - 1;
        int iSignum = (int) Math.signum(this.mHostView.getScrollX());
        if (Math.abs(Math.abs(this.mHostView.getScrollX()) - menuView.getMenuTotalWidth()) > 2) {
            return d;
        }
        Rect rectG = swipeCurrentHorizontal.g(this.mHostView.getMeasuredWidth(), this.mHostView.getMeasuredHeight(), i, menuView.a(), menuView.getMenuTotalWidth() * iSignum);
        bq5.p("SwipeMenuExploreByTouch", "getBoundsForVirtualView = " + rectG.toShortString());
        y45.i(rectG, "bounds");
        return rectG;
    }

    public final CharSequence d(int virtualViewId) {
        p7a menuView = this.mHostView.getSwipeCurrentHorizontal().getMenuView();
        p7a menuView2 = this.mHostView.getSwipeCurrentHorizontal().getMenuView();
        y45.i(menuView2, "mHostView.swipeCurrentHorizontal.menuView");
        int i = virtualViewId - 1;
        if (b(menuView2, i)) {
            ubc.a(menuView.getMenuItems().get(i));
            throw null;
        }
        String string = this.mHostView.getContext().getString(R.string.os_string_talkback_untagged);
        y45.i(string, "mHostView.context.getStr…string_talkback_untagged)");
        return string;
    }

    public final int e(float x, float y) {
        int iM = this.mHostView.m(MotionEvent.obtain(0L, 0L, 0, x, y, 0));
        boolean z = iM > -1;
        int i = iM + 1;
        if (!z) {
            i = Integer.MIN_VALUE;
        }
        bq5.p("SwipeMenuExploreByTouch", "getVirtualViewIdForHit(" + x + StringUtils.COMMA + y + ") => " + i + " avail =" + z);
        return i;
    }

    public final boolean f(int index) {
        bq5.p("SwipeMenuExploreByTouch", "onItemClicked(" + index + ")");
        this.mHostView.getSwipeCurrentHorizontal().getMenuView();
        invalidateVirtualView(index);
        this.mHostView.getOnMenuItemClickListener();
        sendEventForVirtualView(index, 1);
        return true;
    }

    public final void g() {
        bq5.p("SwipeMenuExploreByTouch", "removeAccessAbilityInfo");
        this.mItems.clear();
        invalidateRoot();
    }

    @Override
    public int getVirtualViewAt(float x, float y) {
        return e(x, y);
    }

    @Override
    public void getVisibleVirtualViews(List virtualViewIds) {
        y45.j(virtualViewIds, "virtualViewIds");
        wr4 swipeCurrentHorizontal = this.mHostView.getSwipeCurrentHorizontal();
        bq5.p("SwipeMenuExploreByTouch", "getVisibleVirtualViews(len=" + virtualViewIds.size() + ") mHorizontal.isMenuOpen(mHostView.getScrollX()) = " + swipeCurrentHorizontal.j(this.mHostView.getScrollX()) + " mItems.size() = " + this.mItems.size());
        int size = this.mItems.size() + 1;
        for (int i = 1; i < size; i++) {
            virtualViewIds.add(Integer.valueOf(i));
        }
    }

    @Override
    public boolean onPerformActionForVirtualView(int virtualViewId, int action, Bundle arguments) {
        bq5.p("SwipeMenuExploreByTouch", "onPerformActionForVirtualView(id=" + virtualViewId + ", action=" + action);
        if (action == 16) {
            return f(virtualViewId);
        }
        bq5.p("SwipeMenuExploreByTouch", "*** action not handled in onPerformActionForVirtualView(viewId=" + virtualViewId + "action=" + action + ")");
        return false;
    }

    @Override
    public void onPopulateEventForVirtualView(int virtualViewId, AccessibilityEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        bq5.p("SwipeMenuExploreByTouch", "onPopulateEventForVirtualView(" + virtualViewId + ")");
        b bVar = (b) this.mItems.get(virtualViewId);
        if (bVar != null) {
            event.getText().add(bVar.getDescription());
        }
    }

    @Override
    public void onPopulateNodeForVirtualView(int virtualViewId, AccessibilityNodeInfoCompat node) {
        y45.j(node, "node");
        bq5.p("SwipeMenuExploreByTouch", "onPopulateNodeForVirtualView(view=" + virtualViewId + ") mItems.size() = " + this.mItems.size());
        node.setText(d(virtualViewId));
        node.setContentDescription(d(virtualViewId));
        node.setFocusable(true);
        node.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        node.setClickable(false);
        Rect rectC = c(virtualViewId);
        bq5.p("SwipeMenuExploreByTouch", "bounds:" + rectC);
        node.setBoundsInParent(rectC);
    }
}

package com.transsion.playercommon.widgets.banner.provider;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.livecaption.constant.ICode;
import defpackage.w70;
import defpackage.y45;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J5\u0010\u0017\u001a\u00020\u00162\n\u0010\u0012\u001a\u00060\u0011R\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J+\u0010\u001b\u001a\u00020\u000e2\n\u0010\u0012\u001a\u00060\u0011R\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0014¢\u0006\u0004\b\u001f\u0010 J7\u0010(\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\t2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010)R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010\u0006\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006."}, d2 = {"Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager2", "", "scrollDuration", "mParent", MethodDecl.initName, "(Landroidx/viewpager2/widget/ViewPager2;ILandroidx/recyclerview/widget/LinearLayoutManager;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "position", "Lzfb;", "smoothScrollToPosition", "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "recycler", "action", "Landroid/os/Bundle;", "args", "", "performAccessibilityAction", "(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "onInitializeAccessibilityNodeInfo", "(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "", "extraLayoutSpace", "calculateExtraLayoutSpace", "(Landroidx/recyclerview/widget/RecyclerView$State;[I)V", "parent", "Landroid/view/View;", "child", "Landroid/graphics/Rect;", "rect", "immediate", "focusedChildVisible", "requestChildRectangleOnScreen", "(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z", "e", "I", "f", "Landroidx/recyclerview/widget/LinearLayoutManager;", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollDurationManger extends LinearLayoutManager {

    public final int scrollDuration;

    public final LinearLayoutManager mParent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollDurationManger(ViewPager2 viewPager2, int i, LinearLayoutManager linearLayoutManager) {
        super(viewPager2.getContext(), linearLayoutManager.getOrientation(), false);
        y45.j(linearLayoutManager, "mParent");
        y45.g(viewPager2);
        this.scrollDuration = i;
        this.mParent = linearLayoutManager;
    }

    @Override
    public void calculateExtraLayoutSpace(RecyclerView.State state, int[] extraLayoutSpace) {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        y45.j(extraLayoutSpace, "extraLayoutSpace");
        try {
            Method declaredMethod = this.mParent.getClass().getDeclaredMethod("calculateExtraLayoutSpace", state.getClass(), extraLayoutSpace.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.mParent, state, extraLayoutSpace);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            w70.a.d(e.getMessage());
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            w70.a.d(e2.getMessage());
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            w70.a.d(e3.getMessage());
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat info) {
        y45.j(recycler, "recycler");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        y45.j(info, "info");
        this.mParent.onInitializeAccessibilityNodeInfo(recycler, state, info);
    }

    @Override
    public boolean performAccessibilityAction(RecyclerView.Recycler recycler, RecyclerView.State state, int action, Bundle args) {
        y45.j(recycler, "recycler");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        return this.mParent.performAccessibilityAction(recycler, state, action, args);
    }

    @Override
    public boolean requestChildRectangleOnScreen(RecyclerView parent, View child, Rect rect, boolean immediate, boolean focusedChildVisible) {
        y45.j(parent, "parent");
        y45.j(child, "child");
        y45.j(rect, "rect");
        return false;
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        y45.j(recyclerView, "recyclerView");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        final Context context = recyclerView.getContext();
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(context) {
            @Override
            public int calculateTimeForDeceleration(int dx) {
                return this.a.scrollDuration;
            }
        };
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }
}

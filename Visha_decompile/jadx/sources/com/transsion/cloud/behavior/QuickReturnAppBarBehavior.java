package com.transsion.cloud.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.netdisk.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007JG\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/transsion/cloud/behavior/QuickReturnAppBarBehavior;", "Lcom/google/android/material/appbar/AppBarLayout$Behavior;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "coordinatorLayout", "Lcom/google/android/material/appbar/AppBarLayout;", "child", "Landroid/view/View;", TypedValues.AttributesType.S_TARGET, "", "dx", "dy", "", "consumed", "type", "Lzfb;", "onNestedPreScroll", "(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuickReturnAppBarBehavior extends AppBarLayout.Behavior {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickReturnAppBarBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }

    @Override
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout child, View target, int dx, int dy, int[] consumed, int type) {
        RecyclerView recyclerView;
        y45.j(coordinatorLayout, "coordinatorLayout");
        y45.j(child, "child");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        y45.j(consumed, "consumed");
        if (target instanceof RecyclerView) {
            recyclerView = (RecyclerView) target;
        } else {
            recyclerView = target instanceof ViewGroup ? (RecyclerView) target.findViewById(R.id.rc_all_video_view) : null;
        }
        if (dy > 0) {
            super.onNestedPreScroll(coordinatorLayout, child, target, dx, dy, consumed, type);
        } else if (recyclerView == null || !recyclerView.canScrollVertically(-1)) {
            super.onNestedPreScroll(coordinatorLayout, child, target, dx, dy, consumed, type);
        }
    }
}

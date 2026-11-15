package androidx.compose.material.ripple;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.ui.graphics.x1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class j {

    private static final boolean f3197a = Intrinsics.c(Build.DEVICE, "layoutlib");

    public static final RippleContainer c(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof RippleContainer) {
                return (RippleContainer) childAt;
            }
        }
        RippleContainer rippleContainer = new RippleContainer(viewGroup.getContext());
        viewGroup.addView(rippleContainer);
        return rippleContainer;
    }

    public static final androidx.compose.ui.node.f d(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0) {
        return f3197a ? new CommonRippleNode(gVar, z10, f10, x1Var, function0, null) : new AndroidRippleNode(gVar, z10, f10, x1Var, function0, null);
    }

    public static final ViewGroup e(View view) {
        Object obj = view;
        while (!(obj instanceof ViewGroup)) {
            ViewParent parent = ((View) obj).getParent();
            if (!(parent instanceof View)) {
                throw new IllegalArgumentException(("Couldn't find a valid parent for " + obj + ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?").toString());
            }
            obj = parent;
        }
        return (ViewGroup) obj;
    }
}

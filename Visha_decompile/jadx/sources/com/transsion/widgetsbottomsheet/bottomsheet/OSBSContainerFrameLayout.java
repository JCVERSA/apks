package com.transsion.widgetsbottomsheet.bottomsheet;

import android.animation.Animator;
import android.animation.LayoutTransition;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.j57;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\rJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBSContainerFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Lzfb;", "installLayoutTransition", "()V", "uninstallLayoutTransition", "", "isTranslationRunning", "()Z", "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSBSContainerFrameLayout extends FrameLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBSContainerFrameLayout(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public final void installLayoutTransition() {
        if (getLayoutTransition() == null) {
            setLayoutTransition(new LayoutTransition());
        }
        LayoutTransition layoutTransition = getLayoutTransition();
        if (layoutTransition != null) {
            layoutTransition.setAnimator(2, null);
            layoutTransition.setAnimator(3, null);
            layoutTransition.setAnimator(1, null);
            layoutTransition.setDuration(0, 350L);
            layoutTransition.setInterpolator(0, new j57());
        }
    }

    public final boolean isTranslationRunning() {
        return getLayoutTransition() != null && getLayoutTransition().isRunning();
    }

    public final void uninstallLayoutTransition() {
        LayoutTransition layoutTransition = getLayoutTransition();
        if (layoutTransition != null) {
            if (layoutTransition.isRunning()) {
                Animator animator = layoutTransition.getAnimator(2);
                if (animator != null) {
                    y45.i(animator, "getAnimator(LayoutTransition.APPEARING)");
                    animator.cancel();
                }
                Animator animator2 = layoutTransition.getAnimator(3);
                if (animator2 != null) {
                    y45.i(animator2, "getAnimator(LayoutTransition.DISAPPEARING)");
                    animator2.cancel();
                }
                Animator animator3 = layoutTransition.getAnimator(1);
                if (animator3 != null) {
                    y45.i(animator3, "getAnimator(LayoutTransition.CHANGE_DISAPPEARING)");
                    animator3.cancel();
                }
                Animator animator4 = layoutTransition.getAnimator(0);
                if (animator4 != null) {
                    y45.i(animator4, "getAnimator(LayoutTransition.CHANGE_APPEARING)");
                    animator4.cancel();
                }
            }
            setLayoutTransition(null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBSContainerFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBSContainerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSBSContainerFrameLayout(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSBSContainerFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
    }
}

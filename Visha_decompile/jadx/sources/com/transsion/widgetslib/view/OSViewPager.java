package com.transsion.widgetslib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import defpackage.scc;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000b\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/widgetslib/view/OSViewPager;", "Landroidx/viewpager/widget/ViewPager;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "item", "Lzfb;", "setCurrentItem", "(I)V", "", "smoothScroll", "(IZ)V", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSViewPager extends ViewPager {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OSViewPager(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        y45.j(context, "context");
    }

    @Override
    public void setCurrentItem(int item) {
        setCurrentItem(item, false);
    }

    public OSViewPager(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    @Override
    public void setCurrentItem(int item, boolean smoothScroll) {
        int currentItem = !smoothScroll ? getCurrentItem() : 0;
        super.setCurrentItem(item, smoothScroll);
        if (smoothScroll || currentItem == item) {
            return;
        }
        View childAt = getChildAt(currentItem);
        View childAt2 = getChildAt(item);
        if (childAt == null || childAt2 == null) {
            return;
        }
        scc.a.a(childAt, childAt2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }
}

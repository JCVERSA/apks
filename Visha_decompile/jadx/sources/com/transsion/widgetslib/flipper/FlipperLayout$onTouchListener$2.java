package com.transsion.widgetslib.flipper;

import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.c74;
import defpackage.olb;
import defpackage.ty3;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/view/View$OnTouchListener;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
public final class FlipperLayout$onTouchListener$2 extends Lambda implements c74 {
    final FlipperLayout this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlipperLayout$onTouchListener$2(FlipperLayout flipperLayout) {
        super(0);
        this.this$0 = flipperLayout;
    }

    public static final boolean b(FlipperLayout flipperLayout, View view, MotionEvent motionEvent) {
        y45.j(flipperLayout, "this$0");
        int action = motionEvent.getAction();
        if (action == 0) {
            flipperLayout.downX = motionEvent.getX();
        } else if (action == 1) {
            if (flipperLayout.downX == motionEvent.getX()) {
                view.performClick();
            } else if (olb.l0()) {
                if (flipperLayout.downX > motionEvent.getX()) {
                    ViewPager2 viewPager2 = flipperLayout.viewPager;
                    if (viewPager2 == null) {
                        y45.B("viewPager");
                        viewPager2 = null;
                    }
                    ty3.f(viewPager2, flipperLayout.currentPst - 1, false, 2, null);
                } else {
                    ViewPager2 viewPager3 = flipperLayout.viewPager;
                    if (viewPager3 == null) {
                        y45.B("viewPager");
                        viewPager3 = null;
                    }
                    ty3.f(viewPager3, flipperLayout.currentPst + 1, false, 2, null);
                }
            } else if (flipperLayout.downX > motionEvent.getX()) {
                ViewPager2 viewPager4 = flipperLayout.viewPager;
                if (viewPager4 == null) {
                    y45.B("viewPager");
                    viewPager4 = null;
                }
                ty3.f(viewPager4, flipperLayout.currentPst + 1, false, 2, null);
            } else {
                ViewPager2 viewPager5 = flipperLayout.viewPager;
                if (viewPager5 == null) {
                    y45.B("viewPager");
                    viewPager5 = null;
                }
                ty3.f(viewPager5, flipperLayout.currentPst - 1, false, 2, null);
            }
        }
        return true;
    }

    @Override
    public final View.OnTouchListener invoke() {
        final FlipperLayout flipperLayout = this.this$0;
        return new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return FlipperLayout$onTouchListener$2.b(flipperLayout, view, motionEvent);
            }
        };
    }
}

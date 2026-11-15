package com.mbridge.msdk.foundation.tools;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;

public class b1 {

    private static boolean f34860a;

    private static int a(View view, ViewGroup viewGroup) {
        int i10 = 0;
        while (i10 < viewGroup.getChildCount() && viewGroup.getChildAt(i10) != view) {
            i10++;
        }
        return i10;
    }

    private static boolean a(View view, View view2, int i10) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        view2.getGlobalVisibleRect(rect2);
        if (!Rect.intersects(rect, rect2)) {
            return false;
        }
        int iMin = Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left);
        int iMin2 = Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top);
        return (i10 != 1 && (iMin * iMin2) * 2 >= view.getMeasuredHeight() * view.getMeasuredWidth()) || (i10 == 1 && iMin * iMin2 >= view.getMeasuredHeight() * view.getMeasuredWidth());
    }

    private static boolean a(View view, ViewGroup viewGroup, int i10) {
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            o0.b("ViewUtils", "View Judge : Start Loop");
            View childAt = viewGroup.getChildAt(i11);
            if (childAt.getVisibility() == 0 && a(view, childAt, i10)) {
                if ((childAt instanceof WebView) && childAt.getVisibility() == 0) {
                    o0.b("ViewUtils", "View Judge : View Covered by WebView.");
                    f34860a = true;
                }
                if (a(childAt)) {
                    o0.b("ViewUtils", "View Judge : View Covered and Cover ViewGroup is not transparent.");
                    f34860a = true;
                }
                if (f34860a) {
                    break;
                }
                if (childAt instanceof ViewGroup) {
                    a(view, (ViewGroup) childAt, i10);
                }
            }
        }
        return f34860a;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00f9 A[SYNTHETIC] */
    public static boolean a(View view, int i10) {
        if (view == null) {
            return true;
        }
        if (view.getVisibility() != 0) {
            o0.b("ViewUtils", "Banner Judge : Banner's not visible.");
            return true;
        }
        if (view.getAlpha() < 0.5f) {
            o0.b("ViewUtils", "Banner Judge : Banner's alpha must set up 50%.");
            return true;
        }
        if (view.getParent() != null && (view.getParent() instanceof ViewGroup) && ((ViewGroup) view.getParent()).getVisibility() != 0) {
            o0.b("ViewUtils", "View Judge : View's container is not visible.");
            return true;
        }
        Rect rect = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
        boolean z10 = ((float) ((rect.bottom - rect.top) * (rect.right - rect.left))) > ((float) (view.getMeasuredHeight() * view.getMeasuredWidth())) * (i10 == 1 ? 0.0f : 0.5f);
        boolean z11 = globalVisibleRect && z10;
        o0.b("ViewUtils", "View Judge : partVisible is " + globalVisibleRect + " halfPercentVisible is " + z10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("View Judge : totalViewVisible is ");
        sb2.append(z11);
        o0.b("ViewUtils", sb2.toString());
        if (!z11) {
            return true;
        }
        View view2 = view;
        while (view2.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            for (int iA = a(view2, viewGroup) + 1; iA < viewGroup.getChildCount(); iA++) {
                View childAt = viewGroup.getChildAt(iA);
                if (childAt.getVisibility() == 0 && a(view, childAt, i10)) {
                    if (childAt instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) childAt;
                        if (viewGroup2.getChildCount() > 0) {
                            o0.b("ViewUtils", "View Judge : Covered by ViewGroup.");
                            boolean zA = a(view, viewGroup2, i10);
                            f34860a = false;
                            if (zA) {
                                return true;
                            }
                        } else if (a(childAt)) {
                            o0.b("ViewUtils", "View Judge : View Covered and Cover View is not transparent.");
                            return true;
                        }
                    } else if (a(childAt)) {
                        o0.b("ViewUtils", "View Judge : View Covered and Cover View is not transparent.");
                        return true;
                    }
                }
            }
            view2 = viewGroup;
        }
        o0.b("ViewUtils", "View Judge : Well done, View is not covered.");
        return false;
    }

    public static boolean a(View view) {
        return !(view != null && (view.getTag() instanceof String) && "mb_wm".equals(view.getTag())) && view.getBackground() != null && view.getBackground().getAlpha() > 127 && view.getAlpha() > 0.5f;
    }
}

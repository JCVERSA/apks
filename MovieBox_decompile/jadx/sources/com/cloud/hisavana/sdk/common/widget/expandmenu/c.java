package com.cloud.hisavana.sdk.common.widget.expandmenu;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.appcompat.R$style;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.b4;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;

public abstract class c {

    class a implements ViewTreeObserver.OnGlobalLayoutListener {

        final AdExpandMenuContentView f21666a;

        final View f21667b;

        final boolean f21668c;

        a(AdExpandMenuContentView adExpandMenuContentView, View view, boolean z10) {
            this.f21666a = adExpandMenuContentView;
            this.f21667b = view;
            this.f21668c = z10;
        }

        @Override
        public void onGlobalLayout() {
            c.d(this.f21666a, this.f21667b, this.f21668c);
            this.f21666a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    public static void d(AdExpandMenuContentView adExpandMenuContentView, View view, boolean z10) {
        View viewFindViewById = adExpandMenuContentView.findViewById(R$id.arrow_up);
        View viewFindViewById2 = adExpandMenuContentView.findViewById(R$id.arrow_down);
        int[] iArr = new int[2];
        adExpandMenuContentView.getLocationInWindow(iArr);
        int i10 = iArr[0];
        view.getLocationInWindow(iArr);
        int i11 = iArr[0];
        int iA = h.a(210.0f);
        int iA2 = h.a(11.0f);
        int iA3 = h.a(8.0f);
        int iMin = Math.min((iA - iA2) - iA3, Math.max(iA3, ((i11 - i10) + (view.getWidth() / 2)) - (viewFindViewById.getWidth() / 2)));
        ((RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams()).setMarginStart(iMin);
        ((RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams()).setMarginStart(iMin);
        viewFindViewById.setVisibility(z10 ? 8 : 0);
        viewFindViewById2.setVisibility(z10 ? 0 : 8);
        adExpandMenuContentView.requestLayout();
    }

    private static int[] e(View view, View view2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int iG = h.g();
        int iF = h.f();
        int i10 = 0;
        int iMin = Math.min((iG - view2.getMeasuredWidth()) - h.a(4.0f), Math.max(h.a(4.0f), ((iArr[0] + view.getWidth()) - view2.getMeasuredWidth()) + h.a(8.0f)));
        int height = iArr[1] + view.getHeight();
        if (view2.getMeasuredHeight() + height + h.a(20.0f) > iF) {
            height = iArr[1] - view2.getMeasuredHeight();
            i10 = 1;
        }
        return new int[]{iMin, height, i10};
    }

    public static void f(PopupWindow popupWindow) {
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public static void h(PopupWindow popupWindow, AdExpandMenuContentView.d dVar, AdExpandMenuItemView.Type type) {
        f(popupWindow);
        if (dVar != null) {
            dVar.a(type);
        }
    }

    public static PopupWindow i(View view, String str, final AdExpandMenuContentView.d dVar) {
        if (view == null) {
            return null;
        }
        try {
            FrameLayout frameLayout = new FrameLayout(e.a());
            frameLayout.setBackgroundColor(Color.parseColor("#33000000"));
            AdExpandMenuContentView adExpandMenuContentView = new AdExpandMenuContentView(e.a());
            adExpandMenuContentView.setAdvertiserName(str);
            adExpandMenuContentView.measure(View.MeasureSpec.makeMeasureSpec(h.a(210.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            frameLayout.addView(adExpandMenuContentView, new FrameLayout.LayoutParams(adExpandMenuContentView.getMeasuredWidth(), adExpandMenuContentView.getMeasuredHeight()));
            final PopupWindow popupWindow = new PopupWindow((View) frameLayout, -1, -1, false);
            popupWindow.setBackgroundDrawable(new ColorDrawable());
            popupWindow.setAnimationStyle(R$style.Animation_AppCompat_Dialog);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setTouchable(true);
            popupWindow.setFocusable(true);
            popupWindow.setClippingEnabled(true);
            if (Build.VERSION.SDK_INT >= 29) {
                popupWindow.setIsClippedToScreen(true);
            }
            popupWindow.update();
            int[] iArrE = e(view, adExpandMenuContentView);
            boolean z10 = iArrE[2] == 1;
            frameLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    c.f(popupWindow);
                }
            });
            adExpandMenuContentView.getViewTreeObserver().addOnGlobalLayoutListener(new a(adExpandMenuContentView, view, z10));
            adExpandMenuContentView.setListener(new AdExpandMenuContentView.d() {
                @Override
                public final void a(AdExpandMenuItemView.Type type) {
                    c.h(popupWindow, dVar, type);
                }
            });
            int i10 = iArrE[0];
            int i11 = iArrE[1];
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) adExpandMenuContentView.getLayoutParams();
            layoutParams.setMarginStart(i10);
            layoutParams.topMargin = i11;
            adExpandMenuContentView.setLayoutParams(layoutParams);
            popupWindow.showAtLocation(view, 0, 0, 0);
            return popupWindow;
        } catch (Exception unused) {
            b4.b().w("AdExpandMenu", "Failed to show adexpandmenu.");
            return null;
        }
    }
}

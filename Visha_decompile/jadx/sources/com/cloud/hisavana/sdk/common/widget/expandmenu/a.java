package com.cloud.hisavana.sdk.common.widget.expandmenu;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuItemView;
import com.cloud.hisavana.sdk.common.widget.expandmenu.a;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.ul4;

public abstract class a {

    public class ViewTreeObserverOnGlobalLayoutListenerC0045a implements ViewTreeObserver.OnGlobalLayoutListener {
        public final AdExpandMenuContentView b;
        public final View c;
        public final boolean d;

        public ViewTreeObserverOnGlobalLayoutListenerC0045a(AdExpandMenuContentView adExpandMenuContentView, View view, boolean z) {
            this.b = adExpandMenuContentView;
            this.c = view;
            this.d = z;
        }

        @Override
        public void onGlobalLayout() {
            a.d(this.b, this.c, this.d);
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    public static void d(AdExpandMenuContentView adExpandMenuContentView, View view, boolean z) {
        View viewFindViewById = adExpandMenuContentView.findViewById(R.id.arrow_up);
        View viewFindViewById2 = adExpandMenuContentView.findViewById(R.id.arrow_down);
        int[] iArr = new int[2];
        adExpandMenuContentView.getLocationInWindow(iArr);
        int i = iArr[0];
        view.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int iA = hm4.a(210.0f);
        int iA2 = hm4.a(11.0f);
        int iA3 = hm4.a(8.0f);
        int iMin = Math.min((iA - iA2) - iA3, Math.max(iA3, ((i2 - i) + (view.getWidth() / 2)) - (viewFindViewById.getWidth() / 2)));
        ((RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams()).setMarginStart(iMin);
        ((RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams()).setMarginStart(iMin);
        viewFindViewById.setVisibility(z ? 8 : 0);
        viewFindViewById2.setVisibility(z ? 0 : 8);
        adExpandMenuContentView.requestLayout();
    }

    public static int[] e(View view, View view2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int iH = hm4.h();
        int iG = hm4.g();
        int i = 0;
        int iMin = Math.min((iH - view2.getMeasuredWidth()) - hm4.a(4.0f), Math.max(hm4.a(4.0f), ((iArr[0] + view.getWidth()) - view2.getMeasuredWidth()) + hm4.a(8.0f)));
        int height = iArr[1] + view.getHeight();
        if (view2.getMeasuredHeight() + height + hm4.a(20.0f) > iG) {
            height = iArr[1] - view2.getMeasuredHeight();
            i = 1;
        }
        return new int[]{iMin, height, i};
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
            FrameLayout frameLayout = new FrameLayout(ul4.a());
            frameLayout.setBackgroundColor(Color.parseColor("#33000000"));
            AdExpandMenuContentView adExpandMenuContentView = new AdExpandMenuContentView(ul4.a());
            adExpandMenuContentView.setAdvertiserName(str);
            adExpandMenuContentView.measure(View.MeasureSpec.makeMeasureSpec(hm4.a(210.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            frameLayout.addView(adExpandMenuContentView, new FrameLayout.LayoutParams(adExpandMenuContentView.getMeasuredWidth(), adExpandMenuContentView.getMeasuredHeight()));
            final PopupWindow popupWindow = new PopupWindow((View) frameLayout, -1, -1, false);
            popupWindow.setBackgroundDrawable(new ColorDrawable());
            popupWindow.setAnimationStyle(androidx.appcompat.R.style.Animation_AppCompat_Dialog);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setTouchable(true);
            popupWindow.setFocusable(true);
            popupWindow.setClippingEnabled(true);
            popupWindow.setIsClippedToScreen(true);
            popupWindow.update();
            int[] iArrE = e(view, adExpandMenuContentView);
            boolean z = iArrE[2] == 1;
            frameLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    a.f(popupWindow);
                }
            });
            adExpandMenuContentView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0045a(adExpandMenuContentView, view, z));
            adExpandMenuContentView.setListener(new AdExpandMenuContentView.d() {
                @Override
                public final void a(AdExpandMenuItemView.Type type) {
                    a.h(popupWindow, dVar, type);
                }
            });
            int i = iArrE[0];
            int i2 = iArrE[1];
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) adExpandMenuContentView.getLayoutParams();
            layoutParams.setMarginStart(i);
            layoutParams.topMargin = i2;
            adExpandMenuContentView.setLayoutParams(layoutParams);
            popupWindow.showAtLocation(view, 0, 0, 0);
            return popupWindow;
        } catch (Exception unused) {
            ikd.b().w("AdExpandMenu", "Failed to show adexpandmenu.");
            return null;
        }
    }
}

package com.transsion.widgetsbottomsheet.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsliquid.effect.OSMaskFrameLayout;
import com.transsion.widgetsliquid.view.OSLiquidButton;
import com.transsion.widgetsliquid.view.OSLiquidTextButton;

public final class OsBottomSheetTitleBinding implements ViewBinding {
    public final OSMaskFrameLayout b;
    public final OSMaskFrameLayout c;
    public final OSLiquidTextButton d;
    public final OSLiquidTextButton e;
    public final OSLiquidButton f;
    public final OSLiquidButton g;
    public final LinearLayout h;
    public final LinearLayout i;
    public final LinearLayout j;
    public final TextView k;
    public final TextView l;

    public OsBottomSheetTitleBinding(OSMaskFrameLayout oSMaskFrameLayout, OSMaskFrameLayout oSMaskFrameLayout2, OSLiquidTextButton oSLiquidTextButton, OSLiquidTextButton oSLiquidTextButton2, OSLiquidButton oSLiquidButton, OSLiquidButton oSLiquidButton2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2) {
        this.b = oSMaskFrameLayout;
        this.c = oSMaskFrameLayout2;
        this.d = oSLiquidTextButton;
        this.e = oSLiquidTextButton2;
        this.f = oSLiquidButton;
        this.g = oSLiquidButton2;
        this.h = linearLayout;
        this.i = linearLayout2;
        this.j = linearLayout3;
        this.k = textView;
        this.l = textView2;
    }

    public static OsBottomSheetTitleBinding a(View view) {
        OSMaskFrameLayout oSMaskFrameLayout = (OSMaskFrameLayout) view;
        int i = R.id.button_left;
        OSLiquidTextButton oSLiquidTextButton = (OSLiquidTextButton) ViewBindings.findChildViewById(view, i);
        if (oSLiquidTextButton != null) {
            i = R.id.button_right;
            OSLiquidTextButton oSLiquidTextButton2 = (OSLiquidTextButton) ViewBindings.findChildViewById(view, i);
            if (oSLiquidTextButton2 != null) {
                i = R.id.img_left;
                OSLiquidButton oSLiquidButton = (OSLiquidButton) ViewBindings.findChildViewById(view, i);
                if (oSLiquidButton != null) {
                    i = R.id.img_right;
                    OSLiquidButton oSLiquidButton2 = (OSLiquidButton) ViewBindings.findChildViewById(view, i);
                    if (oSLiquidButton2 != null) {
                        i = R.id.left_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            i = R.id.right_container;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout2 != null) {
                                i = R.id.title_container;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout3 != null) {
                                    i = R.id.tv_subtitle;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R.id.tv_title;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            return new OsBottomSheetTitleBinding(oSMaskFrameLayout, oSMaskFrameLayout, oSLiquidTextButton, oSLiquidTextButton2, oSLiquidButton, oSLiquidButton2, linearLayout, linearLayout2, linearLayout3, textView, textView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static OsBottomSheetTitleBinding c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static OsBottomSheetTitleBinding d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.os_bottom_sheet_title, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public OSMaskFrameLayout getRoot() {
        return this.b;
    }
}

package com.transsion.widgetsbottomsheet.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBSContainerFrameLayout;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetContainer;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import com.transsion.widgetsbottomsheet.bottomsheet.OSSmoothCornerLinearLayout;

public final class OsBottomSheetContainerBinding implements ViewBinding {
    public final OSBottomSheetContainer b;
    public final OSBottomSheetContainer c;
    public final RelativeLayout d;
    public final OSSmoothCornerLinearLayout e;
    public final ImageView f;
    public final OSBottomSheetPanel g;
    public final FrameLayout h;
    public final OSBSContainerFrameLayout i;
    public final View j;
    public final View k;
    public final View l;

    public OsBottomSheetContainerBinding(OSBottomSheetContainer oSBottomSheetContainer, OSBottomSheetContainer oSBottomSheetContainer2, RelativeLayout relativeLayout, OSSmoothCornerLinearLayout oSSmoothCornerLinearLayout, ImageView imageView, OSBottomSheetPanel oSBottomSheetPanel, FrameLayout frameLayout, OSBSContainerFrameLayout oSBSContainerFrameLayout, View view, View view2, View view3) {
        this.b = oSBottomSheetContainer;
        this.c = oSBottomSheetContainer2;
        this.d = relativeLayout;
        this.e = oSSmoothCornerLinearLayout;
        this.f = imageView;
        this.g = oSBottomSheetPanel;
        this.h = frameLayout;
        this.i = oSBSContainerFrameLayout;
        this.j = view;
        this.k = view2;
        this.l = view3;
    }

    public static OsBottomSheetContainerBinding a(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        View viewFindChildViewById3;
        OSBottomSheetContainer oSBottomSheetContainer = (OSBottomSheetContainer) view;
        int i = R.id.content_bg_drawable;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
        if (relativeLayout != null) {
            i = R.id.content_visible;
            OSSmoothCornerLinearLayout oSSmoothCornerLinearLayout = (OSSmoothCornerLinearLayout) ViewBindings.findChildViewById(view, i);
            if (oSSmoothCornerLinearLayout != null) {
                i = R.id.drag_handler;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R.id.drag_panel;
                    OSBottomSheetPanel oSBottomSheetPanel = (OSBottomSheetPanel) ViewBindings.findChildViewById(view, i);
                    if (oSBottomSheetPanel != null) {
                        i = R.id.drag_rect;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                        if (frameLayout != null) {
                            i = R.id.panel_content;
                            OSBSContainerFrameLayout oSBSContainerFrameLayout = (OSBSContainerFrameLayout) ViewBindings.findChildViewById(view, i);
                            if (oSBSContainerFrameLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.pull_rect))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.title_mask_top))) != null && (viewFindChildViewById3 = ViewBindings.findChildViewById(view, (i = R.id.touch_outside))) != null) {
                                return new OsBottomSheetContainerBinding(oSBottomSheetContainer, oSBottomSheetContainer, relativeLayout, oSSmoothCornerLinearLayout, imageView, oSBottomSheetPanel, frameLayout, oSBSContainerFrameLayout, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static OsBottomSheetContainerBinding c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.os_bottom_sheet_container, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public OSBottomSheetContainer getRoot() {
        return this.b;
    }
}

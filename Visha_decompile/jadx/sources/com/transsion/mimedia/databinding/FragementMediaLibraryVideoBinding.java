package com.transsion.mimedia.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.mimedia.R;
import com.transsion.widgets.CustomSwipeRefreshLayout;

public final class FragementMediaLibraryVideoBinding implements ViewBinding {
    public final RelativeLayout b;
    public final Button c;
    public final ViewStub d;
    public final FrameLayout e;
    public final ShapeableImageView f;
    public final LinearLayout g;
    public final CustomSwipeRefreshLayout h;
    public final RecyclerView i;
    public final View j;
    public final TextView k;
    public final TextView l;

    public FragementMediaLibraryVideoBinding(RelativeLayout relativeLayout, Button button, ViewStub viewStub, FrameLayout frameLayout, ShapeableImageView shapeableImageView, LinearLayout linearLayout, CustomSwipeRefreshLayout customSwipeRefreshLayout, RecyclerView recyclerView, View view, TextView textView, TextView textView2) {
        this.b = relativeLayout;
        this.c = button;
        this.d = viewStub;
        this.e = frameLayout;
        this.f = shapeableImageView;
        this.g = linearLayout;
        this.h = customSwipeRefreshLayout;
        this.i = recyclerView;
        this.j = view;
        this.k = textView;
        this.l = textView2;
    }

    public static FragementMediaLibraryVideoBinding a(View view) {
        View viewFindChildViewById;
        int i = R.id.btn_save_cloud;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.error_layout;
            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
            if (viewStub != null) {
                i = R.id.fl_collect_status;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout != null) {
                    i = R.id.iv_avatar;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                    if (shapeableImageView != null) {
                        i = R.id.ll_header;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            i = R.id.pull_refresh_layout;
                            CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) ViewBindings.findChildViewById(view, i);
                            if (customSwipeRefreshLayout != null) {
                                i = R.id.rv_media_library;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.title_bar))) != null) {
                                    i = R.id.tv_subtitle;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R.id.tv_title;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            return new FragementMediaLibraryVideoBinding((RelativeLayout) view, button, viewStub, frameLayout, shapeableImageView, linearLayout, customSwipeRefreshLayout, recyclerView, viewFindChildViewById, textView, textView2);
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

    public static FragementMediaLibraryVideoBinding c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragement_media_library_video, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.b;
    }
}

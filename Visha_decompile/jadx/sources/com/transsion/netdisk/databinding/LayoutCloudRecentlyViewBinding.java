package com.transsion.netdisk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.netdisk.R;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgetslib.widget.OSIconTextView;

public final class LayoutCloudRecentlyViewBinding implements ViewBinding {
    public final RelativeLayout b;
    public final ViewStub c;
    public final ImageView d;
    public final CustomSwipeRefreshLayout e;
    public final RecyclerView f;
    public final RelativeLayout g;
    public final OSIconTextView h;
    public final TextView i;
    public final View j;

    public LayoutCloudRecentlyViewBinding(RelativeLayout relativeLayout, ViewStub viewStub, ImageView imageView, CustomSwipeRefreshLayout customSwipeRefreshLayout, RecyclerView recyclerView, RelativeLayout relativeLayout2, OSIconTextView oSIconTextView, TextView textView, View view) {
        this.b = relativeLayout;
        this.c = viewStub;
        this.d = imageView;
        this.e = customSwipeRefreshLayout;
        this.f = recyclerView;
        this.g = relativeLayout2;
        this.h = oSIconTextView;
        this.i = textView;
        this.j = view;
    }

    public static LayoutCloudRecentlyViewBinding a(View view) {
        View viewFindChildViewById;
        int i = R.id.bottom_action_new_bar;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
        if (viewStub != null) {
            i = R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R.id.pull_damping_layout;
                CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) ViewBindings.findChildViewById(view, i);
                if (customSwipeRefreshLayout != null) {
                    i = R.id.rc_recently_video_view;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView != null) {
                        i = R.id.rl_title_bar;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                        if (relativeLayout != null) {
                            i = R.id.title_bar_back;
                            OSIconTextView oSIconTextView = (OSIconTextView) ViewBindings.findChildViewById(view, i);
                            if (oSIconTextView != null) {
                                i = R.id.tv_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_padding_start))) != null) {
                                    return new LayoutCloudRecentlyViewBinding((RelativeLayout) view, viewStub, imageView, customSwipeRefreshLayout, recyclerView, relativeLayout, oSIconTextView, textView, viewFindChildViewById);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutCloudRecentlyViewBinding c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_cloud_recently_view, viewGroup, false);
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

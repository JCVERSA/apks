package com.transsion.netdisk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.netdisk.R;
import com.transsion.widgetslib.widget.OSIconTextView;

public final class LayoutCloudUploadViewBinding implements ViewBinding {
    public final RelativeLayout b;
    public final ImageView c;
    public final ViewStub d;
    public final RecyclerView e;
    public final RelativeLayout f;
    public final OSIconTextView g;
    public final TextView h;
    public final FrameLayout i;
    public final View j;
    public final View k;

    public LayoutCloudUploadViewBinding(RelativeLayout relativeLayout, ImageView imageView, ViewStub viewStub, RecyclerView recyclerView, RelativeLayout relativeLayout2, OSIconTextView oSIconTextView, TextView textView, FrameLayout frameLayout, View view, View view2) {
        this.b = relativeLayout;
        this.c = imageView;
        this.d = viewStub;
        this.e = recyclerView;
        this.f = relativeLayout2;
        this.g = oSIconTextView;
        this.h = textView;
        this.i = frameLayout;
        this.j = view;
        this.k = view2;
    }

    public static LayoutCloudUploadViewBinding a(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.iv_logo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.main_empty_view;
            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
            if (viewStub != null) {
                i = R.id.rc_upload_video_view;
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
                            if (textView != null) {
                                i = R.id.upload_bottom_layout;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                                if (frameLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.upload_bottom_view))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_padding_start))) != null) {
                                    return new LayoutCloudUploadViewBinding((RelativeLayout) view, imageView, viewStub, recyclerView, relativeLayout, oSIconTextView, textView, frameLayout, viewFindChildViewById, viewFindChildViewById2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutCloudUploadViewBinding c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_cloud_upload_view, viewGroup, false);
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

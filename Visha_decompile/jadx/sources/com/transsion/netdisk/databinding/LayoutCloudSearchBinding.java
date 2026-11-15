package com.transsion.netdisk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.netdisk.R;

public final class LayoutCloudSearchBinding implements ViewBinding {
    public final RelativeLayout b;
    public final LinearLayout c;
    public final ViewStub d;
    public final ImageView e;
    public final ImageView f;
    public final LinearLayout g;
    public final RelativeLayout h;
    public final ViewStub i;
    public final RecyclerView j;
    public final RecyclerView k;
    public final RecyclerView l;
    public final LinearLayout m;
    public final LinearLayout n;
    public final View o;
    public final TextView p;

    public LayoutCloudSearchBinding(RelativeLayout relativeLayout, LinearLayout linearLayout, ViewStub viewStub, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, RelativeLayout relativeLayout2, ViewStub viewStub2, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, LinearLayout linearLayout3, LinearLayout linearLayout4, View view, TextView textView) {
        this.b = relativeLayout;
        this.c = linearLayout;
        this.d = viewStub;
        this.e = imageView;
        this.f = imageView2;
        this.g = linearLayout2;
        this.h = relativeLayout2;
        this.i = viewStub2;
        this.j = recyclerView;
        this.k = recyclerView2;
        this.l = recyclerView3;
        this.m = linearLayout3;
        this.n = linearLayout4;
        this.o = view;
        this.p = textView;
    }

    public static LayoutCloudSearchBinding a(View view) {
        View viewFindChildViewById;
        int i = R.id.btn_privacy_browse;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R.id.empty_view;
            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
            if (viewStub != null) {
                i = R.id.iv_arrow;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R.id.iv_tag;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView2 != null) {
                        i = R.id.ll_search;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = R.id.ll_search_network;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                            if (relativeLayout != null) {
                                i = R.id.main_empty_view;
                                ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, i);
                                if (viewStub2 != null) {
                                    i = R.id.rv_history;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                    if (recyclerView != null) {
                                        i = R.id.rv_recommend;
                                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                        if (recyclerView2 != null) {
                                            i = R.id.rv_search_list;
                                            RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                            if (recyclerView3 != null) {
                                                i = R.id.search_bar;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (linearLayout3 != null) {
                                                    i = R.id.search_content;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (linearLayout4 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.search_file))) != null) {
                                                        i = R.id.tv_privacy_browse;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView != null) {
                                                            return new LayoutCloudSearchBinding((RelativeLayout) view, linearLayout, viewStub, imageView, imageView2, linearLayout2, relativeLayout, viewStub2, recyclerView, recyclerView2, recyclerView3, linearLayout3, linearLayout4, viewFindChildViewById, textView);
                                                        }
                                                    }
                                                }
                                            }
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

    public static LayoutCloudSearchBinding c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_cloud_search, viewGroup, false);
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

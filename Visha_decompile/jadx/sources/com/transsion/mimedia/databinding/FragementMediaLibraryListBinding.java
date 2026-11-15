package com.transsion.mimedia.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.mimedia.R;
import com.transsion.widgets.CustomSwipeRefreshLayout;

public final class FragementMediaLibraryListBinding implements ViewBinding {
    public final RelativeLayout b;
    public final CustomSwipeRefreshLayout c;
    public final RecyclerView d;
    public final View e;

    public FragementMediaLibraryListBinding(RelativeLayout relativeLayout, CustomSwipeRefreshLayout customSwipeRefreshLayout, RecyclerView recyclerView, View view) {
        this.b = relativeLayout;
        this.c = customSwipeRefreshLayout;
        this.d = recyclerView;
        this.e = view;
    }

    public static FragementMediaLibraryListBinding a(View view) {
        View viewFindChildViewById;
        int i = R.id.pull_refresh_layout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) ViewBindings.findChildViewById(view, i);
        if (customSwipeRefreshLayout != null) {
            i = R.id.rv_media_library;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.title_bar))) != null) {
                return new FragementMediaLibraryListBinding((RelativeLayout) view, customSwipeRefreshLayout, recyclerView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FragementMediaLibraryListBinding c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragement_media_library_list, viewGroup, false);
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

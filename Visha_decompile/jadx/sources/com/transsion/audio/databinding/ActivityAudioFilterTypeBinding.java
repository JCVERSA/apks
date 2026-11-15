package com.transsion.audio.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.audio.R;

public final class ActivityAudioFilterTypeBinding implements ViewBinding {
    public final LinearLayout b;
    public final LinearLayout c;
    public final ViewStub d;
    public final RecyclerView e;
    public final RecyclerView f;
    public final View g;
    public final TextView h;

    public ActivityAudioFilterTypeBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ViewStub viewStub, RecyclerView recyclerView, RecyclerView recyclerView2, View view, TextView textView) {
        this.b = linearLayout;
        this.c = linearLayout2;
        this.d = viewStub;
        this.e = recyclerView;
        this.f = recyclerView2;
        this.g = view;
        this.h = textView;
    }

    public static ActivityAudioFilterTypeBinding a(View view) {
        View viewFindChildViewById;
        int i = R.id.ll_filter_list_header;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R.id.main_empty_view;
            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
            if (viewStub != null) {
                i = R.id.rv_filter_current_result_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = R.id.rv_filter_type_choice;
                    RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.title_bar))) != null) {
                        i = R.id.tv_filter_hint;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            return new ActivityAudioFilterTypeBinding((LinearLayout) view, linearLayout, viewStub, recyclerView, recyclerView2, viewFindChildViewById, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityAudioFilterTypeBinding c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static ActivityAudioFilterTypeBinding d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_audio_filter_type, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.b;
    }
}

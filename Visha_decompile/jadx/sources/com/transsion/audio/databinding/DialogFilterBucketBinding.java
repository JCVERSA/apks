package com.transsion.audio.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.audio.R;
import com.transsion.widgetslib.widget.OSIconTextView;

public final class DialogFilterBucketBinding implements ViewBinding {
    public final LinearLayout b;
    public final OSIconTextView c;
    public final RelativeLayout d;
    public final LinearLayout e;
    public final RecyclerView f;
    public final TextView g;

    public DialogFilterBucketBinding(LinearLayout linearLayout, OSIconTextView oSIconTextView, RelativeLayout relativeLayout, LinearLayout linearLayout2, RecyclerView recyclerView, TextView textView) {
        this.b = linearLayout;
        this.c = oSIconTextView;
        this.d = relativeLayout;
        this.e = linearLayout2;
        this.f = recyclerView;
        this.g = textView;
    }

    public static DialogFilterBucketBinding a(View view) {
        int i = R.id.iv_back;
        OSIconTextView oSIconTextView = (OSIconTextView) ViewBindings.findChildViewById(view, i);
        if (oSIconTextView != null) {
            i = R.id.play_list_title;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
            if (relativeLayout != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.rv_filter_bucket_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        return new DialogFilterBucketBinding(linearLayout, oSIconTextView, relativeLayout, linearLayout, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogFilterBucketBinding c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static DialogFilterBucketBinding d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_filter_bucket, viewGroup, false);
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

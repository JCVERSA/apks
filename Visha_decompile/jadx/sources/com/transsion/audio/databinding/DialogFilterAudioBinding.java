package com.transsion.audio.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.audio.R;

public final class DialogFilterAudioBinding implements ViewBinding {
    public final NestedScrollView b;
    public final ImageView c;
    public final RelativeLayout d;
    public final LinearLayout e;
    public final RecyclerView f;
    public final TextView g;
    public final TextView h;

    public DialogFilterAudioBinding(NestedScrollView nestedScrollView, ImageView imageView, RelativeLayout relativeLayout, LinearLayout linearLayout, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.b = nestedScrollView;
        this.c = imageView;
        this.d = relativeLayout;
        this.e = linearLayout;
        this.f = recyclerView;
        this.g = textView;
        this.h = textView2;
    }

    public static DialogFilterAudioBinding a(View view) {
        int i = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.play_list_title;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
            if (relativeLayout != null) {
                i = R.id.root;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.rv_filter_list;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView != null) {
                        i = R.id.tv_hint;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R.id.tv_repeat;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                return new DialogFilterAudioBinding((NestedScrollView) view, imageView, relativeLayout, linearLayout, recyclerView, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogFilterAudioBinding c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static DialogFilterAudioBinding d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_filter_audio, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public NestedScrollView getRoot() {
        return this.b;
    }
}

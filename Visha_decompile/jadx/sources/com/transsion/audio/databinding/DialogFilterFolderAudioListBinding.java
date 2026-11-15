package com.transsion.audio.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.transsion.audio.R;

public final class DialogFilterFolderAudioListBinding implements ViewBinding {
    public final LinearLayout b;
    public final ViewStub c;
    public final RelativeLayout d;
    public final RecyclerView e;
    public final TextView f;
    public final TextView g;

    public DialogFilterFolderAudioListBinding(LinearLayout linearLayout, ViewStub viewStub, RelativeLayout relativeLayout, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.b = linearLayout;
        this.c = viewStub;
        this.d = relativeLayout;
        this.e = recyclerView;
        this.f = textView;
        this.g = textView2;
    }

    public static DialogFilterFolderAudioListBinding a(View view) {
        int i = R.id.main_empty_view;
        ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
        if (viewStub != null) {
            i = R.id.play_list_title;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
            if (relativeLayout != null) {
                i = R.id.rv_folder_audio_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = R.id.tv_folder_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R.id.tv_hint;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            return new DialogFilterFolderAudioListBinding((LinearLayout) view, viewStub, relativeLayout, recyclerView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogFilterFolderAudioListBinding c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static DialogFilterFolderAudioListBinding d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_filter_folder_audio_list, viewGroup, false);
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

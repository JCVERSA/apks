package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

public final class d implements f4.a {

    private final ConstraintLayout f63273a;

    public final EditTextWithClear f63274b;

    public final AppCompatImageView f63275c;

    public final ImageView f63276d;

    public final LinearLayoutCompat f63277e;

    public final TextView f63278f;

    public final TextView f63279g;

    public final TextView f63280h;

    private d(ConstraintLayout constraintLayout, EditTextWithClear editTextWithClear, AppCompatImageView appCompatImageView, ImageView imageView, LinearLayoutCompat linearLayoutCompat, TextView textView, TextView textView2, TextView textView3) {
        this.f63273a = constraintLayout;
        this.f63274b = editTextWithClear;
        this.f63275c = appCompatImageView;
        this.f63276d = imageView;
        this.f63277e = linearLayoutCompat;
        this.f63278f = textView;
        this.f63279g = textView2;
        this.f63280h = textView3;
    }

    public static d a(View view) {
        int i10 = R$id.et_search_keyword;
        EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
        if (editTextWithClear != null) {
            i10 = R$id.iv_search_keyword;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_select;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.ll_select;
                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                    if (linearLayoutCompat != null) {
                        i10 = R$id.tv_download;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.tv_tips;
                            TextView textView2 = (TextView) f4.b.a(view, i10);
                            if (textView2 != null) {
                                i10 = R$id.tv_title;
                                TextView textView3 = (TextView) f4.b.a(view, i10);
                                if (textView3 != null) {
                                    return new d((ConstraintLayout) view, editTextWithClear, appCompatImageView, imageView, linearLayoutCompat, textView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_no_subtitle_tips, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63273a;
    }
}

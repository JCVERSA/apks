package rg;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.tranpay.R$id;
import com.tn.lib.tranpay.R$layout;

public final class c implements f4.a {

    private final LinearLayoutCompat f71214a;

    public final FrameLayout f71215b;

    public final AppCompatImageView f71216c;

    public final AppCompatImageView f71217d;

    public final AppCompatImageView f71218e;

    public final ProgressBar f71219f;

    public final LinearLayoutCompat f71220g;

    public final ConstraintLayout f71221h;

    public final AppCompatTextView f71222i;

    public final d f71223j;

    private c(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ProgressBar progressBar, LinearLayoutCompat linearLayoutCompat2, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, d dVar) {
        this.f71214a = linearLayoutCompat;
        this.f71215b = frameLayout;
        this.f71216c = appCompatImageView;
        this.f71217d = appCompatImageView2;
        this.f71218e = appCompatImageView3;
        this.f71219f = progressBar;
        this.f71220g = linearLayoutCompat2;
        this.f71221h = constraintLayout;
        this.f71222i = appCompatTextView;
        this.f71223j = dVar;
    }

    public static c a(View view) {
        View viewA;
        int i10 = R$id.fl_web;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_close;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.iv_right;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView3 != null) {
                        i10 = R$id.progress;
                        ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                        if (progressBar != null) {
                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
                            i10 = R$id.tool_bar;
                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                            if (constraintLayout != null) {
                                i10 = R$id.tv_titleText;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.web_pay_include_loading))) != null) {
                                    return new c(linearLayoutCompat, frameLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, progressBar, linearLayoutCompat, constraintLayout, appCompatTextView, d.a(viewA));
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.tran_fragment_web_pay, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f71214a;
    }
}

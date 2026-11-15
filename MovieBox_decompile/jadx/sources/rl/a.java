package rl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.lib_web.R$id;
import com.transsion.lib_web.R$layout;
import f4.b;

public final class a implements f4.a {

    private final ConstraintLayout f71256a;

    public final AppCompatImageView f71257b;

    public final AppCompatImageView f71258c;

    public final AppCompatImageView f71259d;

    public final LinearLayoutCompat f71260e;

    public final ProgressBar f71261f;

    public final View f71262g;

    public final AppCompatTextView f71263h;

    public final FrameLayout f71264i;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayoutCompat linearLayoutCompat, ProgressBar progressBar, View view, AppCompatTextView appCompatTextView, FrameLayout frameLayout) {
        this.f71256a = constraintLayout;
        this.f71257b = appCompatImageView;
        this.f71258c = appCompatImageView2;
        this.f71259d = appCompatImageView3;
        this.f71260e = linearLayoutCompat;
        this.f71261f = progressBar;
        this.f71262g = view;
        this.f71263h = appCompatTextView;
        this.f71264i = frameLayout;
    }

    public static a a(View view) {
        View viewA;
        int i10 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivClose;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivRight;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.llToolBar;
                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) b.a(view, i10);
                    if (linearLayoutCompat != null) {
                        i10 = R$id.progressBar;
                        ProgressBar progressBar = (ProgressBar) b.a(view, i10);
                        if (progressBar != null && (viewA = b.a(view, (i10 = R$id.subWebHeaderBg))) != null) {
                            i10 = R$id.tvTitle;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.webContainer;
                                FrameLayout frameLayout = (FrameLayout) b.a(view, i10);
                                if (frameLayout != null) {
                                    return new a((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayoutCompat, progressBar, viewA, appCompatTextView, frameLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.lib_web_web_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f71256a;
    }
}

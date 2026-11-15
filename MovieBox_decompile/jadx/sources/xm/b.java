package xm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.payment.lib.R$id;
import com.transsion.payment.lib.R$layout;
import eh.g;

public final class b implements f4.a {

    private final LinearLayoutCompat f75356a;

    public final FrameLayout f75357b;

    public final AppCompatImageView f75358c;

    public final AppCompatImageView f75359d;

    public final AppCompatImageView f75360e;

    public final ProgressBar f75361f;

    public final LinearLayoutCompat f75362g;

    public final ConstraintLayout f75363h;

    public final AppCompatTextView f75364i;

    public final g f75365j;

    private b(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ProgressBar progressBar, LinearLayoutCompat linearLayoutCompat2, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, g gVar) {
        this.f75356a = linearLayoutCompat;
        this.f75357b = frameLayout;
        this.f75358c = appCompatImageView;
        this.f75359d = appCompatImageView2;
        this.f75360e = appCompatImageView3;
        this.f75361f = progressBar;
        this.f75362g = linearLayoutCompat2;
        this.f75363h = constraintLayout;
        this.f75364i = appCompatTextView;
        this.f75365j = gVar;
    }

    public static b a(View view) {
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
                                    return new b(linearLayoutCompat, frameLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, progressBar, linearLayoutCompat, constraintLayout, appCompatTextView, g.a(viewA));
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_web_pay, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75356a;
    }
}

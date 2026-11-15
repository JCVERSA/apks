package bx;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

public final class g implements f4.a {

    private final ConstraintLayout f16045a;

    public final TextView f16046b;

    public final View f16047c;

    public final AppCompatImageView f16048d;

    public final AppCompatImageView f16049e;

    public final AppCompatImageView f16050f;

    public final AppCompatImageView f16051g;

    public final AppCompatTextView f16052h;

    public final AppCompatTextView f16053i;

    private g(ConstraintLayout constraintLayout, TextView textView, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16045a = constraintLayout;
        this.f16046b = textView;
        this.f16047c = view;
        this.f16048d = appCompatImageView;
        this.f16049e = appCompatImageView2;
        this.f16050f = appCompatImageView3;
        this.f16051g = appCompatImageView4;
        this.f16052h = appCompatTextView;
        this.f16053i = appCompatTextView2;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.btn_bottom;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null && (viewA = f4.b.a(view, (i10 = R$id.btn_top))) != null) {
            i10 = R$id.ivAdIcon;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.ivAdLoading;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.iv_back;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView3 != null) {
                        i10 = R$id.iv_icon;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView4 != null) {
                            i10 = R$id.tvAdWatchAVideo;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_tips;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    return new g((ConstraintLayout) view, textView, viewA, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16045a;
    }
}

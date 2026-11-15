package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

public final class n implements f4.a {

    private final ConstraintLayout f16174a;

    public final View f16175b;

    public final AppCompatImageView f16176c;

    public final AppCompatImageView f16177d;

    public final AppCompatTextView f16178e;

    public final AppCompatTextView f16179f;

    public final AppCompatTextView f16180g;

    private n(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f16174a = constraintLayout;
        this.f16175b = view;
        this.f16176c = appCompatImageView;
        this.f16177d = appCompatImageView2;
        this.f16178e = appCompatTextView;
        this.f16179f = appCompatTextView2;
        this.f16180g = appCompatTextView3;
    }

    public static n a(View view) {
        int i10 = R$id.btn_top;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_icon;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.tvAdWatchAVideo;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_tips;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.tv_title;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView3 != null) {
                                return new n((ConstraintLayout) view, viewA, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f16174a;
    }
}

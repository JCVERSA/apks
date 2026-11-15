package bx;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;

public final class i implements f4.a {

    private final FrameLayout f16080a;

    public final AppCompatImageView f16081b;

    public final AppCompatTextView f16082c;

    public final AppCompatTextView f16083d;

    public final AppCompatTextView f16084e;

    private i(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f16080a = frameLayout;
        this.f16081b = appCompatImageView;
        this.f16082c = appCompatTextView;
        this.f16083d = appCompatTextView2;
        this.f16084e = appCompatTextView3;
    }

    public static i a(View view) {
        int i10 = R$id.iv_navigation;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.tv_desc;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_positive;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        return new i((FrameLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16080a;
    }
}

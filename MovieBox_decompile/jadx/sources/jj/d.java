package jj;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.R$id;

public final class d implements f4.a {

    private final View f63140a;

    public final AppCompatImageView f63141b;

    public final AppCompatImageView f63142c;

    public final AppCompatTextView f63143d;

    public final AppCompatTextView f63144e;

    public final FrameLayout f63145f;

    public final FrameLayout f63146g;

    private d(View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f63140a = view;
        this.f63141b = appCompatImageView;
        this.f63142c = appCompatImageView2;
        this.f63143d = appCompatTextView;
        this.f63144e = appCompatTextView2;
        this.f63145f = frameLayout;
        this.f63146g = frameLayout2;
    }

    public static d a(View view) {
        int i10 = R$id.iv_guide_line;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_guide_target;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.tv_guide_button;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_guide_tips;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.v_guide_anima_bg;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            i10 = R$id.v_guide_bg;
                            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout2 != null) {
                                return new d(view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, frameLayout, frameLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f63140a;
    }
}

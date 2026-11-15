package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

public final class j implements f4.a {

    private final ConstraintLayout f16094a;

    public final AppCompatImageView f16095b;

    public final AppCompatTextView f16096c;

    public final AppCompatTextView f16097d;

    private j(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16094a = constraintLayout;
        this.f16095b = appCompatImageView;
        this.f16096c = appCompatTextView;
        this.f16097d = appCompatTextView2;
    }

    public static j a(View view) {
        int i10 = R$id.iv_allow_access;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.tv_allow_access;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_go_to_setting;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new j((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16094a;
    }
}

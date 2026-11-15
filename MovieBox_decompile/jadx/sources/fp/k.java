package fp;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.room.R$id;

public final class k implements f4.a {

    private final ConstraintLayout f60356a;

    public final View f60357b;

    public final AppCompatImageView f60358c;

    public final AppCompatImageView f60359d;

    public final AppCompatTextView f60360e;

    public final AppCompatTextView f60361f;

    public final AppCompatTextView f60362g;

    private k(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f60356a = constraintLayout;
        this.f60357b = view;
        this.f60358c = appCompatImageView;
        this.f60359d = appCompatImageView2;
        this.f60360e = appCompatTextView;
        this.f60361f = appCompatTextView2;
        this.f60362g = appCompatTextView3;
    }

    public static k a(View view) {
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
                                return new k((ConstraintLayout) view, viewA, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f60356a;
    }
}

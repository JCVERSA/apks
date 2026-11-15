package jj;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.R$id;
import com.transsion.baseui.music.RoundedCornerLayout;

public final class f implements f4.a {

    private final FrameLayout f63153a;

    public final AppCompatImageView f63154b;

    public final AppCompatImageView f63155c;

    public final AppCompatImageView f63156d;

    public final AppCompatImageView f63157e;

    public final ProgressBar f63158f;

    public final RoundedCornerLayout f63159g;

    public final RoundedCornerLayout f63160h;

    public final AppCompatTextView f63161i;

    public final AppCompatTextView f63162j;

    private f(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ProgressBar progressBar, RoundedCornerLayout roundedCornerLayout, RoundedCornerLayout roundedCornerLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f63153a = frameLayout;
        this.f63154b = appCompatImageView;
        this.f63155c = appCompatImageView2;
        this.f63156d = appCompatImageView3;
        this.f63157e = appCompatImageView4;
        this.f63158f = progressBar;
        this.f63159g = roundedCornerLayout;
        this.f63160h = roundedCornerLayout2;
        this.f63161i = appCompatTextView;
        this.f63162j = appCompatTextView2;
    }

    public static f a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivCover;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivCoverBg;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.ivPlayPause;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView4 != null) {
                        i10 = R$id.progress;
                        ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                        if (progressBar != null) {
                            i10 = R$id.roundExpand;
                            RoundedCornerLayout roundedCornerLayout = (RoundedCornerLayout) f4.b.a(view, i10);
                            if (roundedCornerLayout != null) {
                                i10 = R$id.roundFold;
                                RoundedCornerLayout roundedCornerLayout2 = (RoundedCornerLayout) f4.b.a(view, i10);
                                if (roundedCornerLayout2 != null) {
                                    i10 = R$id.tvDescription;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView != null) {
                                        i10 = R$id.tvTitle;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            return new f((FrameLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, progressBar, roundedCornerLayout, roundedCornerLayout2, appCompatTextView, appCompatTextView2);
                                        }
                                    }
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
    public FrameLayout getRoot() {
        return this.f63153a;
    }
}

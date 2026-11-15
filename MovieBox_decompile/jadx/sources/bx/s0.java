package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.widget.DownloadPremiumView;

public final class s0 implements f4.a {

    private final ConstraintLayout f16235a;

    public final AppCompatImageView f16236b;

    public final DownloadPremiumView f16237c;

    public final AppCompatTextView f16238d;

    public final AppCompatTextView f16239e;

    public final AppCompatTextView f16240f;

    public final AppCompatTextView f16241g;

    public final View f16242h;

    private s0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, DownloadPremiumView downloadPremiumView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view) {
        this.f16235a = constraintLayout;
        this.f16236b = appCompatImageView;
        this.f16237c = downloadPremiumView;
        this.f16238d = appCompatTextView;
        this.f16239e = appCompatTextView2;
        this.f16240f = appCompatTextView3;
        this.f16241g = appCompatTextView4;
        this.f16242h = view;
    }

    public static s0 a(View view) {
        View viewA;
        int i10 = R$id.iv_check;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_premium;
            DownloadPremiumView downloadPremiumView = (DownloadPremiumView) f4.b.a(view, i10);
            if (downloadPremiumView != null) {
                i10 = R$id.tv_ep;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_size;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tv_time;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.tv_title;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView4 != null && (viewA = f4.b.a(view, (i10 = R$id.v_size_line))) != null) {
                                return new s0((ConstraintLayout) view, appCompatImageView, downloadPremiumView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA);
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
        return this.f16235a;
    }
}

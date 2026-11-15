package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class y implements f4.a {

    private final BLConstraintLayout f70197a;

    public final AppCompatImageView f70198b;

    public final AppCompatImageView f70199c;

    public final AppCompatTextView f70200d;

    public final AppCompatTextView f70201e;

    public final AppCompatTextView f70202f;

    public final BLView f70203g;

    private y(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView) {
        this.f70197a = bLConstraintLayout;
        this.f70198b = appCompatImageView;
        this.f70199c = appCompatImageView2;
        this.f70200d = appCompatTextView;
        this.f70201e = appCompatTextView2;
        this.f70202f = appCompatTextView3;
        this.f70203g = bLView;
    }

    public static y a(View view) {
        int i10 = R$id.iv_ad;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.tv_ep;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_unlock;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tv_watch;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.v_bg;
                            BLView bLView = (BLView) f4.b.a(view, i10);
                            if (bLView != null) {
                                return new y((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_download_res_ad, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f70197a;
    }
}

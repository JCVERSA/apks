package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class e0 implements f4.a {

    private final BLConstraintLayout f15998a;

    public final AppCompatImageView f15999b;

    public final AppCompatImageView f16000c;

    public final AppCompatTextView f16001d;

    public final AppCompatTextView f16002e;

    public final AppCompatTextView f16003f;

    public final BLView f16004g;

    private e0(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView) {
        this.f15998a = bLConstraintLayout;
        this.f15999b = appCompatImageView;
        this.f16000c = appCompatImageView2;
        this.f16001d = appCompatTextView;
        this.f16002e = appCompatTextView2;
        this.f16003f = appCompatTextView3;
        this.f16004g = bLView;
    }

    public static e0 a(View view) {
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
                                return new e0((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_short_tv_ad, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f15998a;
    }
}

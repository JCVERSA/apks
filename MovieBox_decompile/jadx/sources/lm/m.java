package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.WatchModeTipsView;

public final class m implements f4.a {

    private final ConstraintLayout f65827a;

    public final AppCompatImageView f65828b;

    public final AppCompatTextView f65829c;

    public final AppCompatTextView f65830d;

    public final AppCompatTextView f65831e;

    public final BLTextView f65832f;

    public final FrameLayout f65833g;

    public final LinearLayout f65834h;

    public final ProgressBar f65835i;

    public final WatchModeTipsView f65836j;

    public final RecyclerView f65837k;

    public final BLTextView f65838l;

    public final BLTextView f65839m;

    private m(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView, FrameLayout frameLayout, LinearLayout linearLayout, ProgressBar progressBar, WatchModeTipsView watchModeTipsView, RecyclerView recyclerView, BLTextView bLTextView2, BLTextView bLTextView3) {
        this.f65827a = constraintLayout;
        this.f65828b = appCompatImageView;
        this.f65829c = appCompatTextView;
        this.f65830d = appCompatTextView2;
        this.f65831e = appCompatTextView3;
        this.f65832f = bLTextView;
        this.f65833g = frameLayout;
        this.f65834h = linearLayout;
        this.f65835i = progressBar;
        this.f65836j = watchModeTipsView;
        this.f65837k = recyclerView;
        this.f65838l = bLTextView2;
        this.f65839m = bLTextView3;
    }

    public static m a(View view) {
        int i10 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.innerTvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.iv_seasons;
                        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                        if (bLTextView != null) {
                            i10 = R$id.lf_loading;
                            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R$id.llLanguage;
                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R$id.load_view;
                                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                    if (progressBar != null) {
                                        i10 = R$id.modeTipsLayout;
                                        WatchModeTipsView watchModeTipsView = (WatchModeTipsView) f4.b.a(view, i10);
                                        if (watchModeTipsView != null) {
                                            i10 = R$id.resourceRv;
                                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                            if (recyclerView != null) {
                                                i10 = R$id.tvLanguage;
                                                BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                                                if (bLTextView2 != null) {
                                                    i10 = R$id.tv_more;
                                                    BLTextView bLTextView3 = (BLTextView) f4.b.a(view, i10);
                                                    if (bLTextView3 != null) {
                                                        return new m((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView, frameLayout, linearLayout, progressBar, watchModeTipsView, recyclerView, bLTextView2, bLTextView3);
                                                    }
                                                }
                                            }
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

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_resource_detector_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65827a;
    }
}

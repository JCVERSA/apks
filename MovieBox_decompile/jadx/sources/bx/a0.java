package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.transsion.wrapperad.view.DownloadMovieAdView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadGridTabView;
import com.transsnet.downloader.widget.DownloadResolutionTabView;

public final class a0 implements f4.a {

    private final FrameLayout f15899a;

    public final LinearLayoutCompat f15900b;

    public final BLConstraintLayout f15901c;

    public final CoordinatorLayout f15902d;

    public final FrameLayout f15903e;

    public final BLFrameLayout f15904f;

    public final FrameLayout f15905g;

    public final AppCompatImageView f15906h;

    public final AppCompatImageView f15907i;

    public final ImageView f15908j;

    public final View f15909k;

    public final LinearLayout f15910l;

    public final ProgressBar f15911m;

    public final ProgressBar f15912n;

    public final AppCompatTextView f15913o;

    public final AppCompatTextView f15914p;

    public final AppCompatTextView f15915q;

    public final AppCompatTextView f15916r;

    public final AppCompatTextView f15917s;

    public final AppCompatTextView f15918t;

    public final ConstraintLayout f15919u;

    public final View f15920v;

    public final DownloadGridTabView f15921w;

    public final DownloadResolutionTabView f15922x;

    public final DownloadMovieAdView f15923y;

    public final ProgressBar f15924z;

    private a0(FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat, BLConstraintLayout bLConstraintLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout2, BLFrameLayout bLFrameLayout, FrameLayout frameLayout3, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, View view, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, ConstraintLayout constraintLayout, View view2, DownloadGridTabView downloadGridTabView, DownloadResolutionTabView downloadResolutionTabView, DownloadMovieAdView downloadMovieAdView, ProgressBar progressBar3) {
        this.f15899a = frameLayout;
        this.f15900b = linearLayoutCompat;
        this.f15901c = bLConstraintLayout;
        this.f15902d = coordinatorLayout;
        this.f15903e = frameLayout2;
        this.f15904f = bLFrameLayout;
        this.f15905g = frameLayout3;
        this.f15906h = appCompatImageView;
        this.f15907i = appCompatImageView2;
        this.f15908j = imageView;
        this.f15909k = view;
        this.f15910l = linearLayout;
        this.f15911m = progressBar;
        this.f15912n = progressBar2;
        this.f15913o = appCompatTextView;
        this.f15914p = appCompatTextView2;
        this.f15915q = appCompatTextView3;
        this.f15916r = appCompatTextView4;
        this.f15917s = appCompatTextView5;
        this.f15918t = appCompatTextView6;
        this.f15919u = constraintLayout;
        this.f15920v = view2;
        this.f15921w = downloadGridTabView;
        this.f15922x = downloadResolutionTabView;
        this.f15923y = downloadMovieAdView;
        this.f15924z = progressBar3;
    }

    public static a0 a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.btn_download;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
        if (linearLayoutCompat != null) {
            i10 = R$id.cl_content;
            BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
            if (bLConstraintLayout != null) {
                i10 = R$id.cl_root;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
                if (coordinatorLayout != null) {
                    i10 = R$id.fl_content;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
                        i10 = R$id.fl_loading;
                        BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
                        if (bLFrameLayout != null) {
                            i10 = R$id.fl_select_all_bg;
                            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout2 != null) {
                                i10 = R$id.iv_btn_download_icon;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView != null) {
                                    i10 = R$id.iv_check;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView2 != null) {
                                        i10 = R$id.iv_close;
                                        ImageView imageView = (ImageView) f4.b.a(view, i10);
                                        if (imageView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
                                            i10 = R$id.ll_not_net;
                                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                            if (linearLayout != null) {
                                                i10 = R$id.progress_bar_btn_download;
                                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                if (progressBar != null) {
                                                    i10 = R$id.progress_bar_select_all;
                                                    ProgressBar progressBar2 = (ProgressBar) f4.b.a(view, i10);
                                                    if (progressBar2 != null) {
                                                        i10 = R$id.tv_btn_download;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView != null) {
                                                            i10 = R$id.tv_no_network_content;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView2 != null) {
                                                                i10 = R$id.tv_retry;
                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView3 != null) {
                                                                    i10 = R$id.tv_select_all;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView4 != null) {
                                                                        i10 = R$id.tv_tips;
                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView5 != null) {
                                                                            i10 = R$id.tv_title;
                                                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                            if (appCompatTextView6 != null) {
                                                                                i10 = R$id.v_bottom;
                                                                                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                                                                if (constraintLayout != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_content_gap))) != null) {
                                                                                    i10 = R$id.vGridTab;
                                                                                    DownloadGridTabView downloadGridTabView = (DownloadGridTabView) f4.b.a(view, i10);
                                                                                    if (downloadGridTabView != null) {
                                                                                        i10 = R$id.v_language_resolution;
                                                                                        DownloadResolutionTabView downloadResolutionTabView = (DownloadResolutionTabView) f4.b.a(view, i10);
                                                                                        if (downloadResolutionTabView != null) {
                                                                                            i10 = R$id.viewAd;
                                                                                            DownloadMovieAdView downloadMovieAdView = (DownloadMovieAdView) f4.b.a(view, i10);
                                                                                            if (downloadMovieAdView != null) {
                                                                                                i10 = R$id.view_load;
                                                                                                ProgressBar progressBar3 = (ProgressBar) f4.b.a(view, i10);
                                                                                                if (progressBar3 != null) {
                                                                                                    return new a0((FrameLayout) view, linearLayoutCompat, bLConstraintLayout, coordinatorLayout, frameLayout, bLFrameLayout, frameLayout2, appCompatImageView, appCompatImageView2, imageView, viewA, linearLayout, progressBar, progressBar2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, constraintLayout, viewA2, downloadGridTabView, downloadResolutionTabView, downloadMovieAdView, progressBar3);
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

    public static a0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_group_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15899a;
    }
}

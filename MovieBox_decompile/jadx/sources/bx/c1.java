package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLLinearLayout;
import com.transsion.wrapperad.view.DownloadMovieAdView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class c1 implements f4.a {
    public final ProgressBar A;

    private final FrameLayout f15962a;

    public final ConstraintLayout f15963b;

    public final LinearLayoutCompat f15964c;

    public final BLLinearLayout f15965d;

    public final BLConstraintLayout f15966e;

    public final View f15967f;

    public final View f15968g;

    public final BLFrameLayout f15969h;

    public final AppCompatImageView f15970i;

    public final AppCompatImageView f15971j;

    public final ImageView f15972k;

    public final ImageView f15973l;

    public final ImageView f15974m;

    public final LinearLayout f15975n;

    public final ProgressBar f15976o;

    public final RecyclerView f15977p;

    public final RecyclerView f15978q;

    public final AppCompatTextView f15979r;

    public final AppCompatTextView f15980s;

    public final TextView f15981t;

    public final AppCompatTextView f15982u;

    public final AppCompatTextView f15983v;

    public final AppCompatTextView f15984w;

    public final AppCompatTextView f15985x;

    public final View f15986y;

    public final DownloadMovieAdView f15987z;

    private c1(FrameLayout frameLayout, ConstraintLayout constraintLayout, LinearLayoutCompat linearLayoutCompat, BLLinearLayout bLLinearLayout, BLConstraintLayout bLConstraintLayout, View view, View view2, BLFrameLayout bLFrameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, ProgressBar progressBar, RecyclerView recyclerView, RecyclerView recyclerView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, View view3, DownloadMovieAdView downloadMovieAdView, ProgressBar progressBar2) {
        this.f15962a = frameLayout;
        this.f15963b = constraintLayout;
        this.f15964c = linearLayoutCompat;
        this.f15965d = bLLinearLayout;
        this.f15966e = bLConstraintLayout;
        this.f15967f = view;
        this.f15968g = view2;
        this.f15969h = bLFrameLayout;
        this.f15970i = appCompatImageView;
        this.f15971j = appCompatImageView2;
        this.f15972k = imageView;
        this.f15973l = imageView2;
        this.f15974m = imageView3;
        this.f15975n = linearLayout;
        this.f15976o = progressBar;
        this.f15977p = recyclerView;
        this.f15978q = recyclerView2;
        this.f15979r = appCompatTextView;
        this.f15980s = appCompatTextView2;
        this.f15981t = textView;
        this.f15982u = appCompatTextView3;
        this.f15983v = appCompatTextView4;
        this.f15984w = appCompatTextView5;
        this.f15985x = appCompatTextView6;
        this.f15986y = view3;
        this.f15987z = downloadMovieAdView;
        this.A = progressBar2;
    }

    public static c1 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.bottomBar;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.btnDownload;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.btnResolution;
                BLLinearLayout bLLinearLayout = (BLLinearLayout) f4.b.a(view, i10);
                if (bLLinearLayout != null) {
                    i10 = R$id.clContent;
                    BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
                    if (bLConstraintLayout != null && (viewA = f4.b.a(view, (i10 = R$id.dividerLine))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.dividerLine1))) != null) {
                        i10 = R$id.flLoading;
                        BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
                        if (bLFrameLayout != null) {
                            i10 = R$id.ivBtnDownloadIcon;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.ivCheck;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView2 != null) {
                                    i10 = R$id.ivClose;
                                    ImageView imageView = (ImageView) f4.b.a(view, i10);
                                    if (imageView != null) {
                                        i10 = R$id.ivResolutionArrow;
                                        ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                        if (imageView2 != null) {
                                            i10 = R$id.ivResolutionIcon;
                                            ImageView imageView3 = (ImageView) f4.b.a(view, i10);
                                            if (imageView3 != null) {
                                                i10 = R$id.llNotNet;
                                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                if (linearLayout != null) {
                                                    i10 = R$id.progressBarBtnDownload;
                                                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                    if (progressBar != null) {
                                                        i10 = R$id.recyclerView;
                                                        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                        if (recyclerView != null) {
                                                            i10 = R$id.rvTabs;
                                                            RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
                                                            if (recyclerView2 != null) {
                                                                i10 = R$id.tvBtnDownload;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView != null) {
                                                                    i10 = R$id.tv_no_network_content;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView2 != null) {
                                                                        i10 = R$id.tvResolution;
                                                                        TextView textView = (TextView) f4.b.a(view, i10);
                                                                        if (textView != null) {
                                                                            i10 = R$id.tv_retry;
                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                            if (appCompatTextView3 != null) {
                                                                                i10 = R$id.tvSelectAll;
                                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                if (appCompatTextView4 != null) {
                                                                                    i10 = R$id.tv_tips;
                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView5 != null) {
                                                                                        i10 = R$id.tvTitle;
                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView6 != null && (viewA3 = f4.b.a(view, (i10 = R$id.vContentGap))) != null) {
                                                                                            i10 = R$id.viewAd;
                                                                                            DownloadMovieAdView downloadMovieAdView = (DownloadMovieAdView) f4.b.a(view, i10);
                                                                                            if (downloadMovieAdView != null) {
                                                                                                i10 = R$id.view_load;
                                                                                                ProgressBar progressBar2 = (ProgressBar) f4.b.a(view, i10);
                                                                                                if (progressBar2 != null) {
                                                                                                    return new c1((FrameLayout) view, constraintLayout, linearLayoutCompat, bLLinearLayout, bLConstraintLayout, viewA, viewA2, bLFrameLayout, appCompatImageView, appCompatImageView2, imageView, imageView2, imageView3, linearLayout, progressBar, recyclerView, recyclerView2, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, viewA3, downloadMovieAdView, progressBar2);
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

    public static c1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.ugc_dialog_download_page, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15962a;
    }
}

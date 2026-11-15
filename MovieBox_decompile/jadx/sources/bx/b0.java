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
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.noober.background.view.BLFrameLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class b0 implements f4.a {

    private final FrameLayout f15930a;

    public final LinearLayoutCompat f15931b;

    public final CoordinatorLayout f15932c;

    public final BLFrameLayout f15933d;

    public final FrameLayout f15934e;

    public final AppCompatImageView f15935f;

    public final AppCompatImageView f15936g;

    public final ImageView f15937h;

    public final View f15938i;

    public final LinearLayout f15939j;

    public final ProgressBar f15940k;

    public final ProgressBar f15941l;

    public final TabLayout f15942m;

    public final AppCompatTextView f15943n;

    public final AppCompatTextView f15944o;

    public final AppCompatTextView f15945p;

    public final AppCompatTextView f15946q;

    public final AppCompatTextView f15947r;

    public final AppCompatTextView f15948s;

    public final View f15949t;

    public final View f15950u;

    public final ProgressBar f15951v;

    public final ViewPager2 f15952w;

    private b0(FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat, CoordinatorLayout coordinatorLayout, BLFrameLayout bLFrameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, View view, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, TabLayout tabLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, View view2, View view3, ProgressBar progressBar3, ViewPager2 viewPager2) {
        this.f15930a = frameLayout;
        this.f15931b = linearLayoutCompat;
        this.f15932c = coordinatorLayout;
        this.f15933d = bLFrameLayout;
        this.f15934e = frameLayout2;
        this.f15935f = appCompatImageView;
        this.f15936g = appCompatImageView2;
        this.f15937h = imageView;
        this.f15938i = view;
        this.f15939j = linearLayout;
        this.f15940k = progressBar;
        this.f15941l = progressBar2;
        this.f15942m = tabLayout;
        this.f15943n = appCompatTextView;
        this.f15944o = appCompatTextView2;
        this.f15945p = appCompatTextView3;
        this.f15946q = appCompatTextView4;
        this.f15947r = appCompatTextView5;
        this.f15948s = appCompatTextView6;
        this.f15949t = view2;
        this.f15950u = view3;
        this.f15951v = progressBar3;
        this.f15952w = viewPager2;
    }

    public static b0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.btn_download;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
        if (linearLayoutCompat != null) {
            i10 = R$id.cl_root;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
            if (coordinatorLayout != null) {
                i10 = R$id.fl_loading;
                BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
                if (bLFrameLayout != null) {
                    i10 = R$id.fl_select_all_bg;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
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
                                                i10 = R$id.subjectTab;
                                                TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                                                if (tabLayout != null) {
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
                                                                        if (appCompatTextView6 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_bottom))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_content_gap))) != null) {
                                                                            i10 = R$id.view_load;
                                                                            ProgressBar progressBar3 = (ProgressBar) f4.b.a(view, i10);
                                                                            if (progressBar3 != null) {
                                                                                i10 = R$id.vp_content;
                                                                                ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                                if (viewPager2 != null) {
                                                                                    return new b0((FrameLayout) view, linearLayoutCompat, coordinatorLayout, bLFrameLayout, frameLayout, appCompatImageView, appCompatImageView2, imageView, viewA, linearLayout, progressBar, progressBar2, tabLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, viewA2, viewA3, progressBar3, viewPager2);
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

    public static b0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_multi, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15930a;
    }
}

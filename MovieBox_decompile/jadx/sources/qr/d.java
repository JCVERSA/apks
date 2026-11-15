package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ui.widget.ShortTvDownloadInfoExtendView;

public final class d implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final View E;
    public final View F;
    public final BLView G;
    public final ProgressBar H;

    private final BLConstraintLayout f69972a;

    public final AppBarLayout f69973b;

    public final View f69974c;

    public final LinearLayoutCompat f69975d;

    public final CoordinatorLayout f69976e;

    public final BLFrameLayout f69977f;

    public final FrameLayout f69978g;

    public final FrameLayout f69979h;

    public final ShortTvDownloadInfoExtendView f69980i;

    public final AppCompatImageView f69981j;

    public final AppCompatImageView f69982k;

    public final ImageView f69983l;

    public final ShapeableImageView f69984m;

    public final BLImageView f69985n;

    public final BLImageView f69986o;

    public final ProgressBar f69987p;

    public final ProgressBar f69988q;

    public final RecyclerView f69989r;

    public final RecyclerView f69990s;

    public final TabLayout f69991t;

    public final View f69992u;

    public final AppCompatTextView f69993v;

    public final AppCompatTextView f69994w;

    public final TextView f69995x;

    public final AppCompatTextView f69996y;

    public final AppCompatTextView f69997z;

    private d(BLConstraintLayout bLConstraintLayout, AppBarLayout appBarLayout, View view, LinearLayoutCompat linearLayoutCompat, CoordinatorLayout coordinatorLayout, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, FrameLayout frameLayout2, ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, ShapeableImageView shapeableImageView, BLImageView bLImageView, BLImageView bLImageView2, ProgressBar progressBar, ProgressBar progressBar2, RecyclerView recyclerView, RecyclerView recyclerView2, TabLayout tabLayout, View view2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, View view3, View view4, BLView bLView, ProgressBar progressBar3) {
        this.f69972a = bLConstraintLayout;
        this.f69973b = appBarLayout;
        this.f69974c = view;
        this.f69975d = linearLayoutCompat;
        this.f69976e = coordinatorLayout;
        this.f69977f = bLFrameLayout;
        this.f69978g = frameLayout;
        this.f69979h = frameLayout2;
        this.f69980i = shortTvDownloadInfoExtendView;
        this.f69981j = appCompatImageView;
        this.f69982k = appCompatImageView2;
        this.f69983l = imageView;
        this.f69984m = shapeableImageView;
        this.f69985n = bLImageView;
        this.f69986o = bLImageView2;
        this.f69987p = progressBar;
        this.f69988q = progressBar2;
        this.f69989r = recyclerView;
        this.f69990s = recyclerView2;
        this.f69991t = tabLayout;
        this.f69992u = view2;
        this.f69993v = appCompatTextView;
        this.f69994w = appCompatTextView2;
        this.f69995x = textView;
        this.f69996y = appCompatTextView3;
        this.f69997z = appCompatTextView4;
        this.A = appCompatTextView5;
        this.B = appCompatTextView6;
        this.C = appCompatTextView7;
        this.D = appCompatTextView8;
        this.E = view3;
        this.F = view4;
        this.G = bLView;
        this.H = progressBar3;
    }

    public static d a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i10 = R$id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null && (viewA = f4.b.a(view, (i10 = R$id.bottom_line))) != null) {
            i10 = R$id.btn_download;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.cl_root;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
                if (coordinatorLayout != null) {
                    i10 = R$id.fl_download_loading;
                    BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
                    if (bLFrameLayout != null) {
                        i10 = R$id.fl_select_all_bg;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            i10 = R$id.fl_state;
                            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout2 != null) {
                                i10 = R$id.iev_info;
                                ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView = (ShortTvDownloadInfoExtendView) f4.b.a(view, i10);
                                if (shortTvDownloadInfoExtendView != null) {
                                    i10 = R$id.iv_btn_download_icon;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView != null) {
                                        i10 = R$id.iv_check;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView2 != null) {
                                            i10 = R$id.iv_close;
                                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                                            if (imageView != null) {
                                                i10 = R$id.iv_cover;
                                                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                                if (shapeableImageView != null) {
                                                    i10 = R$id.iv_favorite;
                                                    BLImageView bLImageView = (BLImageView) f4.b.a(view, i10);
                                                    if (bLImageView != null) {
                                                        i10 = R$id.iv_share;
                                                        BLImageView bLImageView2 = (BLImageView) f4.b.a(view, i10);
                                                        if (bLImageView2 != null) {
                                                            i10 = R$id.progress_bar_btn_download;
                                                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                            if (progressBar != null) {
                                                                i10 = R$id.progress_bar_select_all;
                                                                ProgressBar progressBar2 = (ProgressBar) f4.b.a(view, i10);
                                                                if (progressBar2 != null) {
                                                                    i10 = R$id.recycler_view;
                                                                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                                    if (recyclerView != null) {
                                                                        i10 = R$id.recycler_view_tags;
                                                                        RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
                                                                        if (recyclerView2 != null) {
                                                                            i10 = R$id.tab_ep_title;
                                                                            TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                                                                            if (tabLayout != null && (viewA2 = f4.b.a(view, (i10 = R$id.title_line))) != null) {
                                                                                i10 = R$id.tv_btn_download;
                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                if (appCompatTextView != null) {
                                                                                    i10 = R$id.tv_download_ep_count;
                                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView2 != null) {
                                                                                        i10 = R$id.tv_download_title;
                                                                                        TextView textView = (TextView) f4.b.a(view, i10);
                                                                                        if (textView != null) {
                                                                                            i10 = R$id.tv_genre;
                                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView3 != null) {
                                                                                                i10 = R$id.tv_play_title;
                                                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                if (appCompatTextView4 != null) {
                                                                                                    i10 = R$id.tv_select_all;
                                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView5 != null) {
                                                                                                        i10 = R$id.tv_tips;
                                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                        if (appCompatTextView6 != null) {
                                                                                                            i10 = R$id.tv_title;
                                                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                            if (appCompatTextView7 != null) {
                                                                                                                i10 = R$id.tv_title_2;
                                                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                if (appCompatTextView8 != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_bottom))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.v_content_gap))) != null) {
                                                                                                                    i10 = R$id.v_play;
                                                                                                                    BLView bLView = (BLView) f4.b.a(view, i10);
                                                                                                                    if (bLView != null) {
                                                                                                                        i10 = R$id.view_load;
                                                                                                                        ProgressBar progressBar3 = (ProgressBar) f4.b.a(view, i10);
                                                                                                                        if (progressBar3 != null) {
                                                                                                                            return new d((BLConstraintLayout) view, appBarLayout, viewA, linearLayoutCompat, coordinatorLayout, bLFrameLayout, frameLayout, frameLayout2, shortTvDownloadInfoExtendView, appCompatImageView, appCompatImageView2, imageView, shapeableImageView, bLImageView, bLImageView2, progressBar, progressBar2, recyclerView, recyclerView2, tabLayout, viewA2, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, viewA3, viewA4, bLView, progressBar3);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_short_tv_fragment_download_res, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f69972a;
    }
}

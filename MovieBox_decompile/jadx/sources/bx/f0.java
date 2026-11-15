package bx;

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
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadInfoExtendView;

public final class f0 implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final View E;
    public final View F;
    public final BLView G;
    public final ProgressBar H;

    private final BLConstraintLayout f16014a;

    public final AppBarLayout f16015b;

    public final View f16016c;

    public final LinearLayoutCompat f16017d;

    public final CoordinatorLayout f16018e;

    public final BLFrameLayout f16019f;

    public final FrameLayout f16020g;

    public final FrameLayout f16021h;

    public final DownloadInfoExtendView f16022i;

    public final AppCompatImageView f16023j;

    public final AppCompatImageView f16024k;

    public final ImageView f16025l;

    public final ShapeableImageView f16026m;

    public final BLImageView f16027n;

    public final BLImageView f16028o;

    public final ProgressBar f16029p;

    public final ProgressBar f16030q;

    public final RecyclerView f16031r;

    public final RecyclerView f16032s;

    public final TabLayout f16033t;

    public final View f16034u;

    public final AppCompatTextView f16035v;

    public final AppCompatTextView f16036w;

    public final TextView f16037x;

    public final AppCompatTextView f16038y;

    public final AppCompatTextView f16039z;

    private f0(BLConstraintLayout bLConstraintLayout, AppBarLayout appBarLayout, View view, LinearLayoutCompat linearLayoutCompat, CoordinatorLayout coordinatorLayout, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, FrameLayout frameLayout2, DownloadInfoExtendView downloadInfoExtendView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, ShapeableImageView shapeableImageView, BLImageView bLImageView, BLImageView bLImageView2, ProgressBar progressBar, ProgressBar progressBar2, RecyclerView recyclerView, RecyclerView recyclerView2, TabLayout tabLayout, View view2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, View view3, View view4, BLView bLView, ProgressBar progressBar3) {
        this.f16014a = bLConstraintLayout;
        this.f16015b = appBarLayout;
        this.f16016c = view;
        this.f16017d = linearLayoutCompat;
        this.f16018e = coordinatorLayout;
        this.f16019f = bLFrameLayout;
        this.f16020g = frameLayout;
        this.f16021h = frameLayout2;
        this.f16022i = downloadInfoExtendView;
        this.f16023j = appCompatImageView;
        this.f16024k = appCompatImageView2;
        this.f16025l = imageView;
        this.f16026m = shapeableImageView;
        this.f16027n = bLImageView;
        this.f16028o = bLImageView2;
        this.f16029p = progressBar;
        this.f16030q = progressBar2;
        this.f16031r = recyclerView;
        this.f16032s = recyclerView2;
        this.f16033t = tabLayout;
        this.f16034u = view2;
        this.f16035v = appCompatTextView;
        this.f16036w = appCompatTextView2;
        this.f16037x = textView;
        this.f16038y = appCompatTextView3;
        this.f16039z = appCompatTextView4;
        this.A = appCompatTextView5;
        this.B = appCompatTextView6;
        this.C = appCompatTextView7;
        this.D = appCompatTextView8;
        this.E = view3;
        this.F = view4;
        this.G = bLView;
        this.H = progressBar3;
    }

    public static f0 a(View view) {
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
                                DownloadInfoExtendView downloadInfoExtendView = (DownloadInfoExtendView) f4.b.a(view, i10);
                                if (downloadInfoExtendView != null) {
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
                                                                                                                            return new f0((BLConstraintLayout) view, appBarLayout, viewA, linearLayoutCompat, coordinatorLayout, bLFrameLayout, frameLayout, frameLayout2, downloadInfoExtendView, appCompatImageView, appCompatImageView2, imageView, shapeableImageView, bLImageView, bLImageView2, progressBar, progressBar2, recyclerView, recyclerView2, tabLayout, viewA2, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, viewA3, viewA4, bLView, progressBar3);
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

    public static f0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_short_tv, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f16014a;
    }
}

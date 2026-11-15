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
import androidx.constraintlayout.widget.Group;
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
import com.transsion.shorttv.ui.widget.ShortTvDownloadInfoExtendView;

public final class z implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final AppCompatTextView E;
    public final View F;
    public final View G;
    public final BLView H;
    public final ProgressBar I;

    private final BLConstraintLayout f70204a;

    public final AppBarLayout f70205b;

    public final View f70206c;

    public final LinearLayoutCompat f70207d;

    public final Group f70208e;

    public final CoordinatorLayout f70209f;

    public final BLFrameLayout f70210g;

    public final FrameLayout f70211h;

    public final FrameLayout f70212i;

    public final ShortTvDownloadInfoExtendView f70213j;

    public final AppCompatImageView f70214k;

    public final AppCompatImageView f70215l;

    public final ImageView f70216m;

    public final ShapeableImageView f70217n;

    public final BLImageView f70218o;

    public final BLImageView f70219p;

    public final ProgressBar f70220q;

    public final ProgressBar f70221r;

    public final RecyclerView f70222s;

    public final RecyclerView f70223t;

    public final TabLayout f70224u;

    public final View f70225v;

    public final AppCompatTextView f70226w;

    public final AppCompatTextView f70227x;

    public final TextView f70228y;

    public final AppCompatTextView f70229z;

    private z(BLConstraintLayout bLConstraintLayout, AppBarLayout appBarLayout, View view, LinearLayoutCompat linearLayoutCompat, Group group, CoordinatorLayout coordinatorLayout, BLFrameLayout bLFrameLayout, FrameLayout frameLayout, FrameLayout frameLayout2, ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ImageView imageView, ShapeableImageView shapeableImageView, BLImageView bLImageView, BLImageView bLImageView2, ProgressBar progressBar, ProgressBar progressBar2, RecyclerView recyclerView, RecyclerView recyclerView2, TabLayout tabLayout, View view2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, View view3, View view4, BLView bLView, ProgressBar progressBar3) {
        this.f70204a = bLConstraintLayout;
        this.f70205b = appBarLayout;
        this.f70206c = view;
        this.f70207d = linearLayoutCompat;
        this.f70208e = group;
        this.f70209f = coordinatorLayout;
        this.f70210g = bLFrameLayout;
        this.f70211h = frameLayout;
        this.f70212i = frameLayout2;
        this.f70213j = shortTvDownloadInfoExtendView;
        this.f70214k = appCompatImageView;
        this.f70215l = appCompatImageView2;
        this.f70216m = imageView;
        this.f70217n = shapeableImageView;
        this.f70218o = bLImageView;
        this.f70219p = bLImageView2;
        this.f70220q = progressBar;
        this.f70221r = progressBar2;
        this.f70222s = recyclerView;
        this.f70223t = recyclerView2;
        this.f70224u = tabLayout;
        this.f70225v = view2;
        this.f70226w = appCompatTextView;
        this.f70227x = appCompatTextView2;
        this.f70228y = textView;
        this.f70229z = appCompatTextView3;
        this.A = appCompatTextView4;
        this.B = appCompatTextView5;
        this.C = appCompatTextView6;
        this.D = appCompatTextView7;
        this.E = appCompatTextView8;
        this.F = view3;
        this.G = view4;
        this.H = bLView;
        this.I = progressBar3;
    }

    public static z a(View view) {
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
                i10 = R$id.btn_group;
                Group group = (Group) f4.b.a(view, i10);
                if (group != null) {
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
                                                                                                                                return new z((BLConstraintLayout) view, appBarLayout, viewA, linearLayoutCompat, group, coordinatorLayout, bLFrameLayout, frameLayout, frameLayout2, shortTvDownloadInfoExtendView, appCompatImageView, appCompatImageView2, imageView, shapeableImageView, bLImageView, bLImageView2, progressBar, progressBar2, recyclerView, recyclerView2, tabLayout, viewA2, appCompatTextView, appCompatTextView2, textView, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, viewA3, viewA4, bLView, progressBar3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static z c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_download_res, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f70204a;
    }
}

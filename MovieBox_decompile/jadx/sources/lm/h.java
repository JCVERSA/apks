package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsnet.downloader.widget.DownloadView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class h implements f4.a {

    private final ConstraintLayout f65773a;

    public final BubbleTextView f65774b;

    public final AppBarLayout f65775c;

    public final DownloadView f65776d;

    public final CoordinatorLayout f65777e;

    public final FrameLayout f65778f;

    public final FrameLayout f65779g;

    public final FrameLayout f65780h;

    public final FrameLayout f65781i;

    public final AppCompatImageView f65782j;

    public final AppCompatImageView f65783k;

    public final mn.h f65784l;

    public final MagicIndicator f65785m;

    public final ViewPager2 f65786n;

    public final FrameLayout f65787o;

    public final FrameLayout f65788p;

    public final CollapsingToolbarLayout f65789q;

    public final GradientTextView f65790r;

    public final View f65791s;

    public final View f65792t;

    private h(ConstraintLayout constraintLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, DownloadView downloadView, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, mn.h hVar, MagicIndicator magicIndicator, ViewPager2 viewPager2, FrameLayout frameLayout5, FrameLayout frameLayout6, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, View view, View view2) {
        this.f65773a = constraintLayout;
        this.f65774b = bubbleTextView;
        this.f65775c = appBarLayout;
        this.f65776d = downloadView;
        this.f65777e = coordinatorLayout;
        this.f65778f = frameLayout;
        this.f65779g = frameLayout2;
        this.f65780h = frameLayout3;
        this.f65781i = frameLayout4;
        this.f65782j = appCompatImageView;
        this.f65783k = appCompatImageView2;
        this.f65784l = hVar;
        this.f65785m = magicIndicator;
        this.f65786n = viewPager2;
        this.f65787o = frameLayout5;
        this.f65788p = frameLayout6;
        this.f65789q = collapsingToolbarLayout;
        this.f65790r = gradientTextView;
        this.f65791s = view;
        this.f65792t = view2;
    }

    public static h a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) f4.b.a(view, i10);
        if (bubbleTextView != null) {
            i10 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
            if (appBarLayout != null) {
                i10 = R$id.btn_download;
                DownloadView downloadView = (DownloadView) f4.b.a(view, i10);
                if (downloadView != null) {
                    i10 = R$id.cdl;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
                    if (coordinatorLayout != null) {
                        i10 = R$id.fl_bottom_dialog_container;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            i10 = R$id.fl_full_player_container;
                            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout2 != null) {
                                i10 = R$id.fl_player;
                                FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout3 != null) {
                                    i10 = R$id.game_container;
                                    FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                                    if (frameLayout4 != null) {
                                        i10 = R$id.ivBack;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView != null) {
                                            i10 = R$id.iv_publish;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView2 != null && (viewA = f4.b.a(view, (i10 = R$id.layout_sync_adjust))) != null) {
                                                mn.h hVarA = mn.h.a(viewA);
                                                i10 = R$id.magic_indicator;
                                                MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                                if (magicIndicator != null) {
                                                    i10 = R$id.rec_view_pager;
                                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                    if (viewPager2 != null) {
                                                        i10 = R$id.resourceDetectorGroup;
                                                        FrameLayout frameLayout5 = (FrameLayout) f4.b.a(view, i10);
                                                        if (frameLayout5 != null) {
                                                            i10 = R$id.subjectDetailLayout;
                                                            FrameLayout frameLayout6 = (FrameLayout) f4.b.a(view, i10);
                                                            if (frameLayout6 != null) {
                                                                i10 = R$id.toolbar_layout;
                                                                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                                if (collapsingToolbarLayout != null) {
                                                                    i10 = R$id.tv_post;
                                                                    GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                                                    if (gradientTextView != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_player_bottom_space))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_top_space))) != null) {
                                                                        return new h((ConstraintLayout) view, bubbleTextView, appBarLayout, downloadView, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, appCompatImageView, appCompatImageView2, hVarA, magicIndicator, viewPager2, frameLayout5, frameLayout6, collapsingToolbarLayout, gradientTextView, viewA2, viewA3);
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

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_movie_detail_v2_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65773a;
    }
}

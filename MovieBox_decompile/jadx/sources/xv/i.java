package xv;

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
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import com.transsnet.downloader.widget.DownloadView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class i implements f4.a {

    private final ConstraintLayout f75945a;

    public final BubbleTextView f75946b;

    public final AppBarLayout f75947c;

    public final DownloadView f75948d;

    public final CoordinatorLayout f75949e;

    public final FrameLayout f75950f;

    public final FrameLayout f75951g;

    public final FrameLayout f75952h;

    public final FrameLayout f75953i;

    public final AppCompatImageView f75954j;

    public final AppCompatImageView f75955k;

    public final mn.h f75956l;

    public final MagicIndicator f75957m;

    public final NativeCardPageView f75958n;

    public final ViewPager2 f75959o;

    public final FrameLayout f75960p;

    public final FrameLayout f75961q;

    public final CollapsingToolbarLayout f75962r;

    public final GradientTextView f75963s;

    public final View f75964t;

    public final View f75965u;

    private i(ConstraintLayout constraintLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, DownloadView downloadView, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, mn.h hVar, MagicIndicator magicIndicator, NativeCardPageView nativeCardPageView, ViewPager2 viewPager2, FrameLayout frameLayout5, FrameLayout frameLayout6, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, View view, View view2) {
        this.f75945a = constraintLayout;
        this.f75946b = bubbleTextView;
        this.f75947c = appBarLayout;
        this.f75948d = downloadView;
        this.f75949e = coordinatorLayout;
        this.f75950f = frameLayout;
        this.f75951g = frameLayout2;
        this.f75952h = frameLayout3;
        this.f75953i = frameLayout4;
        this.f75954j = appCompatImageView;
        this.f75955k = appCompatImageView2;
        this.f75956l = hVar;
        this.f75957m = magicIndicator;
        this.f75958n = nativeCardPageView;
        this.f75959o = viewPager2;
        this.f75960p = frameLayout5;
        this.f75961q = frameLayout6;
        this.f75962r = collapsingToolbarLayout;
        this.f75963s = gradientTextView;
        this.f75964t = view;
        this.f75965u = view2;
    }

    public static i a(View view) {
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
                                                    i10 = R$id.nativeSlideshowView;
                                                    NativeCardPageView nativeCardPageView = (NativeCardPageView) f4.b.a(view, i10);
                                                    if (nativeCardPageView != null) {
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
                                                                            return new i((ConstraintLayout) view, bubbleTextView, appBarLayout, downloadView, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, appCompatImageView, appCompatImageView2, hVarA, magicIndicator, nativeCardPageView, viewPager2, frameLayout5, frameLayout6, collapsingToolbarLayout, gradientTextView, viewA2, viewA3);
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

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75945a;
    }
}

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
import com.transsion.videodetail.music.widget.MusicDetailListOperateView;
import com.transsnet.downloader.widget.DownloadView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class f implements f4.a {

    private final ConstraintLayout f75890a;

    public final BubbleTextView f75891b;

    public final AppBarLayout f75892c;

    public final DownloadView f75893d;

    public final CoordinatorLayout f75894e;

    public final FrameLayout f75895f;

    public final FrameLayout f75896g;

    public final FrameLayout f75897h;

    public final FrameLayout f75898i;

    public final FrameLayout f75899j;

    public final AppCompatImageView f75900k;

    public final AppCompatImageView f75901l;

    public final mn.h f75902m;

    public final MagicIndicator f75903n;

    public final MusicDetailListOperateView f75904o;

    public final ViewPager2 f75905p;

    public final FrameLayout f75906q;

    public final FrameLayout f75907r;

    public final FrameLayout f75908s;

    public final CollapsingToolbarLayout f75909t;

    public final GradientTextView f75910u;

    public final View f75911v;

    private f(ConstraintLayout constraintLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, DownloadView downloadView, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, FrameLayout frameLayout5, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, mn.h hVar, MagicIndicator magicIndicator, MusicDetailListOperateView musicDetailListOperateView, ViewPager2 viewPager2, FrameLayout frameLayout6, FrameLayout frameLayout7, FrameLayout frameLayout8, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, View view) {
        this.f75890a = constraintLayout;
        this.f75891b = bubbleTextView;
        this.f75892c = appBarLayout;
        this.f75893d = downloadView;
        this.f75894e = coordinatorLayout;
        this.f75895f = frameLayout;
        this.f75896g = frameLayout2;
        this.f75897h = frameLayout3;
        this.f75898i = frameLayout4;
        this.f75899j = frameLayout5;
        this.f75900k = appCompatImageView;
        this.f75901l = appCompatImageView2;
        this.f75902m = hVar;
        this.f75903n = magicIndicator;
        this.f75904o = musicDetailListOperateView;
        this.f75905p = viewPager2;
        this.f75906q = frameLayout6;
        this.f75907r = frameLayout7;
        this.f75908s = frameLayout8;
        this.f75909t = collapsingToolbarLayout;
        this.f75910u = gradientTextView;
        this.f75911v = view;
    }

    public static f a(View view) {
        View viewA;
        View viewA2;
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
                            i10 = R$id.flFullPlayerContainer;
                            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout2 != null) {
                                i10 = R$id.flMusicContainer;
                                FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout3 != null) {
                                    i10 = R$id.flPlayer;
                                    FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                                    if (frameLayout4 != null) {
                                        i10 = R$id.game_container;
                                        FrameLayout frameLayout5 = (FrameLayout) f4.b.a(view, i10);
                                        if (frameLayout5 != null) {
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
                                                        i10 = R$id.operateView;
                                                        MusicDetailListOperateView musicDetailListOperateView = (MusicDetailListOperateView) f4.b.a(view, i10);
                                                        if (musicDetailListOperateView != null) {
                                                            i10 = R$id.rec_view_pager;
                                                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                            if (viewPager2 != null) {
                                                                i10 = R$id.resourceDetectorGroup;
                                                                FrameLayout frameLayout6 = (FrameLayout) f4.b.a(view, i10);
                                                                if (frameLayout6 != null) {
                                                                    i10 = R$id.subjectDetailLayout;
                                                                    FrameLayout frameLayout7 = (FrameLayout) f4.b.a(view, i10);
                                                                    if (frameLayout7 != null) {
                                                                        i10 = R$id.subjectDetailLayoutV2;
                                                                        FrameLayout frameLayout8 = (FrameLayout) f4.b.a(view, i10);
                                                                        if (frameLayout8 != null) {
                                                                            i10 = R$id.toolbar_layout;
                                                                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                                            if (collapsingToolbarLayout != null) {
                                                                                i10 = R$id.tv_post;
                                                                                GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                                                                if (gradientTextView != null && (viewA2 = f4.b.a(view, (i10 = R$id.vTopSpace))) != null) {
                                                                                    return new f((ConstraintLayout) view, bubbleTextView, appBarLayout, downloadView, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, appCompatImageView, appCompatImageView2, hVarA, magicIndicator, musicDetailListOperateView, viewPager2, frameLayout6, frameLayout7, frameLayout8, collapsingToolbarLayout, gradientTextView, viewA2);
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

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_music_detail_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75890a;
    }
}

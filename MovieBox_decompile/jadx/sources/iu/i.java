package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.noober.background.view.BLView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.widget.UGCLocalVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailAboutCourseView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class i implements f4.a {

    private final ConstraintLayout f62679a;

    public final UGCVideoDetailAboutCourseView f62680b;

    public final AppBarLayout f62681c;

    public final CoordinatorLayout f62682d;

    public final UGCVideoDetailInfoView f62683e;

    public final FrameLayout f62684f;

    public final FrameLayout f62685g;

    public final FrameLayout f62686h;

    public final AppCompatImageView f62687i;

    public final LinearLayout f62688j;

    public final UGCLocalVideoDetailInfoView f62689k;

    public final MagicIndicator f62690l;

    public final NativeCardPageView f62691m;

    public final UGCVideoDetailPlayListView f62692n;

    public final CollapsingToolbarLayout f62693o;

    public final BLView f62694p;

    public final View f62695q;

    public final View f62696r;

    public final ViewPager2 f62697s;

    private i(ConstraintLayout constraintLayout, UGCVideoDetailAboutCourseView uGCVideoDetailAboutCourseView, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, UGCVideoDetailInfoView uGCVideoDetailInfoView, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, AppCompatImageView appCompatImageView, LinearLayout linearLayout, UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView, MagicIndicator magicIndicator, NativeCardPageView nativeCardPageView, UGCVideoDetailPlayListView uGCVideoDetailPlayListView, CollapsingToolbarLayout collapsingToolbarLayout, BLView bLView, View view, View view2, ViewPager2 viewPager2) {
        this.f62679a = constraintLayout;
        this.f62680b = uGCVideoDetailAboutCourseView;
        this.f62681c = appBarLayout;
        this.f62682d = coordinatorLayout;
        this.f62683e = uGCVideoDetailInfoView;
        this.f62684f = frameLayout;
        this.f62685g = frameLayout2;
        this.f62686h = frameLayout3;
        this.f62687i = appCompatImageView;
        this.f62688j = linearLayout;
        this.f62689k = uGCLocalVideoDetailInfoView;
        this.f62690l = magicIndicator;
        this.f62691m = nativeCardPageView;
        this.f62692n = uGCVideoDetailPlayListView;
        this.f62693o = collapsingToolbarLayout;
        this.f62694p = bLView;
        this.f62695q = view;
        this.f62696r = view2;
        this.f62697s = viewPager2;
    }

    public static i a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.aboutCourseView;
        UGCVideoDetailAboutCourseView uGCVideoDetailAboutCourseView = (UGCVideoDetailAboutCourseView) f4.b.a(view, i10);
        if (uGCVideoDetailAboutCourseView != null) {
            i10 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
            if (appBarLayout != null) {
                i10 = R$id.cdl;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
                if (coordinatorLayout != null) {
                    i10 = R$id.detailInfoView;
                    UGCVideoDetailInfoView uGCVideoDetailInfoView = (UGCVideoDetailInfoView) f4.b.a(view, i10);
                    if (uGCVideoDetailInfoView != null) {
                        i10 = R$id.flBottomDialogContainer;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            i10 = R$id.fl_player;
                            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout2 != null) {
                                i10 = R$id.gameContainer;
                                FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout3 != null) {
                                    i10 = R$id.ivBack;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView != null) {
                                        i10 = R$id.llDetailContent;
                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout != null) {
                                            i10 = R$id.localDetailInfoView;
                                            UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView = (UGCLocalVideoDetailInfoView) f4.b.a(view, i10);
                                            if (uGCLocalVideoDetailInfoView != null) {
                                                i10 = R$id.magicIndicator;
                                                MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                                if (magicIndicator != null) {
                                                    i10 = R$id.nativeSlideshowView;
                                                    NativeCardPageView nativeCardPageView = (NativeCardPageView) f4.b.a(view, i10);
                                                    if (nativeCardPageView != null) {
                                                        i10 = R$id.playListView;
                                                        UGCVideoDetailPlayListView uGCVideoDetailPlayListView = (UGCVideoDetailPlayListView) f4.b.a(view, i10);
                                                        if (uGCVideoDetailPlayListView != null) {
                                                            i10 = R$id.toolbar_layout;
                                                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                            if (collapsingToolbarLayout != null) {
                                                                i10 = R$id.v_player_bottom_space;
                                                                BLView bLView = (BLView) f4.b.a(view, i10);
                                                                if (bLView != null && (viewA = f4.b.a(view, (i10 = R$id.vTabLine))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_top_space))) != null) {
                                                                    i10 = R$id.viewPager;
                                                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                    if (viewPager2 != null) {
                                                                        return new i((ConstraintLayout) view, uGCVideoDetailAboutCourseView, appBarLayout, coordinatorLayout, uGCVideoDetailInfoView, frameLayout, frameLayout2, frameLayout3, appCompatImageView, linearLayout, uGCLocalVideoDetailInfoView, magicIndicator, nativeCardPageView, uGCVideoDetailPlayListView, collapsingToolbarLayout, bLView, viewA, viewA2, viewPager2);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62679a;
    }
}

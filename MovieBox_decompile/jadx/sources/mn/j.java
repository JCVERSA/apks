package mn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.ad.view.CustomRoundCornerLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.member.LongVodMemberNoFreeResolutionView;
import com.transsion.player.longvideo.view.LongVodRewardInterceptView;
import com.transsion.player.ui.longvideo.ORLongVodPlayerView;
import com.transsion.postdetail.ad.AdInterceptTimerView;
import com.transsion.postdetail.ui.view.AdCountDownView;

public final class j implements f4.a {
    public final SimpleSubtitleView A;
    public final ImageView B;
    public final ViewStub C;
    public final ViewStub D;
    public final ViewStub E;
    public final ViewStub F;

    private final View f66571a;

    public final AppCompatImageView f66572b;

    public final NativeWrapperAdView f66573c;

    public final AdCountDownView f66574d;

    public final ConstraintLayout f66575e;

    public final AdInterceptTimerView f66576f;

    public final NativeWrapperAdView f66577g;

    public final FrameLayout f66578h;

    public final FrameLayout f66579i;

    public final CustomRoundCornerLayout f66580j;

    public final FrameLayout f66581k;

    public final LinearLayoutCompat f66582l;

    public final View f66583m;

    public final ImageView f66584n;

    public final k f66585o;

    public final l f66586p;

    public final i f66587q;

    public final LongVodMemberNoFreeResolutionView f66588r;

    public final AppCompatImageView f66589s;

    public final View f66590t;

    public final ORLongVodPlayerView f66591u;

    public final LongVodRewardInterceptView f66592v;

    public final AppCompatImageView f66593w;

    public final AppCompatTextView f66594x;

    public final AppCompatTextView f66595y;

    public final SimpleSubtitleView f66596z;

    private j(View view, AppCompatImageView appCompatImageView, NativeWrapperAdView nativeWrapperAdView, AdCountDownView adCountDownView, ConstraintLayout constraintLayout, AdInterceptTimerView adInterceptTimerView, NativeWrapperAdView nativeWrapperAdView2, FrameLayout frameLayout, FrameLayout frameLayout2, CustomRoundCornerLayout customRoundCornerLayout, FrameLayout frameLayout3, LinearLayoutCompat linearLayoutCompat, View view2, ImageView imageView, k kVar, l lVar, i iVar, LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView, AppCompatImageView appCompatImageView2, View view3, ORLongVodPlayerView oRLongVodPlayerView, LongVodRewardInterceptView longVodRewardInterceptView, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, ImageView imageView2, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, ViewStub viewStub4) {
        this.f66571a = view;
        this.f66572b = appCompatImageView;
        this.f66573c = nativeWrapperAdView;
        this.f66574d = adCountDownView;
        this.f66575e = constraintLayout;
        this.f66576f = adInterceptTimerView;
        this.f66577g = nativeWrapperAdView2;
        this.f66578h = frameLayout;
        this.f66579i = frameLayout2;
        this.f66580j = customRoundCornerLayout;
        this.f66581k = frameLayout3;
        this.f66582l = linearLayoutCompat;
        this.f66583m = view2;
        this.f66584n = imageView;
        this.f66585o = kVar;
        this.f66586p = lVar;
        this.f66587q = iVar;
        this.f66588r = longVodMemberNoFreeResolutionView;
        this.f66589s = appCompatImageView2;
        this.f66590t = view3;
        this.f66591u = oRLongVodPlayerView;
        this.f66592v = longVodRewardInterceptView;
        this.f66593w = appCompatImageView3;
        this.f66594x = appCompatTextView;
        this.f66595y = appCompatTextView2;
        this.f66596z = simpleSubtitleView;
        this.A = simpleSubtitleView2;
        this.B = imageView2;
        this.C = viewStub;
        this.D = viewStub2;
        this.E = viewStub3;
        this.F = viewStub4;
    }

    public static j a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.adCloseView;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.adContainer;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
            if (nativeWrapperAdView != null) {
                i10 = R$id.adCountDownView;
                AdCountDownView adCountDownView = (AdCountDownView) f4.b.a(view, i10);
                if (adCountDownView != null) {
                    i10 = R$id.clPlayer;
                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                    if (constraintLayout != null) {
                        i10 = R$id.enter_ad_tip;
                        AdInterceptTimerView adInterceptTimerView = (AdInterceptTimerView) f4.b.a(view, i10);
                        if (adInterceptTimerView != null) {
                            i10 = R$id.flLandAd;
                            NativeWrapperAdView nativeWrapperAdView2 = (NativeWrapperAdView) f4.b.a(view, i10);
                            if (nativeWrapperAdView2 != null) {
                                i10 = R$id.flLandAdGroup;
                                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout != null) {
                                    i10 = R$id.flPauseAdGroup;
                                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                                    if (frameLayout2 != null) {
                                        i10 = R$id.flResolution;
                                        CustomRoundCornerLayout customRoundCornerLayout = (CustomRoundCornerLayout) f4.b.a(view, i10);
                                        if (customRoundCornerLayout != null) {
                                            i10 = R$id.flRootSubtitle;
                                            FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                            if (frameLayout3 != null) {
                                                i10 = R$id.flSubtitle;
                                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                                if (linearLayoutCompat != null && (viewA = f4.b.a(view, (i10 = R$id.guideline))) != null) {
                                                    i10 = R$id.ivAdPauseClose;
                                                    ImageView imageView = (ImageView) f4.b.a(view, i10);
                                                    if (imageView != null && (viewA2 = f4.b.a(view, (i10 = R$id.layout_land))) != null) {
                                                        k kVarA = k.a(viewA2);
                                                        i10 = R$id.layout_middle;
                                                        View viewA4 = f4.b.a(view, i10);
                                                        if (viewA4 != null) {
                                                            l lVarA = l.a(viewA4);
                                                            i10 = R$id.layout_top_tool_bar;
                                                            View viewA5 = f4.b.a(view, i10);
                                                            if (viewA5 != null) {
                                                                i iVarA = i.a(viewA5);
                                                                i10 = R$id.memberNoFreeResolutionView;
                                                                LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView = (LongVodMemberNoFreeResolutionView) f4.b.a(view, i10);
                                                                if (longVodMemberNoFreeResolutionView != null) {
                                                                    i10 = R$id.or_long_vod_iv_bg;
                                                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                                                    if (appCompatImageView2 != null && (viewA3 = f4.b.a(view, (i10 = R$id.or_long_vod_player_bg))) != null) {
                                                                        i10 = R$id.or_long_vod_view;
                                                                        ORLongVodPlayerView oRLongVodPlayerView = (ORLongVodPlayerView) f4.b.a(view, i10);
                                                                        if (oRLongVodPlayerView != null) {
                                                                            i10 = R$id.rewardIntercept;
                                                                            LongVodRewardInterceptView longVodRewardInterceptView = (LongVodRewardInterceptView) f4.b.a(view, i10);
                                                                            if (longVodRewardInterceptView != null) {
                                                                                i10 = R$id.rotate;
                                                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                if (appCompatImageView3 != null) {
                                                                                    i10 = R$id.tv_center_progress;
                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView != null) {
                                                                                        i10 = R$id.tvPressSpeed;
                                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView2 != null) {
                                                                                            i10 = R$id.vSubtitleBottom;
                                                                                            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                            if (simpleSubtitleView != null) {
                                                                                                i10 = R$id.vSubtitleTop;
                                                                                                SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                if (simpleSubtitleView2 != null) {
                                                                                                    i10 = R$id.v_top_space;
                                                                                                    ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                                                                                    if (imageView2 != null) {
                                                                                                        i10 = R$id.vs_load_fail;
                                                                                                        ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                        if (viewStub != null) {
                                                                                                            i10 = R$id.vs_mobile_data;
                                                                                                            ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                                                                            if (viewStub2 != null) {
                                                                                                                i10 = R$id.vs_replay;
                                                                                                                ViewStub viewStub3 = (ViewStub) f4.b.a(view, i10);
                                                                                                                if (viewStub3 != null) {
                                                                                                                    i10 = R$id.vs_toast;
                                                                                                                    ViewStub viewStub4 = (ViewStub) f4.b.a(view, i10);
                                                                                                                    if (viewStub4 != null) {
                                                                                                                        return new j(view, appCompatImageView, nativeWrapperAdView, adCountDownView, constraintLayout, adInterceptTimerView, nativeWrapperAdView2, frameLayout, frameLayout2, customRoundCornerLayout, frameLayout3, linearLayoutCompat, viewA, imageView, kVarA, lVarA, iVarA, longVodMemberNoFreeResolutionView, appCompatImageView2, viewA3, oRLongVodPlayerView, longVodRewardInterceptView, appCompatImageView3, appCompatTextView, appCompatTextView2, simpleSubtitleView, simpleSubtitleView2, imageView2, viewStub, viewStub2, viewStub3, viewStub4);
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

    public static j b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.long_vod_view_player, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f66571a;
    }
}

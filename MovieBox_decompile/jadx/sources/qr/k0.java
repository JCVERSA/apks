package qr;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdContainer;
import com.transsion.shorttv.base.widget.NestedScrollableHost;
import com.transsion.shorttv.base.widget.TnTextView;
import com.transsion.shorttv.base.widget.expand.ExpandView;
import com.transsion.shorttv.ui.widget.ShortTvVideoProgressDragGestureView;

public final class k0 implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final AppCompatTextView E;
    public final AppCompatTextView F;
    public final TnTextView G;
    public final BLTextView H;
    public final BLView I;
    public final ShortTvVideoProgressDragGestureView J;
    public final SimpleSubtitleView K;
    public final ViewStub L;
    public final ViewStub M;

    private final View f70079a;

    public final ShortTvPlayerOverlayAdContainer f70080b;

    public final BLView f70081c;

    public final ExpandView f70082d;

    public final FrameLayout f70083e;

    public final FrameLayout f70084f;

    public final Group f70085g;

    public final Group f70086h;

    public final Group f70087i;

    public final AppCompatImageView f70088j;

    public final AppCompatImageView f70089k;

    public final AppCompatImageView f70090l;

    public final AppCompatImageView f70091m;

    public final AppCompatImageView f70092n;

    public final ShapeableImageView f70093o;

    public final LinearLayout f70094p;

    public final LinearLayout f70095q;

    public final NestedScrollableHost f70096r;

    public final ProgressBar f70097s;

    public final Space f70098t;

    public final AppCompatSeekBar f70099u;

    public final ConstraintLayout f70100v;

    public final AppCompatTextView f70101w;

    public final AppCompatTextView f70102x;

    public final AppCompatTextView f70103y;

    public final AppCompatTextView f70104z;

    private k0(View view, ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer, BLView bLView, ExpandView expandView, FrameLayout frameLayout, FrameLayout frameLayout2, Group group, Group group2, Group group3, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, ShapeableImageView shapeableImageView, LinearLayout linearLayout, LinearLayout linearLayout2, NestedScrollableHost nestedScrollableHost, ProgressBar progressBar, Space space, AppCompatSeekBar appCompatSeekBar, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, TnTextView tnTextView, BLTextView bLTextView, BLView bLView2, ShortTvVideoProgressDragGestureView shortTvVideoProgressDragGestureView, SimpleSubtitleView simpleSubtitleView, ViewStub viewStub, ViewStub viewStub2) {
        this.f70079a = view;
        this.f70080b = shortTvPlayerOverlayAdContainer;
        this.f70081c = bLView;
        this.f70082d = expandView;
        this.f70083e = frameLayout;
        this.f70084f = frameLayout2;
        this.f70085g = group;
        this.f70086h = group2;
        this.f70087i = group3;
        this.f70088j = appCompatImageView;
        this.f70089k = appCompatImageView2;
        this.f70090l = appCompatImageView3;
        this.f70091m = appCompatImageView4;
        this.f70092n = appCompatImageView5;
        this.f70093o = shapeableImageView;
        this.f70094p = linearLayout;
        this.f70095q = linearLayout2;
        this.f70096r = nestedScrollableHost;
        this.f70097s = progressBar;
        this.f70098t = space;
        this.f70099u = appCompatSeekBar;
        this.f70100v = constraintLayout;
        this.f70101w = appCompatTextView;
        this.f70102x = appCompatTextView2;
        this.f70103y = appCompatTextView3;
        this.f70104z = appCompatTextView4;
        this.A = appCompatTextView5;
        this.B = appCompatTextView6;
        this.C = appCompatTextView7;
        this.D = appCompatTextView8;
        this.E = appCompatTextView9;
        this.F = appCompatTextView10;
        this.G = tnTextView;
        this.H = bLTextView;
        this.I = bLView2;
        this.J = shortTvVideoProgressDragGestureView;
        this.K = simpleSubtitleView;
        this.L = viewStub;
        this.M = viewStub2;
    }

    public static k0 a(View view) {
        int i10 = R$id.ad_overlay_container_view;
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer = (ShortTvPlayerOverlayAdContainer) f4.b.a(view, i10);
        if (shortTvPlayerOverlayAdContainer != null) {
            i10 = R$id.bottom_background;
            BLView bLView = (BLView) f4.b.a(view, i10);
            if (bLView != null) {
                i10 = R$id.ev_post_des;
                ExpandView expandView = (ExpandView) f4.b.a(view, i10);
                if (expandView != null) {
                    i10 = R$id.fl_container;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
                        i10 = R$id.flSubtitle;
                        FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout2 != null) {
                            i10 = R$id.fm_group_content;
                            Group group = (Group) f4.b.a(view, i10);
                            if (group != null) {
                                i10 = R$id.group_content;
                                Group group2 = (Group) f4.b.a(view, i10);
                                if (group2 != null) {
                                    i10 = R$id.group_pay_lock_hide;
                                    Group group3 = (Group) f4.b.a(view, i10);
                                    if (group3 != null) {
                                        i10 = R$id.iv_back;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView != null) {
                                            i10 = R$id.iv_cover;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView2 != null) {
                                                i10 = R$id.iv_download;
                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                                if (appCompatImageView3 != null) {
                                                    i10 = R$id.iv_play_status;
                                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                                    if (appCompatImageView4 != null) {
                                                        i10 = R$id.iv_share;
                                                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                                        if (appCompatImageView5 != null) {
                                                            i10 = R$id.iv_short_cover;
                                                            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                                            if (shapeableImageView != null) {
                                                                i10 = R$id.ll_ctr;
                                                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                                if (linearLayout != null) {
                                                                    i10 = R$id.ll_download_guide_bubble;
                                                                    LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                                                    if (linearLayout2 != null) {
                                                                        i10 = R$id.ns_post_des;
                                                                        NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) f4.b.a(view, i10);
                                                                        if (nestedScrollableHost != null) {
                                                                            i10 = R$id.progress_bar;
                                                                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                                            if (progressBar != null) {
                                                                                i10 = R$id.progress_guideline;
                                                                                Space space = (Space) f4.b.a(view, i10);
                                                                                if (space != null) {
                                                                                    i10 = R$id.seek_bar;
                                                                                    AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) f4.b.a(view, i10);
                                                                                    if (appCompatSeekBar != null) {
                                                                                        i10 = R$id.tool_bar;
                                                                                        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                                                                        if (constraintLayout != null) {
                                                                                            i10 = R$id.tv_audio;
                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView != null) {
                                                                                                i10 = R$id.tv_download_guide_text;
                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                if (appCompatTextView2 != null) {
                                                                                                    i10 = R$id.tv_episode;
                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView3 != null) {
                                                                                                        i10 = R$id.tv_favorite;
                                                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                        if (appCompatTextView4 != null) {
                                                                                                            i10 = R$id.tv_language;
                                                                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                            if (appCompatTextView5 != null) {
                                                                                                                i10 = R$id.tv_name;
                                                                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                if (appCompatTextView6 != null) {
                                                                                                                    i10 = R$id.tv_progress_des;
                                                                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                    if (appCompatTextView7 != null) {
                                                                                                                        i10 = R$id.tv_resolution;
                                                                                                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                        if (appCompatTextView8 != null) {
                                                                                                                            i10 = R$id.tv_speed;
                                                                                                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                            if (appCompatTextView9 != null) {
                                                                                                                                i10 = R$id.tv_subtitles;
                                                                                                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                if (appCompatTextView10 != null) {
                                                                                                                                    i10 = R$id.tv_title;
                                                                                                                                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                                                                                                                    if (tnTextView != null) {
                                                                                                                                        i10 = R$id.tv_watch_free_countdown;
                                                                                                                                        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                                                                                                                        if (bLTextView != null) {
                                                                                                                                            i10 = R$id.up_background;
                                                                                                                                            BLView bLView2 = (BLView) f4.b.a(view, i10);
                                                                                                                                            if (bLView2 != null) {
                                                                                                                                                i10 = R$id.v_progress_gesture;
                                                                                                                                                ShortTvVideoProgressDragGestureView shortTvVideoProgressDragGestureView = (ShortTvVideoProgressDragGestureView) f4.b.a(view, i10);
                                                                                                                                                if (shortTvVideoProgressDragGestureView != null) {
                                                                                                                                                    i10 = R$id.vSubtitle;
                                                                                                                                                    SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                                                                    if (simpleSubtitleView != null) {
                                                                                                                                                        i10 = R$id.vs_locked;
                                                                                                                                                        ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                        if (viewStub != null) {
                                                                                                                                                            i10 = R$id.vs_unlock;
                                                                                                                                                            ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                            if (viewStub2 != null) {
                                                                                                                                                                return new k0(view, shortTvPlayerOverlayAdContainer, bLView, expandView, frameLayout, frameLayout2, group, group2, group3, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, shapeableImageView, linearLayout, linearLayout2, nestedScrollableHost, progressBar, space, appCompatSeekBar, constraintLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, tnTextView, bLTextView, bLView2, shortTvVideoProgressDragGestureView, simpleSubtitleView, viewStub, viewStub2);
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

    @Override
    public View getRoot() {
        return this.f70079a;
    }
}

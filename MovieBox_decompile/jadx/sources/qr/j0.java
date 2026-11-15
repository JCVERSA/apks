package qr;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.widget.NestedScrollableHost;
import com.transsion.shorttv_pugc.base.widget.TnTextView;
import com.transsion.shorttv_pugc.base.widget.expand.ExpandView;
import com.transsion.shorttv_pugc.ui.widget.ShortTvAdView;
import com.transsion.shorttv_pugc.ui.widget.ShortTvVideoProgressDragGestureView;

public final class j0 implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final TextView D;
    public final AppCompatTextView E;
    public final AppCompatTextView F;
    public final TnTextView G;
    public final BLView H;
    public final ShortTvVideoProgressDragGestureView I;
    public final SimpleSubtitleView J;
    public final ViewStub K;

    private final View f70046a;

    public final BLView f70047b;

    public final ExpandView f70048c;

    public final FrameLayout f70049d;

    public final FrameLayout f70050e;

    public final Group f70051f;

    public final View f70052g;

    public final AppCompatImageView f70053h;

    public final AppCompatImageView f70054i;

    public final AppCompatImageView f70055j;

    public final AppCompatImageView f70056k;

    public final AppCompatImageView f70057l;

    public final ShapeableImageView f70058m;

    public final AppCompatImageView f70059n;

    public final FrameLayout f70060o;

    public final LinearLayout f70061p;

    public final NestedScrollableHost f70062q;

    public final ProgressBar f70063r;

    public final Space f70064s;

    public final RecyclerView f70065t;

    public final AppCompatSeekBar f70066u;

    public final ShortTvAdView f70067v;

    public final ConstraintLayout f70068w;

    public final AppCompatTextView f70069x;

    public final AppCompatTextView f70070y;

    public final AppCompatTextView f70071z;

    private j0(View view, BLView bLView, ExpandView expandView, FrameLayout frameLayout, FrameLayout frameLayout2, Group group, View view2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView6, FrameLayout frameLayout3, LinearLayout linearLayout, NestedScrollableHost nestedScrollableHost, ProgressBar progressBar, Space space, RecyclerView recyclerView, AppCompatSeekBar appCompatSeekBar, ShortTvAdView shortTvAdView, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, TextView textView, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, TnTextView tnTextView, BLView bLView2, ShortTvVideoProgressDragGestureView shortTvVideoProgressDragGestureView, SimpleSubtitleView simpleSubtitleView, ViewStub viewStub) {
        this.f70046a = view;
        this.f70047b = bLView;
        this.f70048c = expandView;
        this.f70049d = frameLayout;
        this.f70050e = frameLayout2;
        this.f70051f = group;
        this.f70052g = view2;
        this.f70053h = appCompatImageView;
        this.f70054i = appCompatImageView2;
        this.f70055j = appCompatImageView3;
        this.f70056k = appCompatImageView4;
        this.f70057l = appCompatImageView5;
        this.f70058m = shapeableImageView;
        this.f70059n = appCompatImageView6;
        this.f70060o = frameLayout3;
        this.f70061p = linearLayout;
        this.f70062q = nestedScrollableHost;
        this.f70063r = progressBar;
        this.f70064s = space;
        this.f70065t = recyclerView;
        this.f70066u = appCompatSeekBar;
        this.f70067v = shortTvAdView;
        this.f70068w = constraintLayout;
        this.f70069x = appCompatTextView;
        this.f70070y = appCompatTextView2;
        this.f70071z = appCompatTextView3;
        this.A = appCompatTextView4;
        this.B = appCompatTextView5;
        this.C = appCompatTextView6;
        this.D = textView;
        this.E = appCompatTextView7;
        this.F = appCompatTextView8;
        this.G = tnTextView;
        this.H = bLView2;
        this.I = shortTvVideoProgressDragGestureView;
        this.J = simpleSubtitleView;
        this.K = viewStub;
    }

    public static j0 a(View view) {
        View viewA;
        int i10 = R$id.bottom_background;
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
                        i10 = R$id.group_content;
                        Group group = (Group) f4.b.a(view, i10);
                        if (group != null && (viewA = f4.b.a(view, (i10 = R$id.group_content_bg))) != null) {
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
                                                    i10 = R$id.iv_subscribe;
                                                    AppCompatImageView appCompatImageView6 = (AppCompatImageView) f4.b.a(view, i10);
                                                    if (appCompatImageView6 != null) {
                                                        i10 = R$id.layout_tv_episode;
                                                        FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                                        if (frameLayout3 != null) {
                                                            i10 = R$id.ll_ctr;
                                                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                            if (linearLayout != null) {
                                                                i10 = R$id.ns_post_des;
                                                                NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) f4.b.a(view, i10);
                                                                if (nestedScrollableHost != null) {
                                                                    i10 = R$id.progress_bar;
                                                                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                                    if (progressBar != null) {
                                                                        i10 = R$id.progress_guideline;
                                                                        Space space = (Space) f4.b.a(view, i10);
                                                                        if (space != null) {
                                                                            i10 = R$id.rv_tags;
                                                                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                                            if (recyclerView != null) {
                                                                                i10 = R$id.seek_bar;
                                                                                AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) f4.b.a(view, i10);
                                                                                if (appCompatSeekBar != null) {
                                                                                    i10 = R$id.shortTvAdView;
                                                                                    ShortTvAdView shortTvAdView = (ShortTvAdView) f4.b.a(view, i10);
                                                                                    if (shortTvAdView != null) {
                                                                                        i10 = R$id.tool_bar;
                                                                                        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                                                                        if (constraintLayout != null) {
                                                                                            i10 = R$id.tv_comment;
                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView != null) {
                                                                                                i10 = R$id.tv_episode;
                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                if (appCompatTextView2 != null) {
                                                                                                    i10 = R$id.tv_favorite;
                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView3 != null) {
                                                                                                        i10 = R$id.tv_language;
                                                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                        if (appCompatTextView4 != null) {
                                                                                                            i10 = R$id.tv_like;
                                                                                                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                            if (appCompatTextView5 != null) {
                                                                                                                i10 = R$id.tv_name;
                                                                                                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                if (appCompatTextView6 != null) {
                                                                                                                    i10 = R$id.tv_progress_des;
                                                                                                                    TextView textView = (TextView) f4.b.a(view, i10);
                                                                                                                    if (textView != null) {
                                                                                                                        i10 = R$id.tv_resolution;
                                                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                        if (appCompatTextView7 != null) {
                                                                                                                            i10 = R$id.tv_speed;
                                                                                                                            AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                            if (appCompatTextView8 != null) {
                                                                                                                                i10 = R$id.tv_title;
                                                                                                                                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                                                                                                                if (tnTextView != null) {
                                                                                                                                    i10 = R$id.up_background;
                                                                                                                                    BLView bLView2 = (BLView) f4.b.a(view, i10);
                                                                                                                                    if (bLView2 != null) {
                                                                                                                                        i10 = R$id.v_progress_gesture;
                                                                                                                                        ShortTvVideoProgressDragGestureView shortTvVideoProgressDragGestureView = (ShortTvVideoProgressDragGestureView) f4.b.a(view, i10);
                                                                                                                                        if (shortTvVideoProgressDragGestureView != null) {
                                                                                                                                            i10 = R$id.vSubtitle;
                                                                                                                                            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                                                            if (simpleSubtitleView != null) {
                                                                                                                                                i10 = R$id.vs_unlock;
                                                                                                                                                ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                if (viewStub != null) {
                                                                                                                                                    return new j0(view, bLView, expandView, frameLayout, frameLayout2, group, viewA, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, shapeableImageView, appCompatImageView6, frameLayout3, linearLayout, nestedScrollableHost, progressBar, space, recyclerView, appCompatSeekBar, shortTvAdView, constraintLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, textView, appCompatTextView7, appCompatTextView8, tnTextView, bLView2, shortTvVideoProgressDragGestureView, simpleSubtitleView, viewStub);
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
        return this.f70046a;
    }
}

package wn;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.ImmScaleView;
import com.transsion.postdetail.ui.view.ImmSpeedView;

public final class u implements f4.a {
    public final TextView A;
    public final TextView B;
    public final View C;
    public final View D;
    public final View E;
    public final SimpleSubtitleView F;
    public final SimpleSubtitleView G;
    public final k0 H;
    public final ConstraintLayout I;
    public final AppCompatTextView J;
    public final AppCompatImageView K;
    public final Group L;
    public final AppCompatImageView M;
    public final SecondariesSeekBar N;
    public final AppCompatTextView O;
    public final TextView P;
    public final TextView Q;
    public final FrameLayout R;
    public final ViewStub S;
    public final ViewStub T;
    public final ViewStub U;
    public final ViewStub V;

    private final ConstraintLayout f74582a;

    public final jj.e f74583b;

    public final FrameLayout f74584c;

    public final FrameLayout f74585d;

    public final LinearLayoutCompat f74586e;

    public final ShapeableImageView f74587f;

    public final AppCompatImageView f74588g;

    public final AppCompatTextView f74589h;

    public final ImmScaleView f74590i;

    public final FrameLayout f74591j;

    public final AppCompatTextView f74592k;

    public final ConstraintLayout f74593l;

    public final View f74594m;

    public final View f74595n;

    public final tn.a f74596o;

    public final jt.j f74597p;

    public final LinearLayout f74598q;

    public final FrameLayout f74599r;

    public final TextView f74600s;

    public final AppCompatTextView f74601t;

    public final AppCompatTextView f74602u;

    public final TextView f74603v;

    public final ImmSpeedView f74604w;

    public final AppCompatTextView f74605x;

    public final AppCompatTextView f74606y;

    public final AppCompatTextView f74607z;

    private u(ConstraintLayout constraintLayout, jj.e eVar, FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayoutCompat linearLayoutCompat, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, ImmScaleView immScaleView, FrameLayout frameLayout3, AppCompatTextView appCompatTextView2, ConstraintLayout constraintLayout2, View view, View view2, tn.a aVar, jt.j jVar, LinearLayout linearLayout, FrameLayout frameLayout4, TextView textView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, TextView textView2, ImmSpeedView immSpeedView, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, TextView textView3, TextView textView4, View view3, View view4, View view5, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, k0 k0Var, ConstraintLayout constraintLayout3, AppCompatTextView appCompatTextView8, AppCompatImageView appCompatImageView2, Group group, AppCompatImageView appCompatImageView3, SecondariesSeekBar secondariesSeekBar, AppCompatTextView appCompatTextView9, TextView textView5, TextView textView6, FrameLayout frameLayout5, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, ViewStub viewStub4) {
        this.f74582a = constraintLayout;
        this.f74583b = eVar;
        this.f74584c = frameLayout;
        this.f74585d = frameLayout2;
        this.f74586e = linearLayoutCompat;
        this.f74587f = shapeableImageView;
        this.f74588g = appCompatImageView;
        this.f74589h = appCompatTextView;
        this.f74590i = immScaleView;
        this.f74591j = frameLayout3;
        this.f74592k = appCompatTextView2;
        this.f74593l = constraintLayout2;
        this.f74594m = view;
        this.f74595n = view2;
        this.f74596o = aVar;
        this.f74597p = jVar;
        this.f74598q = linearLayout;
        this.f74599r = frameLayout4;
        this.f74600s = textView;
        this.f74601t = appCompatTextView3;
        this.f74602u = appCompatTextView4;
        this.f74603v = textView2;
        this.f74604w = immSpeedView;
        this.f74605x = appCompatTextView5;
        this.f74606y = appCompatTextView6;
        this.f74607z = appCompatTextView7;
        this.A = textView3;
        this.B = textView4;
        this.C = view3;
        this.D = view4;
        this.E = view5;
        this.F = simpleSubtitleView;
        this.G = simpleSubtitleView2;
        this.H = k0Var;
        this.I = constraintLayout3;
        this.J = appCompatTextView8;
        this.K = appCompatImageView2;
        this.L = group;
        this.M = appCompatImageView3;
        this.N = secondariesSeekBar;
        this.O = appCompatTextView9;
        this.P = textView5;
        this.Q = textView6;
        this.R = frameLayout5;
        this.S = viewStub;
        this.T = viewStub2;
        this.U = viewStub3;
        this.V = viewStub4;
    }

    public static u a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        View viewA6;
        int i10 = R$id.centerControlLayout;
        View viewA7 = f4.b.a(view, i10);
        if (viewA7 != null) {
            jj.e eVarA = jj.e.a(viewA7);
            i10 = R$id.flPlaying10AdGroup;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.flRootSubtitle;
                FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R$id.flSubtitle;
                    LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                    if (linearLayoutCompat != null) {
                        i10 = R$id.iv_brand_ad_logo;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView != null) {
                            i10 = R$id.iv_feedback;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.iv_lock;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.iv_play_scale;
                                    ImmScaleView immScaleView = (ImmScaleView) f4.b.a(view, i10);
                                    if (immScaleView != null) {
                                        i10 = R$id.land_phone_bar;
                                        FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                        if (frameLayout3 != null) {
                                            i10 = R$id.land_phone_time;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView2 != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                i10 = R$id.land_view1;
                                                View viewA8 = f4.b.a(view, i10);
                                                if (viewA8 != null && (viewA = f4.b.a(view, (i10 = R$id.land_view2))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.layout_bv))) != null) {
                                                    tn.a aVarA = tn.a.a(viewA2);
                                                    i10 = R$id.layout_sync_adjust;
                                                    View viewA9 = f4.b.a(view, i10);
                                                    if (viewA9 != null) {
                                                        jt.j jVarA = jt.j.a(viewA9);
                                                        i10 = R$id.ll_play_scale;
                                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                        if (linearLayout != null) {
                                                            i10 = R$id.sub_pop_container;
                                                            FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                                                            if (frameLayout4 != null) {
                                                                i10 = R$id.tvHelpTip;
                                                                TextView textView = (TextView) f4.b.a(view, i10);
                                                                if (textView != null) {
                                                                    i10 = R$id.tv_language;
                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView3 != null) {
                                                                        i10 = R$id.tvPlayNext;
                                                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView4 != null) {
                                                                            i10 = R$id.tv_play_scale;
                                                                            TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                            if (textView2 != null) {
                                                                                i10 = R$id.tvPlaySpeed;
                                                                                ImmSpeedView immSpeedView = (ImmSpeedView) f4.b.a(view, i10);
                                                                                if (immSpeedView != null) {
                                                                                    i10 = R$id.tvPressSpeed;
                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView5 != null) {
                                                                                        i10 = R$id.tvRotate;
                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView6 != null) {
                                                                                            i10 = R$id.tvSubtitleSetting;
                                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView7 != null) {
                                                                                                i10 = R$id.tv_toast_1;
                                                                                                TextView textView3 = (TextView) f4.b.a(view, i10);
                                                                                                if (textView3 != null) {
                                                                                                    i10 = R$id.tv_toast_2;
                                                                                                    TextView textView4 = (TextView) f4.b.a(view, i10);
                                                                                                    if (textView4 != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_gesture))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.v_space_end))) != null && (viewA5 = f4.b.a(view, (i10 = R$id.v_space_start))) != null) {
                                                                                                        i10 = R$id.vSubtitleBottom;
                                                                                                        SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                        if (simpleSubtitleView != null) {
                                                                                                            i10 = R$id.vSubtitleTop;
                                                                                                            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                            if (simpleSubtitleView2 != null && (viewA6 = f4.b.a(view, (i10 = R$id.vd_include_load))) != null) {
                                                                                                                k0 k0VarA = k0.a(viewA6);
                                                                                                                i10 = R$id.vd_land_bottom_controller;
                                                                                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                                                                                                if (constraintLayout2 != null) {
                                                                                                                    i10 = R$id.vd_land_center_progress;
                                                                                                                    AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                    if (appCompatTextView8 != null) {
                                                                                                                        i10 = R$id.vd_land_iv_back;
                                                                                                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                                                        if (appCompatImageView2 != null) {
                                                                                                                            i10 = R$id.vd_land_toolbar;
                                                                                                                            Group group = (Group) f4.b.a(view, i10);
                                                                                                                            if (group != null) {
                                                                                                                                i10 = R$id.vd_pause;
                                                                                                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                                                                if (appCompatImageView3 != null) {
                                                                                                                                    i10 = R$id.vd_seekbar;
                                                                                                                                    SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                                                                                                                    if (secondariesSeekBar != null) {
                                                                                                                                        i10 = R$id.vd_title;
                                                                                                                                        AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                        if (appCompatTextView9 != null) {
                                                                                                                                            i10 = R$id.vd_video_duration;
                                                                                                                                            TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                                                                                            if (textView5 != null) {
                                                                                                                                                i10 = R$id.vd_video_time;
                                                                                                                                                TextView textView6 = (TextView) f4.b.a(view, i10);
                                                                                                                                                if (textView6 != null) {
                                                                                                                                                    i10 = R$id.video_land_surface;
                                                                                                                                                    FrameLayout frameLayout5 = (FrameLayout) f4.b.a(view, i10);
                                                                                                                                                    if (frameLayout5 != null) {
                                                                                                                                                        i10 = R$id.vs_forward;
                                                                                                                                                        ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                        if (viewStub != null) {
                                                                                                                                                            i10 = R$id.vs_forward_guide;
                                                                                                                                                            ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                            if (viewStub2 != null) {
                                                                                                                                                                i10 = R$id.vs_load_failed;
                                                                                                                                                                ViewStub viewStub3 = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                                if (viewStub3 != null) {
                                                                                                                                                                    i10 = R$id.vs_replay;
                                                                                                                                                                    ViewStub viewStub4 = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                                    if (viewStub4 != null) {
                                                                                                                                                                        return new u(constraintLayout, eVarA, frameLayout, frameLayout2, linearLayoutCompat, shapeableImageView, appCompatImageView, appCompatTextView, immScaleView, frameLayout3, appCompatTextView2, constraintLayout, viewA8, viewA, aVarA, jVarA, linearLayout, frameLayout4, textView, appCompatTextView3, appCompatTextView4, textView2, immSpeedView, appCompatTextView5, appCompatTextView6, appCompatTextView7, textView3, textView4, viewA3, viewA4, viewA5, simpleSubtitleView, simpleSubtitleView2, k0VarA, constraintLayout2, appCompatTextView8, appCompatImageView2, group, appCompatImageView3, secondariesSeekBar, appCompatTextView9, textView5, textView6, frameLayout5, viewStub, viewStub2, viewStub3, viewStub4);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74582a;
    }
}

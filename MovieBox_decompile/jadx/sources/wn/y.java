package wn;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.ImmSpeedView;

public final class y implements f4.a {
    public final AppCompatTextView A;
    public final TextView B;
    public final TextView C;
    public final FrameLayout D;
    public final ViewStub E;
    public final ViewStub F;

    private final ConstraintLayout f74650a;

    public final FrameLayout f74651b;

    public final LinearLayoutCompat f74652c;

    public final AppCompatImageView f74653d;

    public final View f74654e;

    public final View f74655f;

    public final tn.a f74656g;

    public final jt.j f74657h;

    public final ConstraintLayout f74658i;

    public final TextView f74659j;

    public final AppCompatTextView f74660k;

    public final ImmSpeedView f74661l;

    public final AppCompatTextView f74662m;

    public final AppCompatTextView f74663n;

    public final TextView f74664o;

    public final TextView f74665p;

    public final View f74666q;

    public final SimpleSubtitleView f74667r;

    public final SimpleSubtitleView f74668s;

    public final k0 f74669t;

    public final AppCompatImageView f74670u;

    public final ConstraintLayout f74671v;

    public final AppCompatTextView f74672w;

    public final Group f74673x;

    public final AppCompatImageView f74674y;

    public final SecondariesSeekBar f74675z;

    private y(ConstraintLayout constraintLayout, FrameLayout frameLayout, LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, View view, View view2, tn.a aVar, jt.j jVar, ConstraintLayout constraintLayout2, TextView textView, AppCompatTextView appCompatTextView, ImmSpeedView immSpeedView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView2, TextView textView3, View view3, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, k0 k0Var, AppCompatImageView appCompatImageView2, ConstraintLayout constraintLayout3, AppCompatTextView appCompatTextView4, Group group, AppCompatImageView appCompatImageView3, SecondariesSeekBar secondariesSeekBar, AppCompatTextView appCompatTextView5, TextView textView4, TextView textView5, FrameLayout frameLayout2, ViewStub viewStub, ViewStub viewStub2) {
        this.f74650a = constraintLayout;
        this.f74651b = frameLayout;
        this.f74652c = linearLayoutCompat;
        this.f74653d = appCompatImageView;
        this.f74654e = view;
        this.f74655f = view2;
        this.f74656g = aVar;
        this.f74657h = jVar;
        this.f74658i = constraintLayout2;
        this.f74659j = textView;
        this.f74660k = appCompatTextView;
        this.f74661l = immSpeedView;
        this.f74662m = appCompatTextView2;
        this.f74663n = appCompatTextView3;
        this.f74664o = textView2;
        this.f74665p = textView3;
        this.f74666q = view3;
        this.f74667r = simpleSubtitleView;
        this.f74668s = simpleSubtitleView2;
        this.f74669t = k0Var;
        this.f74670u = appCompatImageView2;
        this.f74671v = constraintLayout3;
        this.f74672w = appCompatTextView4;
        this.f74673x = group;
        this.f74674y = appCompatImageView3;
        this.f74675z = secondariesSeekBar;
        this.A = appCompatTextView5;
        this.B = textView4;
        this.C = textView5;
        this.D = frameLayout2;
        this.E = viewStub;
        this.F = viewStub2;
    }

    public static y a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        int i10 = R$id.flRootSubtitle;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.flSubtitle;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.iv_feedback;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.land_view1))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.land_view2))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.layout_bv))) != null) {
                    tn.a aVarA = tn.a.a(viewA3);
                    i10 = R$id.layout_sync_adjust;
                    View viewA6 = f4.b.a(view, i10);
                    if (viewA6 != null) {
                        jt.j jVarA = jt.j.a(viewA6);
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i10 = R$id.tvHelpTip;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.tv_language;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_play_speed;
                                ImmSpeedView immSpeedView = (ImmSpeedView) f4.b.a(view, i10);
                                if (immSpeedView != null) {
                                    i10 = R$id.tvPressSpeed;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView2 != null) {
                                        i10 = R$id.tvRotate;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView3 != null) {
                                            i10 = R$id.tv_toast_1;
                                            TextView textView2 = (TextView) f4.b.a(view, i10);
                                            if (textView2 != null) {
                                                i10 = R$id.tv_toast_2;
                                                TextView textView3 = (TextView) f4.b.a(view, i10);
                                                if (textView3 != null && (viewA4 = f4.b.a(view, (i10 = R$id.v_gesture))) != null) {
                                                    i10 = R$id.vSubtitleBottom;
                                                    SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                    if (simpleSubtitleView != null) {
                                                        i10 = R$id.vSubtitleTop;
                                                        SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) f4.b.a(view, i10);
                                                        if (simpleSubtitleView2 != null && (viewA5 = f4.b.a(view, (i10 = R$id.vd_include_load))) != null) {
                                                            k0 k0VarA = k0.a(viewA5);
                                                            i10 = R$id.vd_iv_back;
                                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                                            if (appCompatImageView2 != null) {
                                                                i10 = R$id.vd_land_bottom_controller;
                                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                                                if (constraintLayout2 != null) {
                                                                    i10 = R$id.vd_land_center_progress;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView4 != null) {
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
                                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView5 != null) {
                                                                                        i10 = R$id.vd_video_duration;
                                                                                        TextView textView4 = (TextView) f4.b.a(view, i10);
                                                                                        if (textView4 != null) {
                                                                                            i10 = R$id.vd_video_time;
                                                                                            TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                                            if (textView5 != null) {
                                                                                                i10 = R$id.video_portrait_surface;
                                                                                                FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                                                                                                if (frameLayout2 != null) {
                                                                                                    i10 = R$id.vs_load_failed;
                                                                                                    ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                    if (viewStub != null) {
                                                                                                        i10 = R$id.vs_replay;
                                                                                                        ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                                                                        if (viewStub2 != null) {
                                                                                                            return new y(constraintLayout, frameLayout, linearLayoutCompat, appCompatImageView, viewA, viewA2, aVarA, jVarA, constraintLayout, textView, appCompatTextView, immSpeedView, appCompatTextView2, appCompatTextView3, textView2, textView3, viewA4, simpleSubtitleView, simpleSubtitleView2, k0VarA, appCompatImageView2, constraintLayout2, appCompatTextView4, group, appCompatImageView3, secondariesSeekBar, appCompatTextView5, textView4, textView5, frameLayout2, viewStub, viewStub2);
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
        return this.f74650a;
    }
}

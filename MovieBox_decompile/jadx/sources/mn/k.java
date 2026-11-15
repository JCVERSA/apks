package mn;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.member.LongVodResolutionMemberTipView;
import com.transsion.postdetail.ui.view.ImmScaleView;
import com.transsion.postdetail.ui.view.ImmSpeedView;

public final class k implements f4.a {
    public final ImmSpeedView A;
    public final View B;
    public final View C;
    public final FrameLayout D;
    public final TextView E;
    public final ViewStub F;
    public final ViewStub G;

    private final ConstraintLayout f66597a;

    public final AppCompatImageView f66598b;

    public final jj.e f66599c;

    public final ConstraintLayout f66600d;

    public final FrameLayout f66601e;

    public final FrameLayout f66602f;

    public final FrameLayout f66603g;

    public final Group f66604h;

    public final ShapeableImageView f66605i;

    public final AppCompatImageView f66606j;

    public final AppCompatImageView f66607k;

    public final AppCompatTextView f66608l;

    public final AppCompatImageView f66609m;

    public final ImmScaleView f66610n;

    public final View f66611o;

    public final View f66612p;

    public final LinearLayout f66613q;

    public final LongVodResolutionMemberTipView f66614r;

    public final f f66615s;

    public final SecondariesSeekBar f66616t;

    public final TextView f66617u;

    public final TextView f66618v;

    public final TextView f66619w;

    public final AppCompatTextView f66620x;

    public final AppCompatTextView f66621y;

    public final TextView f66622z;

    private k(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, jj.e eVar, ConstraintLayout constraintLayout2, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, Group group, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView4, ImmScaleView immScaleView, View view, View view2, LinearLayout linearLayout, LongVodResolutionMemberTipView longVodResolutionMemberTipView, f fVar, SecondariesSeekBar secondariesSeekBar, TextView textView, TextView textView2, TextView textView3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, TextView textView4, ImmSpeedView immSpeedView, View view3, View view4, FrameLayout frameLayout4, TextView textView5, ViewStub viewStub, ViewStub viewStub2) {
        this.f66597a = constraintLayout;
        this.f66598b = appCompatImageView;
        this.f66599c = eVar;
        this.f66600d = constraintLayout2;
        this.f66601e = frameLayout;
        this.f66602f = frameLayout2;
        this.f66603g = frameLayout3;
        this.f66604h = group;
        this.f66605i = shapeableImageView;
        this.f66606j = appCompatImageView2;
        this.f66607k = appCompatImageView3;
        this.f66608l = appCompatTextView;
        this.f66609m = appCompatImageView4;
        this.f66610n = immScaleView;
        this.f66611o = view;
        this.f66612p = view2;
        this.f66613q = linearLayout;
        this.f66614r = longVodResolutionMemberTipView;
        this.f66615s = fVar;
        this.f66616t = secondariesSeekBar;
        this.f66617u = textView;
        this.f66618v = textView2;
        this.f66619w = textView3;
        this.f66620x = appCompatTextView2;
        this.f66621y = appCompatTextView3;
        this.f66622z = textView4;
        this.A = immSpeedView;
        this.B = view3;
        this.C = view4;
        this.D = frameLayout4;
        this.E = textView5;
        this.F = viewStub;
        this.G = viewStub2;
    }

    public static k a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        View viewA6;
        int i10 = R$id.ad_close_view;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.centerControlLayout))) != null) {
            jj.e eVarA = jj.e.a(viewA);
            i10 = R$id.cl_bottom_control;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.fl_native_ad;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.fl_playing_10_ad_group;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.game_container;
                        FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout3 != null) {
                            i10 = R$id.group_control_pk;
                            Group group = (Group) f4.b.a(view, i10);
                            if (group != null) {
                                i10 = R$id.iv_brand_ad_logo;
                                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                if (shapeableImageView != null) {
                                    i10 = R$id.iv_game_close;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView2 != null) {
                                        i10 = R$id.iv_land_pause;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView3 != null) {
                                            i10 = R$id.iv_lock;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView != null) {
                                                i10 = R$id.iv_play;
                                                AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                                if (appCompatImageView4 != null) {
                                                    i10 = R$id.iv_play_scale;
                                                    ImmScaleView immScaleView = (ImmScaleView) f4.b.a(view, i10);
                                                    if (immScaleView != null && (viewA2 = f4.b.a(view, (i10 = R$id.land_gradient_bottom))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.land_gradient_top))) != null) {
                                                        i10 = R$id.ll_play_scale;
                                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                        if (linearLayout != null) {
                                                            i10 = R$id.memberTip;
                                                            LongVodResolutionMemberTipView longVodResolutionMemberTipView = (LongVodResolutionMemberTipView) f4.b.a(view, i10);
                                                            if (longVodResolutionMemberTipView != null && (viewA4 = f4.b.a(view, (i10 = R$id.operatorLayout))) != null) {
                                                                f fVarA = f.a(viewA4);
                                                                i10 = R$id.seek_bar_land;
                                                                SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                                                if (secondariesSeekBar != null) {
                                                                    i10 = R$id.tv_land_bitrate;
                                                                    TextView textView = (TextView) f4.b.a(view, i10);
                                                                    if (textView != null) {
                                                                        i10 = R$id.tv_land_cur_time;
                                                                        TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                        if (textView2 != null) {
                                                                            i10 = R$id.tv_land_total_time;
                                                                            TextView textView3 = (TextView) f4.b.a(view, i10);
                                                                            if (textView3 != null) {
                                                                                i10 = R$id.tv_language;
                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                if (appCompatTextView2 != null) {
                                                                                    i10 = R$id.tvPlayNext;
                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView3 != null) {
                                                                                        i10 = R$id.tv_play_scale;
                                                                                        TextView textView4 = (TextView) f4.b.a(view, i10);
                                                                                        if (textView4 != null) {
                                                                                            i10 = R$id.tv_play_speed;
                                                                                            ImmSpeedView immSpeedView = (ImmSpeedView) f4.b.a(view, i10);
                                                                                            if (immSpeedView != null && (viewA5 = f4.b.a(view, (i10 = R$id.v_land_space_end))) != null && (viewA6 = f4.b.a(view, (i10 = R$id.v_land_space_start))) != null) {
                                                                                                i10 = R$id.v_native_ad;
                                                                                                FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                                                                                                if (frameLayout4 != null) {
                                                                                                    i10 = R$id.v_native_ad_countdown;
                                                                                                    TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                                                    if (textView5 != null) {
                                                                                                        i10 = R$id.vs_forward;
                                                                                                        ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                        if (viewStub != null) {
                                                                                                            i10 = R$id.vs_forward_guide;
                                                                                                            ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                                                                            if (viewStub2 != null) {
                                                                                                                return new k((ConstraintLayout) view, appCompatImageView, eVarA, constraintLayout, frameLayout, frameLayout2, frameLayout3, group, shapeableImageView, appCompatImageView2, appCompatImageView3, appCompatTextView, appCompatImageView4, immScaleView, viewA2, viewA3, linearLayout, longVodResolutionMemberTipView, fVarA, secondariesSeekBar, textView, textView2, textView3, appCompatTextView2, appCompatTextView3, textView4, immSpeedView, viewA5, viewA6, frameLayout4, textView5, viewStub, viewStub2);
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
        return this.f66597a;
    }
}

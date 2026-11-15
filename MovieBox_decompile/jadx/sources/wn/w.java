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
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.LocalVideoMiddleHeaderView;
import com.transsion.publish.view.PublishStateView;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class w implements f4.a {
    public final TextView A;
    public final AppCompatTextView B;
    public final TextView C;
    public final TextView D;
    public final TextView E;
    public final View F;
    public final SimpleSubtitleView G;
    public final SimpleSubtitleView H;
    public final LinearLayout I;
    public final AppCompatTextView J;
    public final AppCompatImageView K;
    public final Group L;
    public final AppCompatImageView M;
    public final AppCompatImageView N;
    public final SecondariesSeekBar O;
    public final LinearLayout P;
    public final TextView Q;
    public final FrameLayout R;
    public final View S;
    public final ViewStub T;
    public final ViewStub U;
    public final ViewStub V;

    private final ConstraintLayout f74614a;

    public final AppBarLayout f74615b;

    public final CoordinatorLayout f74616c;

    public final FrameLayout f74617d;

    public final FrameLayout f74618e;

    public final FrameLayout f74619f;

    public final FrameLayout f74620g;

    public final LinearLayoutCompat f74621h;

    public final View f74622i;

    public final AppCompatImageView f74623j;

    public final AppCompatImageView f74624k;

    public final PublishStateView f74625l;

    public final View f74626m;

    public final View f74627n;

    public final tn.a f74628o;

    public final jt.j f74629p;

    public final MagicIndicator f74630q;

    public final ConstraintLayout f74631r;

    public final NativeCardPageView f74632s;

    public final ViewPager2 f74633t;

    public final LocalVideoMiddleHeaderView f74634u;

    public final FrameLayout f74635v;

    public final CollapsingToolbarLayout f74636w;

    public final TextView f74637x;

    public final TextView f74638y;

    public final TextView f74639z;

    private w(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, LinearLayoutCompat linearLayoutCompat, View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, PublishStateView publishStateView, View view2, View view3, tn.a aVar, jt.j jVar, MagicIndicator magicIndicator, ConstraintLayout constraintLayout2, NativeCardPageView nativeCardPageView, ViewPager2 viewPager2, LocalVideoMiddleHeaderView localVideoMiddleHeaderView, FrameLayout frameLayout5, CollapsingToolbarLayout collapsingToolbarLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView, TextView textView5, TextView textView6, TextView textView7, View view4, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, LinearLayout linearLayout, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView3, Group group, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, SecondariesSeekBar secondariesSeekBar, LinearLayout linearLayout2, TextView textView8, FrameLayout frameLayout6, View view5, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3) {
        this.f74614a = constraintLayout;
        this.f74615b = appBarLayout;
        this.f74616c = coordinatorLayout;
        this.f74617d = frameLayout;
        this.f74618e = frameLayout2;
        this.f74619f = frameLayout3;
        this.f74620g = frameLayout4;
        this.f74621h = linearLayoutCompat;
        this.f74622i = view;
        this.f74623j = appCompatImageView;
        this.f74624k = appCompatImageView2;
        this.f74625l = publishStateView;
        this.f74626m = view2;
        this.f74627n = view3;
        this.f74628o = aVar;
        this.f74629p = jVar;
        this.f74630q = magicIndicator;
        this.f74631r = constraintLayout2;
        this.f74632s = nativeCardPageView;
        this.f74633t = viewPager2;
        this.f74634u = localVideoMiddleHeaderView;
        this.f74635v = frameLayout5;
        this.f74636w = collapsingToolbarLayout;
        this.f74637x = textView;
        this.f74638y = textView2;
        this.f74639z = textView3;
        this.A = textView4;
        this.B = appCompatTextView;
        this.C = textView5;
        this.D = textView6;
        this.E = textView7;
        this.F = view4;
        this.G = simpleSubtitleView;
        this.H = simpleSubtitleView2;
        this.I = linearLayout;
        this.J = appCompatTextView2;
        this.K = appCompatImageView3;
        this.L = group;
        this.M = appCompatImageView4;
        this.N = appCompatImageView5;
        this.O = secondariesSeekBar;
        this.P = linearLayout2;
        this.Q = textView8;
        this.R = frameLayout6;
        this.S = view5;
        this.T = viewStub;
        this.U = viewStub2;
        this.V = viewStub3;
    }

    public static w a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        View viewA6;
        int i10 = R$id.appBar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.cdl;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
            if (coordinatorLayout != null) {
                i10 = R$id.fl_content_loading;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.fl_download_tips;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.flRootSubtitle;
                        FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout3 != null) {
                            i10 = R$id.fl_series_list_container;
                            FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout4 != null) {
                                i10 = R$id.flSubtitle;
                                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                if (linearLayoutCompat != null && (viewA = f4.b.a(view, (i10 = R$id.guideline))) != null) {
                                    i10 = R$id.iv_feedback;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView != null) {
                                        i10 = R$id.iv_float;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView2 != null) {
                                            i10 = R$id.ivPublish;
                                            PublishStateView publishStateView = (PublishStateView) f4.b.a(view, i10);
                                            if (publishStateView != null && (viewA2 = f4.b.a(view, (i10 = R$id.land_view1))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.land_view2))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.layout_bv))) != null) {
                                                tn.a aVarA = tn.a.a(viewA4);
                                                i10 = R$id.layout_sync_adjust;
                                                View viewA7 = f4.b.a(view, i10);
                                                if (viewA7 != null) {
                                                    jt.j jVarA = jt.j.a(viewA7);
                                                    i10 = R$id.magic_indicator;
                                                    MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                                    if (magicIndicator != null) {
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                        i10 = R$id.nativeSlideshowView;
                                                        NativeCardPageView nativeCardPageView = (NativeCardPageView) f4.b.a(view, i10);
                                                        if (nativeCardPageView != null) {
                                                            i10 = R$id.rec_view_pager;
                                                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                            if (viewPager2 != null) {
                                                                i10 = R$id.resourceHeaderView;
                                                                LocalVideoMiddleHeaderView localVideoMiddleHeaderView = (LocalVideoMiddleHeaderView) f4.b.a(view, i10);
                                                                if (localVideoMiddleHeaderView != null) {
                                                                    i10 = R$id.subjectDetailLayout;
                                                                    FrameLayout frameLayout5 = (FrameLayout) f4.b.a(view, i10);
                                                                    if (frameLayout5 != null) {
                                                                        i10 = R$id.toolbar_layout;
                                                                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                                        if (collapsingToolbarLayout != null) {
                                                                            i10 = R$id.tv_download_btn;
                                                                            TextView textView = (TextView) f4.b.a(view, i10);
                                                                            if (textView != null) {
                                                                                i10 = R$id.tv_download_tips;
                                                                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                                if (textView2 != null) {
                                                                                    i10 = R$id.tvHelpTip;
                                                                                    TextView textView3 = (TextView) f4.b.a(view, i10);
                                                                                    if (textView3 != null) {
                                                                                        i10 = R$id.tv_loading;
                                                                                        TextView textView4 = (TextView) f4.b.a(view, i10);
                                                                                        if (textView4 != null) {
                                                                                            i10 = R$id.tvPressSpeed;
                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView != null) {
                                                                                                i10 = R$id.tv_speed;
                                                                                                TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                                                if (textView5 != null) {
                                                                                                    i10 = R$id.tv_toast_1;
                                                                                                    TextView textView6 = (TextView) f4.b.a(view, i10);
                                                                                                    if (textView6 != null) {
                                                                                                        i10 = R$id.tv_toast_2;
                                                                                                        TextView textView7 = (TextView) f4.b.a(view, i10);
                                                                                                        if (textView7 != null && (viewA5 = f4.b.a(view, (i10 = R$id.v_gesture))) != null) {
                                                                                                            i10 = R$id.vSubtitleBottom;
                                                                                                            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                            if (simpleSubtitleView != null) {
                                                                                                                i10 = R$id.vSubtitleTop;
                                                                                                                SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                                if (simpleSubtitleView2 != null) {
                                                                                                                    i10 = R$id.vd_land_bottom_controller;
                                                                                                                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                                                                                    if (linearLayout != null) {
                                                                                                                        i10 = R$id.vd_land_center_progress;
                                                                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                        if (appCompatTextView2 != null) {
                                                                                                                            i10 = R$id.vd_land_iv_back;
                                                                                                                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                                                            if (appCompatImageView3 != null) {
                                                                                                                                i10 = R$id.vd_land_toolbar;
                                                                                                                                Group group = (Group) f4.b.a(view, i10);
                                                                                                                                if (group != null) {
                                                                                                                                    i10 = R$id.vd_pause;
                                                                                                                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                                                                    if (appCompatImageView4 != null) {
                                                                                                                                        i10 = R$id.vd_screen_change;
                                                                                                                                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                                                                        if (appCompatImageView5 != null) {
                                                                                                                                            i10 = R$id.vd_seekbar;
                                                                                                                                            SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                                                                                                                            if (secondariesSeekBar != null) {
                                                                                                                                                i10 = R$id.vd_surface_loading;
                                                                                                                                                LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                                                                                                                                if (linearLayout2 != null) {
                                                                                                                                                    i10 = R$id.vd_video_time;
                                                                                                                                                    TextView textView8 = (TextView) f4.b.a(view, i10);
                                                                                                                                                    if (textView8 != null) {
                                                                                                                                                        i10 = R$id.video_land_surface;
                                                                                                                                                        FrameLayout frameLayout6 = (FrameLayout) f4.b.a(view, i10);
                                                                                                                                                        if (frameLayout6 != null && (viewA6 = f4.b.a(view, (i10 = R$id.video_middle_player_bg))) != null) {
                                                                                                                                                            i10 = R$id.vs_forward_middle;
                                                                                                                                                            ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                            if (viewStub != null) {
                                                                                                                                                                i10 = R$id.vs_load_failed;
                                                                                                                                                                ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                                if (viewStub2 != null) {
                                                                                                                                                                    i10 = R$id.vs_replay;
                                                                                                                                                                    ViewStub viewStub3 = (ViewStub) f4.b.a(view, i10);
                                                                                                                                                                    if (viewStub3 != null) {
                                                                                                                                                                        return new w(constraintLayout, appBarLayout, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, linearLayoutCompat, viewA, appCompatImageView, appCompatImageView2, publishStateView, viewA2, viewA3, aVarA, jVarA, magicIndicator, constraintLayout, nativeCardPageView, viewPager2, localVideoMiddleHeaderView, frameLayout5, collapsingToolbarLayout, textView, textView2, textView3, textView4, appCompatTextView, textView5, textView6, textView7, viewA5, simpleSubtitleView, simpleSubtitleView2, linearLayout, appCompatTextView2, appCompatImageView3, group, appCompatImageView4, appCompatImageView5, secondariesSeekBar, linearLayout2, textView8, frameLayout6, viewA6, viewStub, viewStub2, viewStub3);
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
        return this.f74614a;
    }
}

package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.tn.lib.view.NoTouchToolBar;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.widget.MyRoomView;
import com.transsion.wrapperad.view.NativeSlideshowView;

public final class j0 implements f4.a {
    public final NativeSlideshowView A;
    public final LinearLayoutCompat B;
    public final View C;
    public final View D;
    public final TabLayout E;
    public final NoTouchToolBar F;
    public final ConstraintLayout G;
    public final TnTextView H;
    public final TnTextView I;
    public final TnTextView J;
    public final TnTextView K;
    public final TnTextView L;
    public final TnTextView M;
    public final AppCompatTextView N;
    public final View O;
    public final AppCompatImageView P;
    public final View Q;
    public final View R;
    public final ViewPager2 S;
    public final View T;
    public final View U;
    public final View V;
    public final View W;
    public final View X;
    public final View Y;

    private final LinearLayoutCompat f75612a;

    public final AppBarLayout f75613b;

    public final AppCompatImageView f75614c;

    public final CollapsingToolbarLayout f75615d;

    public final View f75616e;

    public final r0 f75617f;

    public final ShapeableImageView f75618g;

    public final AppCompatImageView f75619h;

    public final TnTextView f75620i;

    public final AppCompatImageView f75621j;

    public final AppCompatImageView f75622k;

    public final AppCompatImageView f75623l;

    public final AppCompatImageView f75624m;

    public final AppCompatImageView f75625n;

    public final AppCompatImageView f75626o;

    public final AppCompatImageView f75627p;

    public final AppCompatImageView f75628q;

    public final ShapeableImageView f75629r;

    public final AppCompatImageView f75630s;

    public final AppCompatImageView f75631t;

    public final LinearLayoutCompat f75632u;

    public final LinearLayoutCompat f75633v;

    public final LinearLayoutCompat f75634w;

    public final MyRoomView f75635x;

    public final MyRoomView f75636y;

    public final MyRoomView f75637z;

    private j0(LinearLayoutCompat linearLayoutCompat, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, CollapsingToolbarLayout collapsingToolbarLayout, View view, r0 r0Var, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, TnTextView tnTextView, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, AppCompatImageView appCompatImageView7, AppCompatImageView appCompatImageView8, AppCompatImageView appCompatImageView9, AppCompatImageView appCompatImageView10, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView11, AppCompatImageView appCompatImageView12, LinearLayoutCompat linearLayoutCompat2, LinearLayoutCompat linearLayoutCompat3, LinearLayoutCompat linearLayoutCompat4, MyRoomView myRoomView, MyRoomView myRoomView2, MyRoomView myRoomView3, NativeSlideshowView nativeSlideshowView, LinearLayoutCompat linearLayoutCompat5, View view2, View view3, TabLayout tabLayout, NoTouchToolBar noTouchToolBar, ConstraintLayout constraintLayout, TnTextView tnTextView2, TnTextView tnTextView3, TnTextView tnTextView4, TnTextView tnTextView5, TnTextView tnTextView6, TnTextView tnTextView7, AppCompatTextView appCompatTextView, View view4, AppCompatImageView appCompatImageView13, View view5, View view6, ViewPager2 viewPager2, View view7, View view8, View view9, View view10, View view11, View view12) {
        this.f75612a = linearLayoutCompat;
        this.f75613b = appBarLayout;
        this.f75614c = appCompatImageView;
        this.f75615d = collapsingToolbarLayout;
        this.f75616e = view;
        this.f75617f = r0Var;
        this.f75618g = shapeableImageView;
        this.f75619h = appCompatImageView2;
        this.f75620i = tnTextView;
        this.f75621j = appCompatImageView3;
        this.f75622k = appCompatImageView4;
        this.f75623l = appCompatImageView5;
        this.f75624m = appCompatImageView6;
        this.f75625n = appCompatImageView7;
        this.f75626o = appCompatImageView8;
        this.f75627p = appCompatImageView9;
        this.f75628q = appCompatImageView10;
        this.f75629r = shapeableImageView2;
        this.f75630s = appCompatImageView11;
        this.f75631t = appCompatImageView12;
        this.f75632u = linearLayoutCompat2;
        this.f75633v = linearLayoutCompat3;
        this.f75634w = linearLayoutCompat4;
        this.f75635x = myRoomView;
        this.f75636y = myRoomView2;
        this.f75637z = myRoomView3;
        this.A = nativeSlideshowView;
        this.B = linearLayoutCompat5;
        this.C = view2;
        this.D = view3;
        this.E = tabLayout;
        this.F = noTouchToolBar;
        this.G = constraintLayout;
        this.H = tnTextView2;
        this.I = tnTextView3;
        this.J = tnTextView4;
        this.K = tnTextView5;
        this.L = tnTextView6;
        this.M = tnTextView7;
        this.N = appCompatTextView;
        this.O = view4;
        this.P = appCompatImageView13;
        this.Q = view5;
        this.R = view6;
        this.S = viewPager2;
        this.T = view7;
        this.U = view8;
        this.V = view9;
        this.W = view10;
        this.X = view11;
        this.Y = view12;
    }

    public static j0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        View viewA6;
        View viewA7;
        View viewA8;
        View viewA9;
        View viewA10;
        View viewA11;
        View viewA12;
        View viewA13;
        int i10 = R$id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.area1_bg;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.collapsing;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                if (collapsingToolbarLayout != null && (viewA = f4.b.a(view, (i10 = R$id.divider))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.entranceLayout))) != null) {
                    r0 r0VarA = r0.a(viewA2);
                    i10 = R$id.iv_avatar;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView != null) {
                        i10 = R$id.iv_back;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.iv_back_black;
                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView != null) {
                                i10 = R$id.iv_more;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView3 != null) {
                                    i10 = R$id.iv_more_blank;
                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView4 != null) {
                                        i10 = R$id.iv_notice;
                                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView5 != null) {
                                            i10 = R$id.iv_notice_blank;
                                            AppCompatImageView appCompatImageView6 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView6 != null) {
                                                i10 = R$id.iv_qr_code;
                                                AppCompatImageView appCompatImageView7 = (AppCompatImageView) f4.b.a(view, i10);
                                                if (appCompatImageView7 != null) {
                                                    i10 = R$id.iv_qr_code_blank;
                                                    AppCompatImageView appCompatImageView8 = (AppCompatImageView) f4.b.a(view, i10);
                                                    if (appCompatImageView8 != null) {
                                                        i10 = R$id.iv_setting;
                                                        AppCompatImageView appCompatImageView9 = (AppCompatImageView) f4.b.a(view, i10);
                                                        if (appCompatImageView9 != null) {
                                                            i10 = R$id.iv_setting_blank;
                                                            AppCompatImageView appCompatImageView10 = (AppCompatImageView) f4.b.a(view, i10);
                                                            if (appCompatImageView10 != null) {
                                                                i10 = R$id.iv_title_avatar;
                                                                ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                                                                if (shapeableImageView2 != null) {
                                                                    i10 = R$id.iv_update;
                                                                    AppCompatImageView appCompatImageView11 = (AppCompatImageView) f4.b.a(view, i10);
                                                                    if (appCompatImageView11 != null) {
                                                                        i10 = R$id.iv_update_blank;
                                                                        AppCompatImageView appCompatImageView12 = (AppCompatImageView) f4.b.a(view, i10);
                                                                        if (appCompatImageView12 != null) {
                                                                            i10 = R$id.llBlock;
                                                                            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                                                                            if (linearLayoutCompat != null) {
                                                                                LinearLayoutCompat linearLayoutCompat2 = (LinearLayoutCompat) view;
                                                                                i10 = R$id.llTopLayout;
                                                                                LinearLayoutCompat linearLayoutCompat3 = (LinearLayoutCompat) f4.b.a(view, i10);
                                                                                if (linearLayoutCompat3 != null) {
                                                                                    i10 = R$id.myRoomView1;
                                                                                    MyRoomView myRoomView = (MyRoomView) f4.b.a(view, i10);
                                                                                    if (myRoomView != null) {
                                                                                        i10 = R$id.myRoomView2;
                                                                                        MyRoomView myRoomView2 = (MyRoomView) f4.b.a(view, i10);
                                                                                        if (myRoomView2 != null) {
                                                                                            i10 = R$id.myRoomView3;
                                                                                            MyRoomView myRoomView3 = (MyRoomView) f4.b.a(view, i10);
                                                                                            if (myRoomView3 != null) {
                                                                                                i10 = R$id.nativeSlideshowView;
                                                                                                NativeSlideshowView nativeSlideshowView = (NativeSlideshowView) f4.b.a(view, i10);
                                                                                                if (nativeSlideshowView != null) {
                                                                                                    i10 = R$id.scroll_area2;
                                                                                                    LinearLayoutCompat linearLayoutCompat4 = (LinearLayoutCompat) f4.b.a(view, i10);
                                                                                                    if (linearLayoutCompat4 != null && (viewA3 = f4.b.a(view, (i10 = R$id.setting_blank_red_tips))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.setting_red_tips))) != null) {
                                                                                                        i10 = R$id.tabs;
                                                                                                        TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                                                                                                        if (tabLayout != null) {
                                                                                                            i10 = R$id.toolbar;
                                                                                                            NoTouchToolBar noTouchToolBar = (NoTouchToolBar) f4.b.a(view, i10);
                                                                                                            if (noTouchToolBar != null) {
                                                                                                                i10 = R$id.top_layout;
                                                                                                                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                                                                                                if (constraintLayout != null) {
                                                                                                                    i10 = R$id.tvBlocked;
                                                                                                                    TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                                                                                                                    if (tnTextView2 != null) {
                                                                                                                        i10 = R$id.tv_edit;
                                                                                                                        TnTextView tnTextView3 = (TnTextView) f4.b.a(view, i10);
                                                                                                                        if (tnTextView3 != null) {
                                                                                                                            i10 = R$id.tv_gender;
                                                                                                                            TnTextView tnTextView4 = (TnTextView) f4.b.a(view, i10);
                                                                                                                            if (tnTextView4 != null) {
                                                                                                                                i10 = R$id.tv_login;
                                                                                                                                TnTextView tnTextView5 = (TnTextView) f4.b.a(view, i10);
                                                                                                                                if (tnTextView5 != null) {
                                                                                                                                    i10 = R$id.tv_title_user_name;
                                                                                                                                    TnTextView tnTextView6 = (TnTextView) f4.b.a(view, i10);
                                                                                                                                    if (tnTextView6 != null) {
                                                                                                                                        i10 = R$id.tv_user_id;
                                                                                                                                        TnTextView tnTextView7 = (TnTextView) f4.b.a(view, i10);
                                                                                                                                        if (tnTextView7 != null) {
                                                                                                                                            i10 = R$id.tv_user_name;
                                                                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                            if (appCompatTextView != null && (viewA5 = f4.b.a(view, (i10 = R$id.update_blank_red_tips))) != null) {
                                                                                                                                                i10 = R$id.update_red_tips;
                                                                                                                                                AppCompatImageView appCompatImageView13 = (AppCompatImageView) f4.b.a(view, i10);
                                                                                                                                                if (appCompatImageView13 != null && (viewA6 = f4.b.a(view, (i10 = R$id.v_area2_bg))) != null && (viewA7 = f4.b.a(view, (i10 = R$id.viewLine))) != null) {
                                                                                                                                                    i10 = R$id.view_pager;
                                                                                                                                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                                                                                                    if (viewPager2 != null && (viewA8 = f4.b.a(view, (i10 = R$id.viewPlaceholder1))) != null && (viewA9 = f4.b.a(view, (i10 = R$id.viewPlaceholder2))) != null && (viewA10 = f4.b.a(view, (i10 = R$id.viewPlaceholder3))) != null && (viewA11 = f4.b.a(view, (i10 = R$id.view_red))) != null && (viewA12 = f4.b.a(view, (i10 = R$id.view_red_blank))) != null && (viewA13 = f4.b.a(view, (i10 = R$id.viewTheCover))) != null) {
                                                                                                                                                        return new j0(linearLayoutCompat2, appBarLayout, appCompatImageView, collapsingToolbarLayout, viewA, r0VarA, shapeableImageView, appCompatImageView2, tnTextView, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, appCompatImageView7, appCompatImageView8, appCompatImageView9, appCompatImageView10, shapeableImageView2, appCompatImageView11, appCompatImageView12, linearLayoutCompat, linearLayoutCompat2, linearLayoutCompat3, myRoomView, myRoomView2, myRoomView3, nativeSlideshowView, linearLayoutCompat4, viewA3, viewA4, tabLayout, noTouchToolBar, constraintLayout, tnTextView2, tnTextView3, tnTextView4, tnTextView5, tnTextView6, tnTextView7, appCompatTextView, viewA5, appCompatImageView13, viewA6, viewA7, viewPager2, viewA8, viewA9, viewA10, viewA11, viewA12, viewA13);
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

    public static j0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_profile, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75612a;
    }
}

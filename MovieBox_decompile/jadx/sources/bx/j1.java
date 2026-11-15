package bx;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLView;
import com.transsnet.downloader.R$id;

public final class j1 implements f4.a {

    private final View f16106a;

    public final View f16107b;

    public final FrameLayout f16108c;

    public final Group f16109d;

    public final Group f16110e;

    public final Group f16111f;

    public final Group f16112g;

    public final AppCompatImageView f16113h;

    public final AppCompatImageView f16114i;

    public final AppCompatImageView f16115j;

    public final AppCompatImageView f16116k;

    public final ProgressBar f16117l;

    public final View f16118m;

    public final AppCompatTextView f16119n;

    public final AppCompatTextView f16120o;

    public final AppCompatTextView f16121p;

    public final AppCompatTextView f16122q;

    public final AppCompatTextView f16123r;

    public final AppCompatTextView f16124s;

    public final AppCompatTextView f16125t;

    public final AppCompatTextView f16126u;

    public final AppCompatTextView f16127v;

    public final View f16128w;

    public final View f16129x;

    public final View f16130y;

    public final BLView f16131z;

    private j1(View view, View view2, FrameLayout frameLayout, Group group, Group group2, Group group3, Group group4, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ProgressBar progressBar, View view3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, View view4, View view5, View view6, BLView bLView) {
        this.f16106a = view;
        this.f16107b = view2;
        this.f16108c = frameLayout;
        this.f16109d = group;
        this.f16110e = group2;
        this.f16111f = group3;
        this.f16112g = group4;
        this.f16113h = appCompatImageView;
        this.f16114i = appCompatImageView2;
        this.f16115j = appCompatImageView3;
        this.f16116k = appCompatImageView4;
        this.f16117l = progressBar;
        this.f16118m = view3;
        this.f16119n = appCompatTextView;
        this.f16120o = appCompatTextView2;
        this.f16121p = appCompatTextView3;
        this.f16122q = appCompatTextView4;
        this.f16123r = appCompatTextView5;
        this.f16124s = appCompatTextView6;
        this.f16125t = appCompatTextView7;
        this.f16126u = appCompatTextView8;
        this.f16127v = appCompatTextView9;
        this.f16128w = view4;
        this.f16129x = view5;
        this.f16130y = view6;
        this.f16131z = bLView;
    }

    public static j1 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        int i10 = R$id.bottom_guideline;
        View viewA5 = f4.b.a(view, i10);
        if (viewA5 != null) {
            i10 = R$id.fl_send;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.group_def;
                Group group = (Group) f4.b.a(view, i10);
                if (group != null) {
                    i10 = R$id.group_list;
                    Group group2 = (Group) f4.b.a(view, i10);
                    if (group2 != null) {
                        i10 = R$id.group_send;
                        Group group3 = (Group) f4.b.a(view, i10);
                        if (group3 != null) {
                            i10 = R$id.group_top_connect;
                            Group group4 = (Group) f4.b.a(view, i10);
                            if (group4 != null) {
                                i10 = R$id.iv_close;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView != null) {
                                    i10 = R$id.iv_reset;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView2 != null) {
                                        i10 = R$id.iv_send_list;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView3 != null) {
                                            i10 = R$id.iv_top_icon;
                                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView4 != null) {
                                                i10 = R$id.pb_loading;
                                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                if (progressBar != null && (viewA = f4.b.a(view, (i10 = R$id.top_guideline))) != null) {
                                                    i10 = R$id.tv_close;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView != null) {
                                                        i10 = R$id.tv_receive_def;
                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView2 != null) {
                                                            i10 = R$id.tv_reset;
                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView3 != null) {
                                                                i10 = R$id.tv_send;
                                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView4 != null) {
                                                                    i10 = R$id.tv_send_def;
                                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView5 != null) {
                                                                        i10 = R$id.tv_send_list_count;
                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView6 != null) {
                                                                            i10 = R$id.tv_send_list_tips;
                                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                            if (appCompatTextView7 != null) {
                                                                                i10 = R$id.tv_top_disconnect;
                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                if (appCompatTextView8 != null) {
                                                                                    i10 = R$id.tv_top_phone_model;
                                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView9 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_receive_def))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_send))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.v_send_def))) != null) {
                                                                                        i10 = R$id.v_top_bg;
                                                                                        BLView bLView = (BLView) f4.b.a(view, i10);
                                                                                        if (bLView != null) {
                                                                                            return new j1(view, viewA5, frameLayout, group, group2, group3, group4, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, progressBar, viewA, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, viewA2, viewA3, viewA4, bLView);
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
        return this.f16106a;
    }
}

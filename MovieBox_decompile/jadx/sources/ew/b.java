package ew;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.videofloat.R$id;

public final class b implements f4.a {

    private final View f59829a;

    public final FrameLayout f59830b;

    public final Group f59831c;

    public final AppCompatImageView f59832d;

    public final AppCompatImageView f59833e;

    public final AppCompatImageView f59834f;

    public final AppCompatImageView f59835g;

    public final AppCompatImageView f59836h;

    public final SimpleSubtitleView f59837i;

    public final View f59838j;

    private b(View view, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, SimpleSubtitleView simpleSubtitleView, View view2) {
        this.f59829a = view;
        this.f59830b = frameLayout;
        this.f59831c = group;
        this.f59832d = appCompatImageView;
        this.f59833e = appCompatImageView2;
        this.f59834f = appCompatImageView3;
        this.f59835g = appCompatImageView4;
        this.f59836h = appCompatImageView5;
        this.f59837i = simpleSubtitleView;
        this.f59838j = view2;
    }

    public static b a(View view) {
        View viewA;
        int i10 = R$id.fl_player_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.group_control;
            Group group = (Group) f4.b.a(view, i10);
            if (group != null) {
                i10 = R$id.iv_backward;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.iv_close;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.iv_forward;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView3 != null) {
                            i10 = R$id.iv_full;
                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView4 != null) {
                                i10 = R$id.iv_play;
                                AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView5 != null) {
                                    i10 = R$id.v_subtitle;
                                    SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                    if (simpleSubtitleView != null && (viewA = f4.b.a(view, (i10 = R$id.v_trans_float))) != null) {
                                        return new b(view, frameLayout, group, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, simpleSubtitleView, viewA);
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
        return this.f59829a;
    }
}

package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class o implements f4.a {

    private final ConstraintLayout f60396a;

    public final AppBarLayout f60397b;

    public final ConstraintLayout f60398c;

    public final ExpandView f60399d;

    public final FrameLayout f60400e;

    public final Group f60401f;

    public final AppCompatImageView f60402g;

    public final AppCompatImageView f60403h;

    public final ShapeableImageView f60404i;

    public final AppCompatImageView f60405j;

    public final ImageView f60406k;

    public final LinearLayout f60407l;

    public final MagicIndicator f60408m;

    public final PileLayout f60409n;

    public final AppCompatTextView f60410o;

    public final GradientTextView f60411p;

    public final AppCompatTextView f60412q;

    public final RoomJoinAnimationView f60413r;

    public final View f60414s;

    public final ViewPager2 f60415t;

    private o(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, ConstraintLayout constraintLayout2, ExpandView expandView, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView3, ImageView imageView, LinearLayout linearLayout, MagicIndicator magicIndicator, PileLayout pileLayout, AppCompatTextView appCompatTextView, GradientTextView gradientTextView, AppCompatTextView appCompatTextView2, RoomJoinAnimationView roomJoinAnimationView, View view, ViewPager2 viewPager2) {
        this.f60396a = constraintLayout;
        this.f60397b = appBarLayout;
        this.f60398c = constraintLayout2;
        this.f60399d = expandView;
        this.f60400e = frameLayout;
        this.f60401f = group;
        this.f60402g = appCompatImageView;
        this.f60403h = appCompatImageView2;
        this.f60404i = shapeableImageView;
        this.f60405j = appCompatImageView3;
        this.f60406k = imageView;
        this.f60407l = linearLayout;
        this.f60408m = magicIndicator;
        this.f60409n = pileLayout;
        this.f60410o = appCompatTextView;
        this.f60411p = gradientTextView;
        this.f60412q = appCompatTextView2;
        this.f60413r = roomJoinAnimationView;
        this.f60414s = view;
        this.f60415t = viewPager2;
    }

    public static o a(View view) {
        View viewA;
        int i10 = R$id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.cl_top_content;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.ev_room_des;
                ExpandView expandView = (ExpandView) f4.b.a(view, i10);
                if (expandView != null) {
                    i10 = R$id.fl_tab;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
                        i10 = R$id.group_member;
                        Group group = (Group) f4.b.a(view, i10);
                        if (group != null) {
                            i10 = R$id.iv_back;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.iv_publish;
                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView2 != null) {
                                    i10 = R$id.iv_room_cover;
                                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                    if (shapeableImageView != null) {
                                        i10 = R$id.iv_share;
                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView3 != null) {
                                            i10 = R$id.iv_top_bg;
                                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                                            if (imageView != null) {
                                                i10 = R$id.ll_header_root;
                                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                if (linearLayout != null) {
                                                    i10 = R$id.magic_indicator;
                                                    MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                                    if (magicIndicator != null) {
                                                        i10 = R$id.pl_member_ic;
                                                        PileLayout pileLayout = (PileLayout) f4.b.a(view, i10);
                                                        if (pileLayout != null) {
                                                            i10 = R$id.tv_member;
                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView != null) {
                                                                i10 = R$id.tv_post;
                                                                GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                                                if (gradientTextView != null) {
                                                                    i10 = R$id.tv_title;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView2 != null) {
                                                                        i10 = R$id.v_join;
                                                                        RoomJoinAnimationView roomJoinAnimationView = (RoomJoinAnimationView) f4.b.a(view, i10);
                                                                        if (roomJoinAnimationView != null && (viewA = f4.b.a(view, (i10 = R$id.v_title_bar_bg))) != null) {
                                                                            i10 = R$id.view_pager;
                                                                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                            if (viewPager2 != null) {
                                                                                return new o((ConstraintLayout) view, appBarLayout, constraintLayout, expandView, frameLayout, group, appCompatImageView, appCompatImageView2, shapeableImageView, appCompatImageView3, imageView, linearLayout, magicIndicator, pileLayout, appCompatTextView, gradientTextView, appCompatTextView2, roomJoinAnimationView, viewA, viewPager2);
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

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_detail_new, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60396a;
    }
}

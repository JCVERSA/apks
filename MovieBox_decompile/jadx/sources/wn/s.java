package wn;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.tn.lib.view.NoScrollRecyclerView2;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.postdetail.R$id;

public final class s implements f4.a {
    public final View A;
    public final View B;
    public final View C;
    public final View D;
    public final View E;
    public final View F;
    public final View G;
    public final BLView H;
    public final BLView I;

    private final View f74530a;

    public final BLConstraintLayout f74531b;

    public final ShapeableImageView f74532c;

    public final FrameLayout f74533d;

    public final FrameLayout f74534e;

    public final ShapeableImageView f74535f;

    public final AppCompatImageView f74536g;

    public final AppCompatImageView f74537h;

    public final AppCompatImageView f74538i;

    public final AppCompatImageView f74539j;

    public final ShapeableImageView f74540k;

    public final ShapeableImageView f74541l;

    public final ShapeableImageView f74542m;

    public final z f74543n;

    public final b0 f74544o;

    public final NoScrollRecyclerView2 f74545p;

    public final AppCompatTextView f74546q;

    public final GradientTextView f74547r;

    public final AppCompatTextView f74548s;

    public final AppCompatTextView f74549t;

    public final AppCompatTextView f74550u;

    public final AppCompatTextView f74551v;

    public final AppCompatTextView f74552w;

    public final AppCompatTextView f74553x;

    public final AppCompatTextView f74554y;

    public final AppCompatTextView f74555z;

    private s(View view, BLConstraintLayout bLConstraintLayout, ShapeableImageView shapeableImageView, FrameLayout frameLayout, FrameLayout frameLayout2, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ShapeableImageView shapeableImageView3, ShapeableImageView shapeableImageView4, ShapeableImageView shapeableImageView5, z zVar, b0 b0Var, NoScrollRecyclerView2 noScrollRecyclerView2, AppCompatTextView appCompatTextView, GradientTextView gradientTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, View view2, View view3, View view4, View view5, View view6, View view7, View view8, BLView bLView, BLView bLView2) {
        this.f74530a = view;
        this.f74531b = bLConstraintLayout;
        this.f74532c = shapeableImageView;
        this.f74533d = frameLayout;
        this.f74534e = frameLayout2;
        this.f74535f = shapeableImageView2;
        this.f74536g = appCompatImageView;
        this.f74537h = appCompatImageView2;
        this.f74538i = appCompatImageView3;
        this.f74539j = appCompatImageView4;
        this.f74540k = shapeableImageView3;
        this.f74541l = shapeableImageView4;
        this.f74542m = shapeableImageView5;
        this.f74543n = zVar;
        this.f74544o = b0Var;
        this.f74545p = noScrollRecyclerView2;
        this.f74546q = appCompatTextView;
        this.f74547r = gradientTextView;
        this.f74548s = appCompatTextView2;
        this.f74549t = appCompatTextView3;
        this.f74550u = appCompatTextView4;
        this.f74551v = appCompatTextView5;
        this.f74552w = appCompatTextView6;
        this.f74553x = appCompatTextView7;
        this.f74554y = appCompatTextView8;
        this.f74555z = appCompatTextView9;
        this.A = view2;
        this.B = view3;
        this.C = view4;
        this.D = view5;
        this.E = view6;
        this.F = view7;
        this.G = view8;
        this.H = bLView;
        this.I = bLView2;
    }

    public static s a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        View viewA6;
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, R$id.clHotComment);
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, R$id.commentCover);
        int i10 = R$id.fl_content;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.fl_cover;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, R$id.ivHotCommentAvatar);
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, R$id.ivHotCommentIcon);
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, R$id.ivHotLike);
                i10 = R$id.iv_location_icon;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.iv_post_download;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView4 != null) {
                        i10 = R$id.iv_room_cover;
                        ShapeableImageView shapeableImageView3 = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView3 != null) {
                            i10 = R$id.iv_user_avatar;
                            ShapeableImageView shapeableImageView4 = (ShapeableImageView) f4.b.a(view, i10);
                            if (shapeableImageView4 != null) {
                                i10 = R$id.iv_user_avatar_2;
                                ShapeableImageView shapeableImageView5 = (ShapeableImageView) f4.b.a(view, i10);
                                if (shapeableImageView5 != null && (viewA = f4.b.a(view, (i10 = R$id.layout_bottom_module))) != null) {
                                    z zVarA = z.a(viewA);
                                    i10 = R$id.layout_content_video;
                                    View viewA7 = f4.b.a(view, i10);
                                    if (viewA7 != null) {
                                        b0 b0VarA = b0.a(viewA7);
                                        i10 = R$id.recycler_view_post;
                                        NoScrollRecyclerView2 noScrollRecyclerView2 = (NoScrollRecyclerView2) f4.b.a(view, i10);
                                        if (noScrollRecyclerView2 != null) {
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, R$id.tvHotCommentContent);
                                            GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, R$id.tvHotCommentTitle);
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, R$id.tvHotLikeCount);
                                            i10 = R$id.tv_post_comment;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView3 != null) {
                                                i10 = R$id.tv_post_content;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView4 != null) {
                                                    i10 = R$id.tv_post_date;
                                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView5 != null) {
                                                        i10 = R$id.tv_post_like;
                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView6 != null) {
                                                            i10 = R$id.tv_post_share;
                                                            AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView7 != null) {
                                                                i10 = R$id.tv_room_name;
                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView8 != null) {
                                                                    i10 = R$id.tv_user_name_or_location;
                                                                    AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView9 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_bottom_line))) != null) {
                                                                        View viewA8 = f4.b.a(view, R$id.vHotLike);
                                                                        i10 = R$id.v_location_line;
                                                                        View viewA9 = f4.b.a(view, i10);
                                                                        if (viewA9 != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_post_comment))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.v_post_download))) != null && (viewA5 = f4.b.a(view, (i10 = R$id.v_post_like))) != null && (viewA6 = f4.b.a(view, (i10 = R$id.v_post_share))) != null) {
                                                                            return new s(view, bLConstraintLayout, shapeableImageView, frameLayout, frameLayout2, shapeableImageView2, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, shapeableImageView3, shapeableImageView4, shapeableImageView5, zVarA, b0VarA, noScrollRecyclerView2, appCompatTextView, gradientTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, viewA2, viewA8, viewA9, viewA3, viewA4, viewA5, viewA6, (BLView) f4.b.a(view, R$id.v_room_cover_stroke), (BLView) f4.b.a(view, R$id.v_user_avatar_2_stroke));
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
        return this.f74530a;
    }
}

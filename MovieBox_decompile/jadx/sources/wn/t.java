package wn;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.ClipLoading;
import com.transsion.postdetail.ui.view.VideoProgressDragGestureView;

public final class t implements f4.a {
    public final GradientTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final AppCompatTextView E;
    public final BLTextView F;
    public final AppCompatTextView G;
    public final BLView H;
    public final View I;
    public final VideoProgressDragGestureView J;

    private final View f74556a;

    public final Barrier f74557b;

    public final BLView f74558c;

    public final BLConstraintLayout f74559d;

    public final ClipLoading f74560e;

    public final ShapeableImageView f74561f;

    public final ExpandView f74562g;

    public final FrameLayout f74563h;

    public final AppCompatImageView f74564i;

    public final AppCompatImageView f74565j;

    public final ShapeableImageView f74566k;

    public final AppCompatImageView f74567l;

    public final AppCompatImageView f74568m;

    public final AppCompatImageView f74569n;

    public final AppCompatImageView f74570o;

    public final ShapeableImageView f74571p;

    public final ShapeableImageView f74572q;

    public final z f74573r;

    public final LinearLayout f74574s;

    public final NestedScrollableHost f74575t;

    public final ProgressBar f74576u;

    public final Space f74577v;

    public final AppCompatSeekBar f74578w;

    public final AppCompatTextView f74579x;

    public final AppCompatTextView f74580y;

    public final AppCompatTextView f74581z;

    private t(View view, Barrier barrier, BLView bLView, BLConstraintLayout bLConstraintLayout, ClipLoading clipLoading, ShapeableImageView shapeableImageView, ExpandView expandView, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, ShapeableImageView shapeableImageView3, ShapeableImageView shapeableImageView4, z zVar, LinearLayout linearLayout, NestedScrollableHost nestedScrollableHost, ProgressBar progressBar, Space space, AppCompatSeekBar appCompatSeekBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, GradientTextView gradientTextView, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, BLTextView bLTextView, AppCompatTextView appCompatTextView8, BLView bLView2, View view2, VideoProgressDragGestureView videoProgressDragGestureView) {
        this.f74556a = view;
        this.f74557b = barrier;
        this.f74558c = bLView;
        this.f74559d = bLConstraintLayout;
        this.f74560e = clipLoading;
        this.f74561f = shapeableImageView;
        this.f74562g = expandView;
        this.f74563h = frameLayout;
        this.f74564i = appCompatImageView;
        this.f74565j = appCompatImageView2;
        this.f74566k = shapeableImageView2;
        this.f74567l = appCompatImageView3;
        this.f74568m = appCompatImageView4;
        this.f74569n = appCompatImageView5;
        this.f74570o = appCompatImageView6;
        this.f74571p = shapeableImageView3;
        this.f74572q = shapeableImageView4;
        this.f74573r = zVar;
        this.f74574s = linearLayout;
        this.f74575t = nestedScrollableHost;
        this.f74576u = progressBar;
        this.f74577v = space;
        this.f74578w = appCompatSeekBar;
        this.f74579x = appCompatTextView;
        this.f74580y = appCompatTextView2;
        this.f74581z = appCompatTextView3;
        this.A = gradientTextView;
        this.B = appCompatTextView4;
        this.C = appCompatTextView5;
        this.D = appCompatTextView6;
        this.E = appCompatTextView7;
        this.F = bLTextView;
        this.G = appCompatTextView8;
        this.H = bLView2;
        this.I = view2;
        this.J = videoProgressDragGestureView;
    }

    public static t a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.barrier;
        Barrier barrier = (Barrier) f4.b.a(view, i10);
        if (barrier != null) {
            i10 = R$id.bottom_background;
            BLView bLView = (BLView) f4.b.a(view, i10);
            if (bLView != null) {
                i10 = R$id.clHotComment;
                BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
                if (bLConstraintLayout != null) {
                    i10 = R$id.cl_loading;
                    ClipLoading clipLoading = (ClipLoading) f4.b.a(view, i10);
                    if (clipLoading != null) {
                        i10 = R$id.commentCover;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView != null) {
                            i10 = R$id.ev_post_des;
                            ExpandView expandView = (ExpandView) f4.b.a(view, i10);
                            if (expandView != null) {
                                i10 = R$id.fl_container;
                                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                if (frameLayout != null) {
                                    i10 = R$id.iv_cover;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView != null) {
                                        i10 = R$id.iv_download;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView2 != null) {
                                            i10 = R$id.ivHotCommentAvatar;
                                            ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                                            if (shapeableImageView2 != null) {
                                                i10 = R$id.ivHotCommentIcon;
                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                                if (appCompatImageView3 != null) {
                                                    i10 = R$id.ivHotLike;
                                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                                    if (appCompatImageView4 != null) {
                                                        i10 = R$id.iv_pause;
                                                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                                        if (appCompatImageView5 != null) {
                                                            i10 = R$id.iv_save;
                                                            AppCompatImageView appCompatImageView6 = (AppCompatImageView) f4.b.a(view, i10);
                                                            if (appCompatImageView6 != null) {
                                                                i10 = R$id.iv_short_cover;
                                                                ShapeableImageView shapeableImageView3 = (ShapeableImageView) f4.b.a(view, i10);
                                                                if (shapeableImageView3 != null) {
                                                                    i10 = R$id.iv_video_avatar;
                                                                    ShapeableImageView shapeableImageView4 = (ShapeableImageView) f4.b.a(view, i10);
                                                                    if (shapeableImageView4 != null && (viewA = f4.b.a(view, (i10 = R$id.layout_subject_room))) != null) {
                                                                        z zVarA = z.a(viewA);
                                                                        i10 = R$id.llOperationLayout;
                                                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                                        if (linearLayout != null) {
                                                                            i10 = R$id.nsPostDes;
                                                                            NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) f4.b.a(view, i10);
                                                                            if (nestedScrollableHost != null) {
                                                                                i10 = R$id.progress_bar;
                                                                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                                                if (progressBar != null) {
                                                                                    i10 = R$id.progress_guideline;
                                                                                    Space space = (Space) f4.b.a(view, i10);
                                                                                    if (space != null) {
                                                                                        i10 = R$id.seek_bar;
                                                                                        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) f4.b.a(view, i10);
                                                                                        if (appCompatSeekBar != null) {
                                                                                            i10 = R$id.tv_comment;
                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView != null) {
                                                                                                i10 = R$id.tv_favorite;
                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                if (appCompatTextView2 != null) {
                                                                                                    i10 = R$id.tvHotCommentContent;
                                                                                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView3 != null) {
                                                                                                        i10 = R$id.tvHotCommentTitle;
                                                                                                        GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                                                                                        if (gradientTextView != null) {
                                                                                                            i10 = R$id.tvHotLikeCount;
                                                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                            if (appCompatTextView4 != null) {
                                                                                                                i10 = R$id.tv_like;
                                                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                if (appCompatTextView5 != null) {
                                                                                                                    i10 = R$id.tv_progress_des;
                                                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                    if (appCompatTextView6 != null) {
                                                                                                                        i10 = R$id.tv_share;
                                                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                        if (appCompatTextView7 != null) {
                                                                                                                            i10 = R$id.tvShortTvEp;
                                                                                                                            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                                                                                                            if (bLTextView != null) {
                                                                                                                                i10 = R$id.tvTitle;
                                                                                                                                AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                if (appCompatTextView8 != null) {
                                                                                                                                    i10 = R$id.up_background;
                                                                                                                                    BLView bLView2 = (BLView) f4.b.a(view, i10);
                                                                                                                                    if (bLView2 != null && (viewA2 = f4.b.a(view, (i10 = R$id.vHotLike))) != null) {
                                                                                                                                        i10 = R$id.v_progress_gesture;
                                                                                                                                        VideoProgressDragGestureView videoProgressDragGestureView = (VideoProgressDragGestureView) f4.b.a(view, i10);
                                                                                                                                        if (videoProgressDragGestureView != null) {
                                                                                                                                            return new t(view, barrier, bLView, bLConstraintLayout, clipLoading, shapeableImageView, expandView, frameLayout, appCompatImageView, appCompatImageView2, shapeableImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatImageView6, shapeableImageView3, shapeableImageView4, zVarA, linearLayout, nestedScrollableHost, progressBar, space, appCompatSeekBar, appCompatTextView, appCompatTextView2, appCompatTextView3, gradientTextView, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, bLTextView, appCompatTextView8, bLView2, viewA2, videoProgressDragGestureView);
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
        return this.f74556a;
    }
}

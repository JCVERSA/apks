package wn;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.ClipLoading;
import com.transsion.postdetail.ui.view.VideoProgressDragGestureView;

public final class g0 implements f4.a {

    private final View f74369a;

    public final BLView f74370b;

    public final ClipLoading f74371c;

    public final FrameLayout f74372d;

    public final Group f74373e;

    public final AppCompatImageView f74374f;

    public final AppCompatImageView f74375g;

    public final AppCompatImageView f74376h;

    public final AppCompatImageView f74377i;

    public final ShapeableImageView f74378j;

    public final ShapeableImageView f74379k;

    public final LinearLayout f74380l;

    public final ProgressBar f74381m;

    public final Space f74382n;

    public final AppCompatSeekBar f74383o;

    public final AppCompatTextView f74384p;

    public final AppCompatTextView f74385q;

    public final AppCompatTextView f74386r;

    public final AppCompatTextView f74387s;

    public final AppCompatTextView f74388t;

    public final BLTextView f74389u;

    public final AppCompatTextView f74390v;

    public final BLView f74391w;

    public final VideoProgressDragGestureView f74392x;

    private g0(View view, BLView bLView, ClipLoading clipLoading, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, LinearLayout linearLayout, ProgressBar progressBar, Space space, AppCompatSeekBar appCompatSeekBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, BLTextView bLTextView, AppCompatTextView appCompatTextView6, BLView bLView2, VideoProgressDragGestureView videoProgressDragGestureView) {
        this.f74369a = view;
        this.f74370b = bLView;
        this.f74371c = clipLoading;
        this.f74372d = frameLayout;
        this.f74373e = group;
        this.f74374f = appCompatImageView;
        this.f74375g = appCompatImageView2;
        this.f74376h = appCompatImageView3;
        this.f74377i = appCompatImageView4;
        this.f74378j = shapeableImageView;
        this.f74379k = shapeableImageView2;
        this.f74380l = linearLayout;
        this.f74381m = progressBar;
        this.f74382n = space;
        this.f74383o = appCompatSeekBar;
        this.f74384p = appCompatTextView;
        this.f74385q = appCompatTextView2;
        this.f74386r = appCompatTextView3;
        this.f74387s = appCompatTextView4;
        this.f74388t = appCompatTextView5;
        this.f74389u = bLTextView;
        this.f74390v = appCompatTextView6;
        this.f74391w = bLView2;
        this.f74392x = videoProgressDragGestureView;
    }

    public static g0 a(View view) {
        int i10 = R$id.bottom_background;
        BLView bLView = (BLView) f4.b.a(view, i10);
        if (bLView != null) {
            i10 = R$id.cl_loading;
            ClipLoading clipLoading = (ClipLoading) f4.b.a(view, i10);
            if (clipLoading != null) {
                i10 = R$id.fl_container;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.group_content;
                    Group group = (Group) f4.b.a(view, i10);
                    if (group != null) {
                        i10 = R$id.iv_cover;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.iv_download;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.iv_pause;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView3 != null) {
                                    i10 = R$id.iv_share;
                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView4 != null) {
                                        i10 = R$id.iv_short_cover;
                                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                        if (shapeableImageView != null) {
                                            i10 = R$id.iv_video_avatar;
                                            ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                                            if (shapeableImageView2 != null) {
                                                i10 = R$id.llOperationLayout;
                                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                if (linearLayout != null) {
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
                                                                    i10 = R$id.tv_desc;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView2 != null) {
                                                                        i10 = R$id.tv_favorite;
                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView3 != null) {
                                                                            i10 = R$id.tv_like;
                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                            if (appCompatTextView4 != null) {
                                                                                i10 = R$id.tv_progress_des;
                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                if (appCompatTextView5 != null) {
                                                                                    i10 = R$id.tv_short_tv_ep;
                                                                                    BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                                                                    if (bLTextView != null) {
                                                                                        i10 = R$id.tv_title;
                                                                                        AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView6 != null) {
                                                                                            i10 = R$id.up_background;
                                                                                            BLView bLView2 = (BLView) f4.b.a(view, i10);
                                                                                            if (bLView2 != null) {
                                                                                                i10 = R$id.v_progress_gesture;
                                                                                                VideoProgressDragGestureView videoProgressDragGestureView = (VideoProgressDragGestureView) f4.b.a(view, i10);
                                                                                                if (videoProgressDragGestureView != null) {
                                                                                                    return new g0(view, bLView, clipLoading, frameLayout, group, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, shapeableImageView, shapeableImageView2, linearLayout, progressBar, space, appCompatSeekBar, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, bLTextView, appCompatTextView6, bLView2, videoProgressDragGestureView);
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
        return this.f74369a;
    }
}

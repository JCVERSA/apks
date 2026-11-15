package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.PostDetailOperationView;
import com.transsion.postdetail.ui.view.PostDetailSubjectView;

public final class m implements f4.a {
    public final AppCompatTextView A;
    public final View B;
    public final View C;

    private final ConstraintLayout f74456a;

    public final TextView f74457b;

    public final ConstraintLayout f74458c;

    public final AppCompatImageView f74459d;

    public final AppCompatSeekBar f74460e;

    public final AppBarLayout f74461f;

    public final ConstraintLayout f74462g;

    public final CoordinatorLayout f74463h;

    public final i0 f74464i;

    public final ConstraintLayout f74465j;

    public final FrameLayout f74466k;

    public final Group f74467l;

    public final AppCompatImageView f74468m;

    public final ShapeableImageView f74469n;

    public final AppCompatImageView f74470o;

    public final AppCompatImageView f74471p;

    public final LinearLayout f74472q;

    public final NineGridVideoView f74473r;

    public final PostDetailOperationView f74474s;

    public final PostDetailSubjectView f74475t;

    public final Toolbar f74476u;

    public final CollapsingToolbarLayout f74477v;

    public final h0 f74478w;

    public final AppCompatTextView f74479x;

    public final j0 f74480y;

    public final AppCompatTextView f74481z;

    private m(ConstraintLayout constraintLayout, TextView textView, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatSeekBar appCompatSeekBar, AppBarLayout appBarLayout, ConstraintLayout constraintLayout3, CoordinatorLayout coordinatorLayout, i0 i0Var, ConstraintLayout constraintLayout4, FrameLayout frameLayout, Group group, AppCompatImageView appCompatImageView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, LinearLayout linearLayout, NineGridVideoView nineGridVideoView, PostDetailOperationView postDetailOperationView, PostDetailSubjectView postDetailSubjectView, Toolbar toolbar, CollapsingToolbarLayout collapsingToolbarLayout, h0 h0Var, AppCompatTextView appCompatTextView, j0 j0Var, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view, View view2) {
        this.f74456a = constraintLayout;
        this.f74457b = textView;
        this.f74458c = constraintLayout2;
        this.f74459d = appCompatImageView;
        this.f74460e = appCompatSeekBar;
        this.f74461f = appBarLayout;
        this.f74462g = constraintLayout3;
        this.f74463h = coordinatorLayout;
        this.f74464i = i0Var;
        this.f74465j = constraintLayout4;
        this.f74466k = frameLayout;
        this.f74467l = group;
        this.f74468m = appCompatImageView2;
        this.f74469n = shapeableImageView;
        this.f74470o = appCompatImageView3;
        this.f74471p = appCompatImageView4;
        this.f74472q = linearLayout;
        this.f74473r = nineGridVideoView;
        this.f74474s = postDetailOperationView;
        this.f74475t = postDetailSubjectView;
        this.f74476u = toolbar;
        this.f74477v = collapsingToolbarLayout;
        this.f74478w = h0Var;
        this.f74479x = appCompatTextView;
        this.f74480y = j0Var;
        this.f74481z = appCompatTextView2;
        this.A = appCompatTextView3;
        this.B = view;
        this.C = view2;
    }

    public static m a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        int i10 = R$id.ad_audio_time;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.ad_bottom_controller;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.ad_pause;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ad_seekbar;
                    AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) f4.b.a(view, i10);
                    if (appCompatSeekBar != null) {
                        i10 = R$id.appBar;
                        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
                        if (appBarLayout != null) {
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                            i10 = R$id.clContent;
                            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
                            if (coordinatorLayout != null && (viewA = f4.b.a(view, (i10 = R$id.clRating))) != null) {
                                i0 i0VarA = i0.a(viewA);
                                i10 = R$id.contentView;
                                ConstraintLayout constraintLayout3 = (ConstraintLayout) f4.b.a(view, i10);
                                if (constraintLayout3 != null) {
                                    i10 = R$id.flContainer;
                                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                    if (frameLayout != null) {
                                        i10 = R$id.groupAudio;
                                        Group group = (Group) f4.b.a(view, i10);
                                        if (group != null) {
                                            i10 = R$id.iv_audio_wave;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView2 != null) {
                                                i10 = R$id.ivAvatar;
                                                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                                if (shapeableImageView != null) {
                                                    i10 = R$id.ivBack;
                                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                                    if (appCompatImageView3 != null) {
                                                        i10 = R$id.iv_cover;
                                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                                        if (appCompatImageView4 != null) {
                                                            i10 = R$id.llTop;
                                                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                            if (linearLayout != null) {
                                                                i10 = R$id.nine_grid;
                                                                NineGridVideoView nineGridVideoView = (NineGridVideoView) f4.b.a(view, i10);
                                                                if (nineGridVideoView != null) {
                                                                    i10 = R$id.postDetailOperationView;
                                                                    PostDetailOperationView postDetailOperationView = (PostDetailOperationView) f4.b.a(view, i10);
                                                                    if (postDetailOperationView != null) {
                                                                        i10 = R$id.postDetailSubjectView;
                                                                        PostDetailSubjectView postDetailSubjectView = (PostDetailSubjectView) f4.b.a(view, i10);
                                                                        if (postDetailSubjectView != null) {
                                                                            i10 = R$id.toolbar;
                                                                            Toolbar toolbar = (Toolbar) f4.b.a(view, i10);
                                                                            if (toolbar != null) {
                                                                                i10 = R$id.toolbarLayout;
                                                                                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                                                if (collapsingToolbarLayout != null && (viewA2 = f4.b.a(view, (i10 = R$id.tvPostDesc))) != null) {
                                                                                    h0 h0VarA = h0.a(viewA2);
                                                                                    i10 = R$id.tvPostTime;
                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView != null && (viewA3 = f4.b.a(view, (i10 = R$id.tvPostTitle))) != null) {
                                                                                        j0 j0VarA = j0.a(viewA3);
                                                                                        i10 = R$id.tvSubject;
                                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView2 != null) {
                                                                                            i10 = R$id.tvTitle;
                                                                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView3 != null && (viewA4 = f4.b.a(view, (i10 = R$id.viewBg))) != null && (viewA5 = f4.b.a(view, (i10 = R$id.viewTitleLine))) != null) {
                                                                                                return new m(constraintLayout2, textView, constraintLayout, appCompatImageView, appCompatSeekBar, appBarLayout, constraintLayout2, coordinatorLayout, i0VarA, constraintLayout3, frameLayout, group, appCompatImageView2, shapeableImageView, appCompatImageView3, appCompatImageView4, linearLayout, nineGridVideoView, postDetailOperationView, postDetailSubjectView, toolbar, collapsingToolbarLayout, h0VarA, appCompatTextView, j0VarA, appCompatTextView2, appCompatTextView3, viewA4, viewA5);
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

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_post_detail_common_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74456a;
    }
}

package iu;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.shorttv.ui.widget.ShortTvVideoProgressDragGestureView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.widget.UGCImmRingLoadingView;
import com.transsion.ugcvideodetail.widget.expand.UGCImmExpandView;

public final class r implements f4.a {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public final AppCompatTextView D;
    public final TextView E;
    public final BLTextView F;
    public final TextView G;
    public final AppCompatTextView H;
    public final BLView I;
    public final FrameLayout J;
    public final UGCImmRingLoadingView K;
    public final ShortTvVideoProgressDragGestureView L;
    public final SimpleSubtitleView M;

    private final View f62773a;

    public final BLView f62774b;

    public final UGCImmExpandView f62775c;

    public final FrameLayout f62776d;

    public final FrameLayout f62777e;

    public final FrameLayout f62778f;

    public final FrameLayout f62779g;

    public final View f62780h;

    public final Group f62781i;

    public final AppCompatImageView f62782j;

    public final AppCompatImageView f62783k;

    public final AppCompatImageView f62784l;

    public final AppCompatImageView f62785m;

    public final AppCompatImageView f62786n;

    public final AppCompatTextView f62787o;

    public final AppCompatImageView f62788p;

    public final ShapeableImageView f62789q;

    public final ConstraintLayout f62790r;

    public final FrameLayout f62791s;

    public final NestedScrollableHost f62792t;

    public final ProgressBar f62793u;

    public final SecondariesSeekBar f62794v;

    public final Space f62795w;

    public final RecyclerView f62796x;

    public final SecondariesSeekBar f62797y;

    public final AppCompatTextView f62798z;

    private r(View view, BLView bLView, UGCImmExpandView uGCImmExpandView, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, View view2, Group group, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView6, ShapeableImageView shapeableImageView, ConstraintLayout constraintLayout, FrameLayout frameLayout5, NestedScrollableHost nestedScrollableHost, ProgressBar progressBar, SecondariesSeekBar secondariesSeekBar, Space space, RecyclerView recyclerView, SecondariesSeekBar secondariesSeekBar2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, TextView textView, BLTextView bLTextView, TextView textView2, AppCompatTextView appCompatTextView7, BLView bLView2, FrameLayout frameLayout6, UGCImmRingLoadingView uGCImmRingLoadingView, ShortTvVideoProgressDragGestureView shortTvVideoProgressDragGestureView, SimpleSubtitleView simpleSubtitleView) {
        this.f62773a = view;
        this.f62774b = bLView;
        this.f62775c = uGCImmExpandView;
        this.f62776d = frameLayout;
        this.f62777e = frameLayout2;
        this.f62778f = frameLayout3;
        this.f62779g = frameLayout4;
        this.f62780h = view2;
        this.f62781i = group;
        this.f62782j = appCompatImageView;
        this.f62783k = appCompatImageView2;
        this.f62784l = appCompatImageView3;
        this.f62785m = appCompatImageView4;
        this.f62786n = appCompatImageView5;
        this.f62787o = appCompatTextView;
        this.f62788p = appCompatImageView6;
        this.f62789q = shapeableImageView;
        this.f62790r = constraintLayout;
        this.f62791s = frameLayout5;
        this.f62792t = nestedScrollableHost;
        this.f62793u = progressBar;
        this.f62794v = secondariesSeekBar;
        this.f62795w = space;
        this.f62796x = recyclerView;
        this.f62797y = secondariesSeekBar2;
        this.f62798z = appCompatTextView2;
        this.A = appCompatTextView3;
        this.B = appCompatTextView4;
        this.C = appCompatTextView5;
        this.D = appCompatTextView6;
        this.E = textView;
        this.F = bLTextView;
        this.G = textView2;
        this.H = appCompatTextView7;
        this.I = bLView2;
        this.J = frameLayout6;
        this.K = uGCImmRingLoadingView;
        this.L = shortTvVideoProgressDragGestureView;
        this.M = simpleSubtitleView;
    }

    public static r a(View view) {
        View viewA;
        int i10 = R$id.bottomUgcImmBackground;
        BLView bLView = (BLView) f4.b.a(view, i10);
        if (bLView != null) {
            i10 = R$id.evUgcImmPostDes;
            UGCImmExpandView uGCImmExpandView = (UGCImmExpandView) f4.b.a(view, i10);
            if (uGCImmExpandView != null) {
                i10 = R$id.flUgcImmContainer;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.flUgcImmDownload;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.flUgcImmSubscribe;
                        FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout3 != null) {
                            i10 = R$id.flUgcImmSubtitle;
                            FrameLayout frameLayout4 = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout4 != null && (viewA = f4.b.a(view, (i10 = R$id.groupUgcImmContentBg))) != null) {
                                i10 = R$id.groupUgcImmControl;
                                Group group = (Group) f4.b.a(view, i10);
                                if (group != null) {
                                    i10 = R$id.ivUgcImmCover;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView != null) {
                                        i10 = R$id.ivUgcImmDownload;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView2 != null) {
                                            i10 = R$id.ivUgcImmEp;
                                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                            if (appCompatImageView3 != null) {
                                                i10 = R$id.ivUgcImmEpTitleIc;
                                                AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                                if (appCompatImageView4 != null) {
                                                    i10 = R$id.ivUgcImmPlayStatus;
                                                    AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                                                    if (appCompatImageView5 != null) {
                                                        i10 = R$id.ivUgcImmShare;
                                                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView != null) {
                                                            i10 = R$id.ivUgcImmSubscribe;
                                                            AppCompatImageView appCompatImageView6 = (AppCompatImageView) f4.b.a(view, i10);
                                                            if (appCompatImageView6 != null) {
                                                                i10 = R$id.ivUgcImmUserCover;
                                                                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                                                if (shapeableImageView != null) {
                                                                    i10 = R$id.layoutUgcImmTvEpisode;
                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                                                    if (constraintLayout != null) {
                                                                        i10 = R$id.layoutUgcImmTvSearch;
                                                                        FrameLayout frameLayout5 = (FrameLayout) f4.b.a(view, i10);
                                                                        if (frameLayout5 != null) {
                                                                            i10 = R$id.nsUgcImmPostDes;
                                                                            NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) f4.b.a(view, i10);
                                                                            if (nestedScrollableHost != null) {
                                                                                i10 = R$id.pbUgcImmSubscribeLoading;
                                                                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                                                                if (progressBar != null) {
                                                                                    i10 = R$id.progressUgcImmBar;
                                                                                    SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                                                                    if (secondariesSeekBar != null) {
                                                                                        i10 = R$id.progressUgcImmGuideline;
                                                                                        Space space = (Space) f4.b.a(view, i10);
                                                                                        if (space != null) {
                                                                                            i10 = R$id.rvUgcImmTags;
                                                                                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                                                            if (recyclerView != null) {
                                                                                                i10 = R$id.seekUgcImmBar;
                                                                                                SecondariesSeekBar secondariesSeekBar2 = (SecondariesSeekBar) f4.b.a(view, i10);
                                                                                                if (secondariesSeekBar2 != null) {
                                                                                                    i10 = R$id.tvUgcImmComment;
                                                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView2 != null) {
                                                                                                        i10 = R$id.tvUgcImmEp;
                                                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                        if (appCompatTextView3 != null) {
                                                                                                            i10 = R$id.tvUgcImmEpTitle;
                                                                                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                            if (appCompatTextView4 != null) {
                                                                                                                i10 = R$id.tvUgcImmFavorite;
                                                                                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                if (appCompatTextView5 != null) {
                                                                                                                    i10 = R$id.tvUgcImmLike;
                                                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                    if (appCompatTextView6 != null) {
                                                                                                                        i10 = R$id.tvUgcImmProgressDes;
                                                                                                                        TextView textView = (TextView) f4.b.a(view, i10);
                                                                                                                        if (textView != null) {
                                                                                                                            i10 = R$id.tvUgcImmTopSpeed;
                                                                                                                            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                                                                                                            if (bLTextView != null) {
                                                                                                                                i10 = R$id.tvUgcImmTvSearch;
                                                                                                                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                                                                                if (textView2 != null) {
                                                                                                                                    i10 = R$id.tvUgcImmUserName;
                                                                                                                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                                                    if (appCompatTextView7 != null) {
                                                                                                                                        i10 = R$id.upUgcImmBackground;
                                                                                                                                        BLView bLView2 = (BLView) f4.b.a(view, i10);
                                                                                                                                        if (bLView2 != null) {
                                                                                                                                            i10 = R$id.vTopStatus;
                                                                                                                                            FrameLayout frameLayout6 = (FrameLayout) f4.b.a(view, i10);
                                                                                                                                            if (frameLayout6 != null) {
                                                                                                                                                i10 = R$id.vUgcImmDownloadLoading;
                                                                                                                                                UGCImmRingLoadingView uGCImmRingLoadingView = (UGCImmRingLoadingView) f4.b.a(view, i10);
                                                                                                                                                if (uGCImmRingLoadingView != null) {
                                                                                                                                                    i10 = R$id.vUgcImmProgressGesture;
                                                                                                                                                    ShortTvVideoProgressDragGestureView shortTvVideoProgressDragGestureView = (ShortTvVideoProgressDragGestureView) f4.b.a(view, i10);
                                                                                                                                                    if (shortTvVideoProgressDragGestureView != null) {
                                                                                                                                                        i10 = R$id.vUgcImmSubtitle;
                                                                                                                                                        SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) f4.b.a(view, i10);
                                                                                                                                                        if (simpleSubtitleView != null) {
                                                                                                                                                            return new r(view, bLView, uGCImmExpandView, frameLayout, frameLayout2, frameLayout3, frameLayout4, viewA, group, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, appCompatTextView, appCompatImageView6, shapeableImageView, constraintLayout, frameLayout5, nestedScrollableHost, progressBar, secondariesSeekBar, space, recyclerView, secondariesSeekBar2, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, textView, bLTextView, textView2, appCompatTextView7, bLView2, frameLayout6, uGCImmRingLoadingView, shortTvVideoProgressDragGestureView, simpleSubtitleView);
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
    public View getRoot() {
        return this.f62773a;
    }
}

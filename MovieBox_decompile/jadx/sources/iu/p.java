package iu;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;

public final class p implements f4.a {
    public final View A;
    public final View B;

    private final View f62743a;

    public final Barrier f62744b;

    public final BLTextView f62745c;

    public final Group f62746d;

    public final Group f62747e;

    public final AppCompatImageView f62748f;

    public final AppCompatImageView f62749g;

    public final AppCompatImageView f62750h;

    public final ShapeableImageView f62751i;

    public final LinearLayout f62752j;

    public final ProgressBar f62753k;

    public final RecyclerView f62754l;

    public final AppCompatTextView f62755m;

    public final BLTextView f62756n;

    public final AppCompatTextView f62757o;

    public final AppCompatTextView f62758p;

    public final AppCompatTextView f62759q;

    public final AppCompatTextView f62760r;

    public final BLTextView f62761s;

    public final BLTextView f62762t;

    public final AppCompatTextView f62763u;

    public final AppCompatTextView f62764v;

    public final AppCompatTextView f62765w;

    public final AppCompatTextView f62766x;

    public final AppCompatTextView f62767y;

    public final AppCompatTextView f62768z;

    private p(View view, Barrier barrier, BLTextView bLTextView, Group group, Group group2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ShapeableImageView shapeableImageView, LinearLayout linearLayout, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, BLTextView bLTextView3, BLTextView bLTextView4, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10, AppCompatTextView appCompatTextView11, View view2, View view3) {
        this.f62743a = view;
        this.f62744b = barrier;
        this.f62745c = bLTextView;
        this.f62746d = group;
        this.f62747e = group2;
        this.f62748f = appCompatImageView;
        this.f62749g = appCompatImageView2;
        this.f62750h = appCompatImageView3;
        this.f62751i = shapeableImageView;
        this.f62752j = linearLayout;
        this.f62753k = progressBar;
        this.f62754l = recyclerView;
        this.f62755m = appCompatTextView;
        this.f62756n = bLTextView2;
        this.f62757o = appCompatTextView2;
        this.f62758p = appCompatTextView3;
        this.f62759q = appCompatTextView4;
        this.f62760r = appCompatTextView5;
        this.f62761s = bLTextView3;
        this.f62762t = bLTextView4;
        this.f62763u = appCompatTextView6;
        this.f62764v = appCompatTextView7;
        this.f62765w = appCompatTextView8;
        this.f62766x = appCompatTextView9;
        this.f62767y = appCompatTextView10;
        this.f62768z = appCompatTextView11;
        this.A = view2;
        this.B = view3;
    }

    public static p a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.barrierButtons;
        Barrier barrier = (Barrier) f4.b.a(view, i10);
        if (barrier != null) {
            i10 = R$id.bgAutoplay;
            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
            if (bLTextView != null) {
                i10 = R$id.groupAutoplay;
                Group group = (Group) f4.b.a(view, i10);
                if (group != null) {
                    i10 = R$id.groupStandardButtons;
                    Group group2 = (Group) f4.b.a(view, i10);
                    if (group2 != null) {
                        i10 = R$id.ivAutoplayClose;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.ivAutoplayIcon;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.ivPostType;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView3 != null) {
                                    i10 = R$id.ivUserCover;
                                    ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                    if (shapeableImageView != null) {
                                        i10 = R$id.llKidsModeButtons;
                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout != null) {
                                            i10 = R$id.pbSubscribeLoading;
                                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                            if (progressBar != null) {
                                                i10 = R$id.recyclerTag;
                                                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                if (recyclerView != null) {
                                                    i10 = R$id.tvAddList;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView != null) {
                                                        i10 = R$id.tvAutoplayGo;
                                                        BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                                                        if (bLTextView2 != null) {
                                                            i10 = R$id.tvAutoplayText;
                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                            if (appCompatTextView2 != null) {
                                                                i10 = R$id.tvDes;
                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView3 != null) {
                                                                    i10 = R$id.tvDetailMore;
                                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView4 != null) {
                                                                        i10 = R$id.tvDownload;
                                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView5 != null) {
                                                                            i10 = R$id.tvDownloadKids;
                                                                            BLTextView bLTextView3 = (BLTextView) f4.b.a(view, i10);
                                                                            if (bLTextView3 != null) {
                                                                                i10 = R$id.tvFollow;
                                                                                BLTextView bLTextView4 = (BLTextView) f4.b.a(view, i10);
                                                                                if (bLTextView4 != null) {
                                                                                    i10 = R$id.tvLike;
                                                                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                    if (appCompatTextView6 != null) {
                                                                                        i10 = R$id.tvShare;
                                                                                        AppCompatTextView appCompatTextView7 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                        if (appCompatTextView7 != null) {
                                                                                            i10 = R$id.tvTime;
                                                                                            AppCompatTextView appCompatTextView8 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                            if (appCompatTextView8 != null) {
                                                                                                i10 = R$id.tvTitle;
                                                                                                AppCompatTextView appCompatTextView9 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                if (appCompatTextView9 != null) {
                                                                                                    i10 = R$id.tvUsername;
                                                                                                    AppCompatTextView appCompatTextView10 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                    if (appCompatTextView10 != null) {
                                                                                                        i10 = R$id.tvViews;
                                                                                                        AppCompatTextView appCompatTextView11 = (AppCompatTextView) f4.b.a(view, i10);
                                                                                                        if (appCompatTextView11 != null && (viewA = f4.b.a(view, (i10 = R$id.vIconLine1))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.vIconLine2))) != null) {
                                                                                                            return new p(view, barrier, bLTextView, group, group2, appCompatImageView, appCompatImageView2, appCompatImageView3, shapeableImageView, linearLayout, progressBar, recyclerView, appCompatTextView, bLTextView2, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, bLTextView3, bLTextView4, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, viewA, viewA2);
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
        return this.f62743a;
    }
}

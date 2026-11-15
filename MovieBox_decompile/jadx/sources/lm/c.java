package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.InfoExtendView;
import com.transsion.moviedetail.view.MovieDetailShareView;

public final class c implements f4.a {

    private final ConstraintLayout f65731a;

    public final AppBarLayout f65732b;

    public final CoordinatorLayout f65733c;

    public final InfoExtendView f65734d;

    public final AppCompatImageView f65735e;

    public final ShapeableImageView f65736f;

    public final AppCompatImageView f65737g;

    public final MovieDetailShareView f65738h;

    public final AppCompatImageView f65739i;

    public final AppCompatImageView f65740j;

    public final RecyclerView f65741k;

    public final Space f65742l;

    public final Toolbar f65743m;

    public final CollapsingToolbarLayout f65744n;

    public final TextView f65745o;

    public final AppCompatTextView f65746p;

    public final AppCompatTextView f65747q;

    public final AppCompatTextView f65748r;

    private c(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, InfoExtendView infoExtendView, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView2, MovieDetailShareView movieDetailShareView, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, RecyclerView recyclerView, Space space, Toolbar toolbar, CollapsingToolbarLayout collapsingToolbarLayout, TextView textView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f65731a = constraintLayout;
        this.f65732b = appBarLayout;
        this.f65733c = coordinatorLayout;
        this.f65734d = infoExtendView;
        this.f65735e = appCompatImageView;
        this.f65736f = shapeableImageView;
        this.f65737g = appCompatImageView2;
        this.f65738h = movieDetailShareView;
        this.f65739i = appCompatImageView3;
        this.f65740j = appCompatImageView4;
        this.f65741k = recyclerView;
        this.f65742l = space;
        this.f65743m = toolbar;
        this.f65744n = collapsingToolbarLayout;
        this.f65745o = textView;
        this.f65746p = appCompatTextView;
        this.f65747q = appCompatTextView2;
        this.f65748r = appCompatTextView3;
    }

    public static c a(View view) {
        int i10 = R$id.appBar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.cdl;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
            if (coordinatorLayout != null) {
                i10 = R$id.infoExtendView;
                InfoExtendView infoExtendView = (InfoExtendView) f4.b.a(view, i10);
                if (infoExtendView != null) {
                    i10 = R$id.ivBack;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivCoverSmall;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView != null) {
                            i10 = R$id.ivDownload;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.ivShare;
                                MovieDetailShareView movieDetailShareView = (MovieDetailShareView) f4.b.a(view, i10);
                                if (movieDetailShareView != null) {
                                    i10 = R$id.iv_staff;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView3 != null) {
                                        i10 = R$id.iv_want_see;
                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView4 != null) {
                                            i10 = R$id.f45196rv;
                                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                            if (recyclerView != null) {
                                                i10 = R$id.f45197sp;
                                                Space space = (Space) f4.b.a(view, i10);
                                                if (space != null) {
                                                    i10 = R$id.toolbar;
                                                    Toolbar toolbar = (Toolbar) f4.b.a(view, i10);
                                                    if (toolbar != null) {
                                                        i10 = R$id.toolbar_layout;
                                                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                                                        if (collapsingToolbarLayout != null) {
                                                            i10 = R$id.tv_filmography;
                                                            TextView textView = (TextView) f4.b.a(view, i10);
                                                            if (textView != null) {
                                                                i10 = R$id.tv_staff_desc;
                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                                if (appCompatTextView != null) {
                                                                    i10 = R$id.tv_staff_name;
                                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                                    if (appCompatTextView2 != null) {
                                                                        i10 = R$id.tvTitle;
                                                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                                        if (appCompatTextView3 != null) {
                                                                            return new c((ConstraintLayout) view, appBarLayout, coordinatorLayout, infoExtendView, appCompatImageView, shapeableImageView, appCompatImageView2, movieDetailShareView, appCompatImageView3, appCompatImageView4, recyclerView, space, toolbar, collapsingToolbarLayout, textView, appCompatTextView, appCompatTextView2, appCompatTextView3);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_movie_staff, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65731a;
    }
}

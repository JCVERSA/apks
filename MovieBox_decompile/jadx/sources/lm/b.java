package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f65719a;

    public final AppCompatImageView f65720b;

    public final AppCompatImageView f65721c;

    public final AppCompatImageView f65722d;

    public final AppCompatImageView f65723e;

    public final LinearLayout f65724f;

    public final RecyclerView f65725g;

    public final NestedScrollView f65726h;

    public final ConstraintLayout f65727i;

    public final AppCompatTextView f65728j;

    public final AppCompatTextView f65729k;

    public final TextView f65730l;

    private b(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, LinearLayout linearLayout, RecyclerView recyclerView, NestedScrollView nestedScrollView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView) {
        this.f65719a = constraintLayout;
        this.f65720b = appCompatImageView;
        this.f65721c = appCompatImageView2;
        this.f65722d = appCompatImageView3;
        this.f65723e = appCompatImageView4;
        this.f65724f = linearLayout;
        this.f65725g = recyclerView;
        this.f65726h = nestedScrollView;
        this.f65727i = constraintLayout2;
        this.f65728j = appCompatTextView;
        this.f65729k = appCompatTextView2;
        this.f65730l = textView;
    }

    public static b a(View view) {
        int i10 = R$id.ivBack;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivCover;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivDownload;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.ivShare;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView4 != null) {
                        i10 = R$id.llContent;
                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R$id.rvStaff;
                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                            if (recyclerView != null) {
                                i10 = R$id.scrollView;
                                NestedScrollView nestedScrollView = (NestedScrollView) f4.b.a(view, i10);
                                if (nestedScrollView != null) {
                                    i10 = R$id.topLayout;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                    if (constraintLayout != null) {
                                        i10 = R$id.tvMovieDesc;
                                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView != null) {
                                            i10 = R$id.tvMovieName;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView2 != null) {
                                                i10 = R$id.tvStaffTitle;
                                                TextView textView = (TextView) f4.b.a(view, i10);
                                                if (textView != null) {
                                                    return new b((ConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, linearLayout, recyclerView, nestedScrollView, constraintLayout, appCompatTextView, appCompatTextView2, textView);
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

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_movie_poster_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65719a;
    }
}

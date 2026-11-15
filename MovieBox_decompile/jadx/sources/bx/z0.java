package bx;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

public final class z0 implements f4.a {

    private final ConstraintLayout f16327a;

    public final BLFrameLayout f16328b;

    public final ImageView f16329c;

    public final AppCompatImageView f16330d;

    public final View f16331e;

    public final CircleProgressBar f16332f;

    public final RecyclerView f16333g;

    public final AppCompatTextView f16334h;

    public final AppCompatTextView f16335i;

    public final AppCompatTextView f16336j;

    public final AppCompatTextView f16337k;

    public final View f16338l;

    public final View f16339m;

    private z0(ConstraintLayout constraintLayout, BLFrameLayout bLFrameLayout, ImageView imageView, AppCompatImageView appCompatImageView, View view, CircleProgressBar circleProgressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view2, View view3) {
        this.f16327a = constraintLayout;
        this.f16328b = bLFrameLayout;
        this.f16329c = imageView;
        this.f16330d = appCompatImageView;
        this.f16331e = view;
        this.f16332f = circleProgressBar;
        this.f16333g = recyclerView;
        this.f16334h = appCompatTextView;
        this.f16335i = appCompatTextView2;
        this.f16336j = appCompatTextView3;
        this.f16337k = appCompatTextView4;
        this.f16338l = view2;
        this.f16339m = view3;
    }

    public static z0 a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.fl_loading;
        BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
        if (bLFrameLayout != null) {
            i10 = R$id.iv_close;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.iv_save_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
                    i10 = R$id.progress_bar;
                    CircleProgressBar circleProgressBar = (CircleProgressBar) f4.b.a(view, i10);
                    if (circleProgressBar != null) {
                        i10 = R$id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                        if (recyclerView != null) {
                            i10 = R$id.tv_btn_confirm;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_progress;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.tv_tips;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        i10 = R$id.tv_title;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView4 != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_bottom))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_loading_intercept))) != null) {
                                            return new z0((ConstraintLayout) view, bLFrameLayout, imageView, appCompatImageView, viewA, circleProgressBar, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA2, viewA3);
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
    public ConstraintLayout getRoot() {
        return this.f16327a;
    }
}

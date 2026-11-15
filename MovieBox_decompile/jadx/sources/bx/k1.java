package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLFrameLayout;
import com.transsnet.downloader.R$id;

public final class k1 implements f4.a {

    private final View f16140a;

    public final BLFrameLayout f16141b;

    public final AppCompatImageView f16142c;

    public final RecyclerView f16143d;

    public final AppCompatTextView f16144e;

    public final View f16145f;

    private k1(View view, BLFrameLayout bLFrameLayout, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, View view2) {
        this.f16140a = view;
        this.f16141b = bLFrameLayout;
        this.f16142c = appCompatImageView;
        this.f16143d = recyclerView;
        this.f16144e = appCompatTextView;
        this.f16145f = view2;
    }

    public static k1 a(View view) {
        View viewA;
        int i10 = R$id.fl_content;
        BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
        if (bLFrameLayout != null) {
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null && (viewA = f4.b.a(view, (i10 = R$id.v_top_bg))) != null) {
                        return new k1(view, bLFrameLayout, appCompatImageView, recyclerView, appCompatTextView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16140a;
    }
}

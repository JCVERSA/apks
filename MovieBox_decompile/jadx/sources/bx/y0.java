package bx;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsnet.downloader.R$id;

public final class y0 implements f4.a {

    private final View f16308a;

    public final AppCompatImageView f16309b;

    public final AppCompatTextView f16310c;

    public final AppCompatTextView f16311d;

    public final AppCompatTextView f16312e;

    public final BLTextView f16313f;

    public final LinearLayout f16314g;

    public final RecyclerView f16315h;

    public final BLTextView f16316i;

    public final Space f16317j;

    public final View f16318k;

    private y0(View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView, LinearLayout linearLayout, RecyclerView recyclerView, BLTextView bLTextView2, Space space, View view2) {
        this.f16308a = view;
        this.f16309b = appCompatImageView;
        this.f16310c = appCompatTextView;
        this.f16311d = appCompatTextView2;
        this.f16312e = appCompatTextView3;
        this.f16313f = bLTextView;
        this.f16314g = linearLayout;
        this.f16315h = recyclerView;
        this.f16316i = bLTextView2;
        this.f16317j = space;
        this.f16318k = view2;
    }

    public static y0 a(View view) {
        View viewA;
        int i10 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.innerTvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.iv_seasons;
                        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                        if (bLTextView != null) {
                            i10 = R$id.llLanguage;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.quality_recycler_view;
                                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                if (recyclerView != null) {
                                    i10 = R$id.tvLanguage;
                                    BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                                    if (bLTextView2 != null) {
                                        i10 = R$id.v_bottom_space;
                                        Space space = (Space) f4.b.a(view, i10);
                                        if (space != null && (viewA = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                                            return new y0(view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView, linearLayout, recyclerView, bLTextView2, space, viewA);
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
        return this.f16308a;
    }
}

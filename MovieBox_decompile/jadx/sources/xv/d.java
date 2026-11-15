package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class d implements f4.a {

    private final ConstraintLayout f75872a;

    public final AppCompatImageView f75873b;

    public final AppCompatTextView f75874c;

    public final AppCompatTextView f75875d;

    public final AppCompatTextView f75876e;

    public final BLTextView f75877f;

    public final LinearLayout f75878g;

    public final RecyclerView f75879h;

    public final BLTextView f75880i;

    public final BLTextView f75881j;

    private d(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLTextView bLTextView, LinearLayout linearLayout, RecyclerView recyclerView, BLTextView bLTextView2, BLTextView bLTextView3) {
        this.f75872a = constraintLayout;
        this.f75873b = appCompatImageView;
        this.f75874c = appCompatTextView;
        this.f75875d = appCompatTextView2;
        this.f75876e = appCompatTextView3;
        this.f75877f = bLTextView;
        this.f75878g = linearLayout;
        this.f75879h = recyclerView;
        this.f75880i = bLTextView2;
        this.f75881j = bLTextView3;
    }

    public static d a(View view) {
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
                                i10 = R$id.resourceRv;
                                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                if (recyclerView != null) {
                                    i10 = R$id.tvLanguage;
                                    BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                                    if (bLTextView2 != null) {
                                        i10 = R$id.tv_more;
                                        BLTextView bLTextView3 = (BLTextView) f4.b.a(view, i10);
                                        if (bLTextView3 != null) {
                                            return new d((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, bLTextView, linearLayout, recyclerView, bLTextView2, bLTextView3);
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_episode, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75872a;
    }
}

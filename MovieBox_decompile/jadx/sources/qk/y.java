package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class y implements f4.a {

    private final ConstraintLayout f69874a;

    public final View f69875b;

    public final View f69876c;

    public final RecyclerView f69877d;

    public final FrameLayout f69878e;

    public final FrameLayout f69879f;

    public final ImageView f69880g;

    public final ConstraintLayout f69881h;

    public final TitleLayout f69882i;

    public final TnTextView f69883j;

    private y(ConstraintLayout constraintLayout, View view, View view2, RecyclerView recyclerView, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, ConstraintLayout constraintLayout2, TitleLayout titleLayout, TnTextView tnTextView) {
        this.f69874a = constraintLayout;
        this.f69875b = view;
        this.f69876c = view2;
        this.f69877d = recyclerView;
        this.f69878e = frameLayout;
        this.f69879f = frameLayout2;
        this.f69880g = imageView;
        this.f69881h = constraintLayout2;
        this.f69882i = titleLayout;
        this.f69883j = tnTextView;
    }

    public static y a(View view) {
        View viewA;
        int i10 = R$id.film_list_color_mask;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null && (viewA = f4.b.a(view, (i10 = R$id.film_list_gradient))) != null) {
            i10 = R$id.ranking_category_recycler;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.ranking_error;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.ranking_list_container;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.ranking_list_cover;
                        ImageView imageView = (ImageView) f4.b.a(view, i10);
                        if (imageView != null) {
                            i10 = R$id.ranking_loading_frame;
                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                            if (constraintLayout != null) {
                                i10 = R$id.ranking_title;
                                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                                if (titleLayout != null) {
                                    i10 = R$id.tv_titleText;
                                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                    if (tnTextView != null) {
                                        return new y((ConstraintLayout) view, viewA2, viewA, recyclerView, frameLayout, frameLayout2, imageView, constraintLayout, titleLayout, tnTextView);
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

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_ranking, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69874a;
    }
}

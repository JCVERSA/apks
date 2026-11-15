package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.native_ad.BiddingFloatingIrregularAnimationView;

public final class l implements f4.a {

    private final FrameLayout f72141a;

    public final BiddingFloatingIrregularAnimationView f72142b;

    public final RecyclerView f72143c;

    private l(FrameLayout frameLayout, BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView, RecyclerView recyclerView) {
        this.f72141a = frameLayout;
        this.f72142b = biddingFloatingIrregularAnimationView;
        this.f72143c = recyclerView;
    }

    public static l a(View view) {
        int i10 = R$id.irregularView;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView = (BiddingFloatingIrregularAnimationView) f4.b.a(view, i10);
        if (biddingFloatingIrregularAnimationView != null) {
            i10 = R$id.f40773rv;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new l((FrameLayout) view, biddingFloatingIrregularAnimationView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_irregular_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f72141a;
    }
}

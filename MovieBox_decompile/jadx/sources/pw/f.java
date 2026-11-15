package pw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

public final class f implements f4.a {

    private final ConstraintLayout f69308a;

    public final CardView f69309b;

    public final CardView f69310c;

    public final NativeWrapperAdView f69311d;

    private f(ConstraintLayout constraintLayout, CardView cardView, CardView cardView2, NativeWrapperAdView nativeWrapperAdView) {
        this.f69308a = constraintLayout;
        this.f69309b = cardView;
        this.f69310c = cardView2;
        this.f69311d = nativeWrapperAdView;
    }

    public static f a(View view) {
        int i10 = R$id.ad_detail_arrow;
        CardView cardView = (CardView) f4.b.a(view, i10);
        if (cardView != null) {
            i10 = R$id.ad_detail_btn;
            CardView cardView2 = (CardView) f4.b.a(view, i10);
            if (cardView2 != null) {
                i10 = R$id.adView;
                NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
                if (nativeWrapperAdView != null) {
                    return new f((ConstraintLayout) view, cardView, cardView2, nativeWrapperAdView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.second_floor_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69308a;
    }
}

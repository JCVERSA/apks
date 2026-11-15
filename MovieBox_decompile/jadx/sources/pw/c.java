package pw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

public final class c implements f4.a {

    private final FrameLayout f69289a;

    public final FrameLayout f69290b;

    public final FrameLayout f69291c;

    public final CardView f69292d;

    public final AppCompatImageView f69293e;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, CardView cardView, AppCompatImageView appCompatImageView) {
        this.f69289a = frameLayout;
        this.f69290b = frameLayout2;
        this.f69291c = frameLayout3;
        this.f69292d = cardView;
        this.f69293e = appCompatImageView;
    }

    public static c a(View view) {
        int i10 = R$id.ad_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ad_cover;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                i10 = R$id.cardView;
                CardView cardView = (CardView) f4.b.a(view, i10);
                if (cardView != null) {
                    i10 = R$id.swipe_guide;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        return new c((FrameLayout) view, frameLayout, frameLayout2, cardView, appCompatImageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.native_card_page_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69289a;
    }
}

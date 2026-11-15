package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class z implements f4.a {

    private final CardView f72193a;

    public final CardView f72194b;

    public final AppCompatTextView f72195c;

    public final CardView f72196d;

    public final TextView f72197e;

    public final AppCompatImageView f72198f;

    public final MediaView f72199g;

    public final FrameLayout f72200h;

    public final TextView f72201i;

    private z(CardView cardView, CardView cardView2, AppCompatTextView appCompatTextView, CardView cardView3, TextView textView, AppCompatImageView appCompatImageView, MediaView mediaView, FrameLayout frameLayout, TextView textView2) {
        this.f72193a = cardView;
        this.f72194b = cardView2;
        this.f72195c = appCompatTextView;
        this.f72196d = cardView3;
        this.f72197e = textView;
        this.f72198f = appCompatImageView;
        this.f72199g = mediaView;
        this.f72200h = frameLayout;
        this.f72201i = textView2;
    }

    public static z a(View view) {
        int i10 = R$id.icon_cardview;
        CardView cardView = (CardView) f4.b.a(view, i10);
        if (cardView != null) {
            i10 = R$id.native_ad_action;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                CardView cardView2 = (CardView) view;
                i10 = R$id.native_ad_des;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.native_ad_icon;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.native_ad_media;
                        MediaView mediaView = (MediaView) f4.b.a(view, i10);
                        if (mediaView != null) {
                            i10 = R$id.native_ad_media_container;
                            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R$id.native_ad_title;
                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                if (textView2 != null) {
                                    return new z(cardView2, cardView, appCompatTextView, cardView2, textView, appCompatImageView, mediaView, frameLayout, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static z c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.test_ssp_hi_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public CardView getRoot() {
        return this.f72193a;
    }
}

package pw;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;

public final class d implements f4.a {

    private final CardView f69294a;

    public final CardView f69295b;

    public final AppCompatTextView f69296c;

    public final CardView f69297d;

    public final TextView f69298e;

    public final AppCompatImageView f69299f;

    public final MediaView f69300g;

    public final FrameLayout f69301h;

    public final TextView f69302i;

    private d(CardView cardView, CardView cardView2, AppCompatTextView appCompatTextView, CardView cardView3, TextView textView, AppCompatImageView appCompatImageView, MediaView mediaView, FrameLayout frameLayout, TextView textView2) {
        this.f69294a = cardView;
        this.f69295b = cardView2;
        this.f69296c = appCompatTextView;
        this.f69297d = cardView3;
        this.f69298e = textView;
        this.f69299f = appCompatImageView;
        this.f69300g = mediaView;
        this.f69301h = frameLayout;
        this.f69302i = textView2;
    }

    public static d a(View view) {
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
                                    return new d(cardView2, cardView, appCompatTextView, cardView2, textView, appCompatImageView, mediaView, frameLayout, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.search_hot_hi_native_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public CardView getRoot() {
        return this.f69294a;
    }
}

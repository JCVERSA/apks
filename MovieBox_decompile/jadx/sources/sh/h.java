package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class h implements f4.a {

    private final ScrollView f72122a;

    public final Button f72123b;

    public final Button f72124c;

    public final Button f72125d;

    public final Button f72126e;

    public final Button f72127f;

    public final Button f72128g;

    public final Button f72129h;

    public final Button f72130i;

    public final Button f72131j;

    public final Button f72132k;

    public final Button f72133l;

    private h(ScrollView scrollView, Button button, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11) {
        this.f72122a = scrollView;
        this.f72123b = button;
        this.f72124c = button2;
        this.f72125d = button3;
        this.f72126e = button4;
        this.f72127f = button5;
        this.f72128g = button6;
        this.f72129h = button7;
        this.f72130i = button8;
        this.f72131j = button9;
        this.f72132k = button10;
        this.f72133l = button11;
    }

    public static h a(View view) {
        int i10 = R$id.btnIconAd;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnIrregularAd;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.btnLoadBannerAd;
                Button button3 = (Button) f4.b.a(view, i10);
                if (button3 != null) {
                    i10 = R$id.btnLoadInterstitialAd;
                    Button button4 = (Button) f4.b.a(view, i10);
                    if (button4 != null) {
                        i10 = R$id.btnLoadNativeAd;
                        Button button5 = (Button) f4.b.a(view, i10);
                        if (button5 != null) {
                            i10 = R$id.btnLoadNativeAdMultipleFetch;
                            Button button6 = (Button) f4.b.a(view, i10);
                            if (button6 != null) {
                                i10 = R$id.btnLoadNativeListAd;
                                Button button7 = (Button) f4.b.a(view, i10);
                                if (button7 != null) {
                                    i10 = R$id.btnLoadSSPNativeAdFetch;
                                    Button button8 = (Button) f4.b.a(view, i10);
                                    if (button8 != null) {
                                        i10 = R$id.btnLoadSplashAd;
                                        Button button9 = (Button) f4.b.a(view, i10);
                                        if (button9 != null) {
                                            i10 = R$id.btnLoadVideoAd;
                                            Button button10 = (Button) f4.b.a(view, i10);
                                            if (button10 != null) {
                                                i10 = R$id.btnViewMeasure;
                                                Button button11 = (Button) f4.b.a(view, i10);
                                                if (button11 != null) {
                                                    return new h((ScrollView) view, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11);
                                                }
                                            }
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

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_a_example_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ScrollView getRoot() {
        return this.f72122a;
    }
}

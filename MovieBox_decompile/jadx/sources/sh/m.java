package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class m implements f4.a {

    private final LinearLayout f72144a;

    public final Button f72145b;

    public final Button f72146c;

    public final Button f72147d;

    public final Button f72148e;

    public final Button f72149f;

    public final Button f72150g;

    public final Button f72151h;

    public final Button f72152i;

    private m(LinearLayout linearLayout, Button button, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8) {
        this.f72144a = linearLayout;
        this.f72145b = button;
        this.f72146c = button2;
        this.f72147d = button3;
        this.f72148e = button4;
        this.f72149f = button5;
        this.f72150g = button6;
        this.f72151h = button7;
        this.f72152i = button8;
    }

    public static m a(View view) {
        int i10 = R$id.btnAdExample;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnAdPlanConfig;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.btnGlobalSwitchConfig;
                Button button3 = (Button) f4.b.a(view, i10);
                if (button3 != null) {
                    i10 = R$id.btnNonHitLog;
                    Button button4 = (Button) f4.b.a(view, i10);
                    if (button4 != null) {
                        i10 = R$id.btnOtherConfig;
                        Button button5 = (Button) f4.b.a(view, i10);
                        if (button5 != null) {
                            i10 = R$id.btnPsOfferConfig;
                            Button button6 = (Button) f4.b.a(view, i10);
                            if (button6 != null) {
                                i10 = R$id.btnResetVersion;
                                Button button7 = (Button) f4.b.a(view, i10);
                                if (button7 != null) {
                                    i10 = R$id.btnSceneConfig;
                                    Button button8 = (Button) f4.b.a(view, i10);
                                    if (button8 != null) {
                                        return new m((LinearLayout) view, button, button2, button3, button4, button5, button6, button7, button8);
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

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72144a;
    }
}

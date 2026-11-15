package gm;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;

public final class h implements f4.a {

    private final LinearLayout f61129a;

    public final ImageView f61130b;

    public final ImageView f61131c;

    public final TextView f61132d;

    public final TextView f61133e;

    public final AppCompatEditText f61134f;

    public final GradientBorderView f61135g;

    private h(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, AppCompatEditText appCompatEditText, GradientBorderView gradientBorderView) {
        this.f61129a = linearLayout;
        this.f61130b = imageView;
        this.f61131c = imageView2;
        this.f61132d = textView;
        this.f61133e = textView2;
        this.f61134f = appCompatEditText;
        this.f61135g = gradientBorderView;
    }

    public static h a(View view) {
        int i10 = R$id.promo_code_dialog_close;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.promo_code_input_clear_iv;
            ImageView imageView2 = (ImageView) f4.b.a(view, i10);
            if (imageView2 != null) {
                i10 = R$id.promo_code_input_confirm;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.promo_code_input_error_tips;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        i10 = R$id.promo_code_input_et;
                        AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                        if (appCompatEditText != null) {
                            i10 = R$id.promo_code_title_layout;
                            GradientBorderView gradientBorderView = (GradientBorderView) f4.b.a(view, i10);
                            if (gradientBorderView != null) {
                                return new h((LinearLayout) view, imageView, imageView2, textView, textView2, appCompatEditText, gradientBorderView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f61129a;
    }
}

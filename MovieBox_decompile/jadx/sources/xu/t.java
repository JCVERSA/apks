package xu;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

public final class t implements f4.a {

    private final FrameLayout f75757a;

    public final Button f75758b;

    public final Button f75759c;

    public final RadioButton f75760d;

    public final RadioButton f75761e;

    public final RadioGroup f75762f;

    private t(FrameLayout frameLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.f75757a = frameLayout;
        this.f75758b = button;
        this.f75759c = button2;
        this.f75760d = radioButton;
        this.f75761e = radioButton2;
        this.f75762f = radioGroup;
    }

    public static t a(View view) {
        int i10 = R$id.btnCancel;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnOk;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.radioButtonFpsClose;
                RadioButton radioButton = (RadioButton) f4.b.a(view, i10);
                if (radioButton != null) {
                    i10 = R$id.radioButtonFpsOpen;
                    RadioButton radioButton2 = (RadioButton) f4.b.a(view, i10);
                    if (radioButton2 != null) {
                        i10 = R$id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) f4.b.a(view, i10);
                        if (radioGroup != null) {
                            return new t((FrameLayout) view, button, button2, radioButton, radioButton2, radioGroup);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75757a;
    }
}

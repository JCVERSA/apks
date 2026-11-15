package xu;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

public final class r implements f4.a {

    private final LinearLayout f75734a;

    public final Button f75735b;

    public final Button f75736c;

    public final RadioButton f75737d;

    public final RadioButton f75738e;

    public final RadioButton f75739f;

    public final RadioGroup f75740g;

    private r(LinearLayout linearLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioGroup radioGroup) {
        this.f75734a = linearLayout;
        this.f75735b = button;
        this.f75736c = button2;
        this.f75737d = radioButton;
        this.f75738e = radioButton2;
        this.f75739f = radioButton3;
        this.f75740g = radioGroup;
    }

    public static r a(View view) {
        int i10 = R$id.btnCancel;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnOk;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.radioButtonReset;
                RadioButton radioButton = (RadioButton) f4.b.a(view, i10);
                if (radioButton != null) {
                    i10 = R$id.radioButtonSubject;
                    RadioButton radioButton2 = (RadioButton) f4.b.a(view, i10);
                    if (radioButton2 != null) {
                        i10 = R$id.radioButtonUGCVideo;
                        RadioButton radioButton3 = (RadioButton) f4.b.a(view, i10);
                        if (radioButton3 != null) {
                            i10 = R$id.radioGroup;
                            RadioGroup radioGroup = (RadioGroup) f4.b.a(view, i10);
                            if (radioGroup != null) {
                                return new r((LinearLayout) view, button, button2, radioButton, radioButton2, radioButton3, radioGroup);
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
        return this.f75734a;
    }
}

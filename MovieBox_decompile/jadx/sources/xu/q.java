package xu;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

public final class q implements f4.a {

    private final FrameLayout f75726a;

    public final Button f75727b;

    public final Button f75728c;

    public final RadioButton f75729d;

    public final RadioButton f75730e;

    public final RadioGroup f75731f;

    private q(FrameLayout frameLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.f75726a = frameLayout;
        this.f75727b = button;
        this.f75728c = button2;
        this.f75729d = radioButton;
        this.f75730e = radioButton2;
        this.f75731f = radioGroup;
    }

    public static q a(View view) {
        int i10 = R$id.btnCancel;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnOk;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.radioButtonGP;
                RadioButton radioButton = (RadioButton) f4.b.a(view, i10);
                if (radioButton != null) {
                    i10 = R$id.radioButtonPS;
                    RadioButton radioButton2 = (RadioButton) f4.b.a(view, i10);
                    if (radioButton2 != null) {
                        i10 = R$id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) f4.b.a(view, i10);
                        if (radioGroup != null) {
                            return new q((FrameLayout) view, button, button2, radioButton, radioButton2, radioGroup);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75726a;
    }
}

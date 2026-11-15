package xu;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

public final class z implements f4.a {

    private final FrameLayout f75843a;

    public final Button f75844b;

    public final Button f75845c;

    public final RadioButton f75846d;

    public final RadioButton f75847e;

    public final RadioGroup f75848f;

    private z(FrameLayout frameLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.f75843a = frameLayout;
        this.f75844b = button;
        this.f75845c = button2;
        this.f75846d = radioButton;
        this.f75847e = radioButton2;
        this.f75848f = radioGroup;
    }

    public static z a(View view) {
        int i10 = R$id.btnCancel;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnOk;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.radioButtonDownload;
                RadioButton radioButton = (RadioButton) f4.b.a(view, i10);
                if (radioButton != null) {
                    i10 = R$id.radioButtonStream;
                    RadioButton radioButton2 = (RadioButton) f4.b.a(view, i10);
                    if (radioButton2 != null) {
                        i10 = R$id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) f4.b.a(view, i10);
                        if (radioGroup != null) {
                            return new z((FrameLayout) view, button, button2, radioButton, radioButton2, radioGroup);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75843a;
    }
}

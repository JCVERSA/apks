package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.comm.widget.NickNameInput;

public class rq7 {
    public d a;
    public a b;
    public NickNameInput c;
    public Button d;

    public interface a {
    }

    public class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            rq7 rq7Var = rq7.this;
            rq7Var.d.setEnabled(rq7Var.c.getText().length() > 0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }
}

package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import java.util.Locale;

public class e {
    public com.transsion.widgetslib.dialog.d a;
    public EditText b;
    public Button c;
    public TextView d;
    public View e;
    public View f;
    public Context g;
    public b h;

    public class a implements View.OnFocusChangeListener {
        public a() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            int i = z ? R.color.xn_line_s : R.color.xn_line;
            e eVar = e.this;
            eVar.e.setBackgroundColor(eVar.g.getResources().getColor(i));
        }
    }

    public interface b {
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            e.this.d.setText(String.format(Locale.getDefault(), "%d / %d", Integer.valueOf(editable.toString().length()), 50));
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i3 < 0 || charSequence.toString().trim().length() <= 0) {
                e.this.f.setVisibility(4);
            } else {
                e.this.f.setVisibility(0);
            }
        }
    }
}

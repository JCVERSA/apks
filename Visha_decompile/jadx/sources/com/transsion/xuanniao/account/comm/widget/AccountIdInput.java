package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.xuanniao.account.R;
import java.util.Locale;

public class AccountIdInput extends FrameLayout {
    public EditText OppO00p;
    public View OppO0O0;
    public TextView OppO0OO;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            AccountIdInput.this.OppO00p.setText("");
        }
    }

    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            AccountIdInput.this.findViewById(R.id.line).setBackgroundColor(AccountIdInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            AccountIdInput.this.OppO0OO.setText(String.format(Locale.getDefault(), "%d / %d", Integer.valueOf(AccountIdInput.this.getText().length()), 50));
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i3 < 0 || charSequence.toString().trim().length() <= 0) {
                AccountIdInput.this.OppO0O0.setVisibility(4);
            } else {
                AccountIdInput.this.OppO0O0.setVisibility(0);
            }
        }
    }

    public AccountIdInput(@NonNull Context context) {
        super(context);
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.line).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        if (string != null && !string.isEmpty()) {
            ((EditText) findViewById(R.id.edit)).setHint(string);
        }
        typedArray.recycle();
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public void setText(String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
    }

    public AccountIdInput(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_account_id_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO00p();
    }

    public final void OppO00p() {
        View viewFindViewById = findViewById(R.id.xn_delete_all);
        this.OppO0O0 = viewFindViewById;
        viewFindViewById.setOnClickListener(new a());
        this.OppO0OO = (TextView) findViewById(R.id.num);
        EditText editText = (EditText) findViewById(R.id.edit);
        this.OppO00p = editText;
        editText.setOnFocusChangeListener(new b());
        this.OppO00p.addTextChangedListener(new c());
    }
}

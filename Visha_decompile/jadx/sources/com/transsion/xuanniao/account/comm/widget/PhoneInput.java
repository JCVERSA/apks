package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.BidiFormatter;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import defpackage.bp7;
import defpackage.c39;
import defpackage.rm7;
import org.slf4j.Marker;

public class PhoneInput extends FrameLayout {
    public EditText OppO00p;
    public TextView OppO0O0;
    public d OppO0OO;
    public b OppO0Op;
    public BidiFormatter OppO0p0;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            d dVar;
            if (view.getId() != R.id.cc || (dVar = PhoneInput.this.OppO0OO) == null) {
                return;
            }
            dVar.a();
        }
    }

    public interface b {
    }

    public class c implements View.OnFocusChangeListener {
        public c() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            View viewFindViewById = PhoneInput.this.findViewById(R.id.line);
            View viewFindViewById2 = PhoneInput.this.findViewById(R.id.ccLine);
            int i = z ? R.color.xn_line_s : R.color.xn_line;
            viewFindViewById.setBackgroundColor(PhoneInput.this.getResources().getColor(i));
            viewFindViewById2.setBackgroundColor(PhoneInput.this.getResources().getColor(i));
            b bVar = PhoneInput.this.OppO0Op;
            if (bVar != null) {
                ((bp7) bVar).a.s = z;
            }
            PhoneInput.this.OppO0O0.setTextAppearance(z ? R.style.font_black_14 : R.style.font_black_14_t40);
        }
    }

    public interface d {
        void a();
    }

    public class e implements TextWatcher {
        public e(PhoneInput phoneInput) {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public PhoneInput(Context context) {
        super(context);
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.line).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        this.OppO00p = (EditText) findViewById(R.id.edit);
        if (string != null && !string.isEmpty()) {
            this.OppO00p.setHint(string);
        }
        int integer = typedArray.getInteger(R.styleable.InputView_max_length, -1);
        if (integer >= 0) {
            this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(integer)});
        }
        typedArray.recycle();
    }

    public String getCc() {
        return this.OppO0O0.getText().toString();
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public void setCc(String str) {
        this.OppO0O0.setText(this.OppO0p0.unicodeWrap(str, TextDirectionHeuristics.LTR));
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            return;
        }
        int length = str.trim().length();
        if (length == 2) {
            this.OppO0O0.setPadding(c39.a(16.0f), 0, c39.a(10.0f), 0);
            return;
        }
        if (length == 3) {
            this.OppO0O0.setPadding(c39.a(10.0f), 0, c39.a(8.0f), 0);
        } else if (length == 4) {
            this.OppO0O0.setPadding(c39.a(5.0f), 0, c39.a(4.0f), 0);
        } else {
            if (length != 5) {
                return;
            }
            this.OppO0O0.setPadding(c39.a(1.0f), 0, c39.a(0.0f), 0);
        }
    }

    public void setEditFocus(b bVar) {
        this.OppO0Op = bVar;
    }

    public void setInputListener(d dVar) {
        this.OppO0OO = dVar;
    }

    public void setPhoneAndCC(String str) {
        if (str == null || !str.contains("-")) {
            return;
        }
        String[] strArrSplit = str.split("-");
        if (strArrSplit.length == 2) {
            setText(strArrSplit[1]);
            setCc(Marker.ANY_NON_NULL_MARKER + strArrSplit[0]);
        }
    }

    public void setText(String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
    }

    public PhoneInput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_phone_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO00p();
    }

    public final void OppO00p() {
        this.OppO0p0 = BidiFormatter.getInstance();
        EditText editText = (EditText) findViewById(R.id.edit);
        this.OppO00p = editText;
        editText.addTextChangedListener(new e(this));
        TextView textView = (TextView) findViewById(R.id.cc);
        this.OppO0O0 = textView;
        textView.setOnClickListener(new a());
        this.OppO00p.setOnFocusChangeListener(new c());
    }
}

package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.pwd.view.SetPwdActivity;
import defpackage.yk7;

public class PasswordInput extends FrameLayout {
    public AppCompatImageView OppO00p;
    public boolean OppO0O0;
    public EditText OppO0OO;
    public AppCompatImageView OppO0Op;
    public boolean OppO0p;
    public b OppO0p0;

    public class a implements InputFilter {
        public a() {
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (i >= charSequence.length()) {
                return null;
            }
            PasswordInput passwordInput = PasswordInput.this;
            if (passwordInput.OppO0p ? passwordInput.getContext().getString(R.string.xn_pwd_digits).contains(String.valueOf(charSequence.charAt(i))) : true) {
                return null;
            }
            return "";
        }
    }

    public interface b {
    }

    public class c implements View.OnFocusChangeListener {
        public c() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            PasswordInput.this.findViewById(R.id.line).setBackgroundColor(PasswordInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
            b bVar = PasswordInput.this.OppO0p0;
            if (bVar != null) {
                yk7 yk7Var = (yk7) bVar;
                SetPwdActivity setPwdActivity = yk7Var.a;
                if (setPwdActivity.m) {
                    if (setPwdActivity.D0()) {
                        yk7Var.a.g.setVisibility(0);
                        SetPwdActivity setPwdActivity2 = yk7Var.a;
                        setPwdActivity2.g.setErrorText(setPwdActivity2.getString(R.string.xn_pwd_not_same));
                        yk7Var.a.findViewById(R.id.savePwdBtn).setEnabled(false);
                    } else {
                        yk7Var.a.g.setVisibility(4);
                    }
                }
            }
            PasswordInput.this.OppO0Op.getDrawable().setTint(PasswordInput.this.getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
            PasswordInput.this.OppO00p.getDrawable().setTint(PasswordInput.this.getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
        }
    }

    public PasswordInput(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.line).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        EditText editText = (EditText) findViewById(R.id.password_view);
        if (!TextUtils.isEmpty(string)) {
            editText.setHint(string);
        }
        typedArray.recycle();
    }

    public final void b(View view) {
        int i;
        Editable text = this.OppO0OO.getText();
        if (this.OppO0O0) {
            this.OppO0O0 = false;
            this.OppO00p.setImageResource(R.drawable.xn_password_invisible);
            i = 524417;
        } else {
            this.OppO0O0 = true;
            this.OppO00p.setImageResource(R.drawable.xn_password_visible);
            i = 524432;
        }
        this.OppO00p.getDrawable().setTint(getResources().getColor(this.OppO0OO.isFocused() ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
        this.OppO0OO.setInputType(i);
        if (text != null && text.length() > 0) {
            this.OppO0OO.setSelection(text.length());
        }
        this.OppO0OO.setTypeface(Typeface.SANS_SERIF);
        this.OppO0OO.requestFocus();
    }

    public EditText getEdit() {
        return this.OppO0OO;
    }

    public b getFocusChange() {
        return this.OppO0p0;
    }

    public String getText() {
        return this.OppO0OO.getText().toString();
    }

    public void setFocusChange(b bVar) {
        this.OppO0p0 = bVar;
    }

    public void setNeedCheck(boolean z) {
        this.OppO0p = z;
    }

    public void setOpenEye(boolean z) {
        this.OppO0O0 = z;
    }

    public void setPwdLogoVisible(int i) {
        this.OppO0Op.setVisibility(i);
    }

    public void setText(String str) {
        this.OppO0OO.setText(str);
        this.OppO0OO.setSelection(this.OppO0OO.getText().length());
    }

    public PasswordInput(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OppO0p = false;
        this.OppO0O0 = false;
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_password_input_layout, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO00p();
    }

    public final void OppO00p() {
        this.OppO00p = (AppCompatImageView) findViewById(R.id.eyeView);
        this.OppO0OO = (EditText) findViewById(R.id.password_view);
        this.OppO0Op = (AppCompatImageView) findViewById(R.id.pwdLogo);
        this.OppO00p.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.b(view);
            }
        });
        this.OppO0OO.setTypeface(Typeface.SANS_SERIF);
        this.OppO0OO.setOnFocusChangeListener(new c());
        this.OppO0OO.setFilters(new InputFilter[]{new a(), new InputFilter.LengthFilter(16)});
    }
}

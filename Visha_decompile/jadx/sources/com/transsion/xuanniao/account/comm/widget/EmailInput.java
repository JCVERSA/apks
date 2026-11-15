package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.GravityCompat;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.xuanniao.account.R;
import defpackage.c39;
import defpackage.ln7;

public class EmailInput extends FrameLayout {
    public EditText OppO00p;
    public PopupWindow OppO0O0;
    public ln7 OppO0OO;
    public boolean OppO0Op;
    public c OppO0p;
    public b OppO0p0;
    public int OppO0pO;

    public class OppO0O0 implements Runnable {
        public OppO0O0() {
        }

        @Override
        public void run() {
            try {
                if (TextUtils.isEmpty(EmailInput.this.getText())) {
                    return;
                }
                EmailInput emailInput = EmailInput.this;
                if (emailInput.OppO0OO.b(emailInput.getText())) {
                    EmailInput emailInput2 = EmailInput.this;
                    emailInput2.OppO0O0.showAsDropDown(emailInput2.findViewById(R.id.line), 0, c39.a(6.0f), GravityCompat.START);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        @Override
        public void onDismiss() {
            b bVar = EmailInput.this.OppO0p0;
            if (bVar != null) {
                bVar.q(false);
            }
        }
    }

    public interface b {
        void q(boolean z);
    }

    public interface c {
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            EmailInput.this.findViewById(R.id.line).setBackgroundColor(EmailInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
            if (!z) {
                EmailInput.this.OppO00p();
            }
            ((AppCompatImageView) EmailInput.this.findViewById(R.id.logo)).getDrawable().setTint(EmailInput.this.getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
            EmailInput.this.getClass();
        }
    }

    public class e implements TextWatcher {
        public e() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            int length = editable.length();
            EmailInput emailInput = EmailInput.this;
            if (length - emailInput.OppO0pO > 1 || !emailInput.OppO00p.hasFocus()) {
                return;
            }
            EmailInput.this.OppO0Op();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            EmailInput emailInput = EmailInput.this;
            emailInput.OppO0pO = emailInput.getText().length();
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public EmailInput(Context context) {
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

    public final void OppO0O0() {
        EditText editText = (EditText) findViewById(R.id.edit);
        this.OppO00p = editText;
        editText.setOnFocusChangeListener(new d());
        this.OppO00p.addTextChangedListener(new e());
    }

    public boolean OppO0OO() {
        PopupWindow popupWindow = this.OppO0O0;
        if (popupWindow != null) {
            return popupWindow.isShowing();
        }
        return false;
    }

    public void OppO0Op() {
        if (this.OppO0Op) {
            this.OppO0Op = false;
            return;
        }
        PopupWindow popupWindow = this.OppO0O0;
        if (popupWindow == null || !popupWindow.isShowing()) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.xn_email_association, (ViewGroup) null);
            PopupWindow popupWindow2 = new PopupWindow(getContext(), (AttributeSet) null, 0, R.style.OsListPopupWindowStyle);
            this.OppO0O0 = popupWindow2;
            popupWindow2.setInputMethodMode(1);
            this.OppO0O0.setWidth(c39.f() - c39.a(32.0f));
            this.OppO0O0.setContentView(viewInflate);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
            ln7 ln7Var = new ln7(getContext());
            this.OppO0OO = ln7Var;
            listView.setAdapter((ListAdapter) ln7Var);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.b.b(adapterView, view, i, j);
                }
            });
            this.OppO0O0.setOnDismissListener(new a());
            OverScrollDecorHelper.setUpOverScroll(listView);
        }
        boolean zB = this.OppO0OO.b(getText());
        if (this.OppO0O0.isShowing()) {
            if (zB) {
                return;
            }
            this.OppO0O0.dismiss();
        } else if (zB) {
            b bVar = this.OppO0p0;
            if (bVar != null) {
                bVar.q(true);
            }
            findViewById(R.id.line).postDelayed(new OppO0O0(), 200L);
        }
    }

    public final void b(AdapterView adapterView, View view, int i, long j) {
        this.OppO0Op = true;
        setText(this.OppO0OO.a(i));
        this.OppO0O0.dismiss();
    }

    public b getAssociationListener() {
        return this.OppO0p0;
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public PopupWindow getEmailAssociation() {
        return this.OppO0O0;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public void setAssociationListener(b bVar) {
        this.OppO0p0 = bVar;
    }

    public void setEditFocusListener(c cVar) {
    }

    public void setEmailAssociation(PopupWindow popupWindow) {
        this.OppO0O0 = popupWindow;
    }

    public void setText(String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
        OppO00p();
    }

    public EmailInput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_email_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO0O0();
    }

    public void OppO00p() {
        PopupWindow popupWindow = this.OppO0O0;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.OppO0O0.dismiss();
    }
}

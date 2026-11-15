package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.BidiFormatter;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.GravityCompat;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.xuanniao.account.R;
import defpackage.c39;
import defpackage.ln7;
import defpackage.rm7;
import defpackage.rp7;
import defpackage.xj;

public class AccountInput extends FrameLayout {
    public boolean OppO;
    public EditText OppO00p;
    public RelativeLayout OppO0O0;
    public TextView OppO0OO;
    public d OppO0Op;
    public ImageView OppO0p;
    public boolean OppO0p0;
    public PopupWindow OppO0pO;
    public ln7 OppO0pp;
    public b OppOO0;
    public BidiFormatter OppOO0O;
    public boolean OppOO0p;

    public int f29OppOOO0;

    public class OppO00p implements Runnable {
        public OppO00p() {
        }

        @Override
        public void run() {
            try {
                AccountInput accountInput = AccountInput.this;
                if (!accountInput.OppOO0p || TextUtils.isEmpty(accountInput.getText())) {
                    return;
                }
                AccountInput accountInput2 = AccountInput.this;
                if (accountInput2.OppO0pp.b(accountInput2.getText())) {
                    AccountInput accountInput3 = AccountInput.this;
                    accountInput3.OppO0pO.showAsDropDown(accountInput3.findViewById(R.id.line), 0, c39.a(0.0f), GravityCompat.START);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            d dVar;
            if (view.getId() != R.id.cc || (dVar = AccountInput.this.OppO0Op) == null) {
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
            View viewFindViewById = AccountInput.this.findViewById(R.id.line);
            int i = z ? R.color.xn_line_s : R.color.xn_line;
            viewFindViewById.setBackgroundColor(AccountInput.this.getResources().getColor(i));
            AccountInput.this.findViewById(R.id.line1).setBackgroundColor(AccountInput.this.getResources().getColor(i));
            if (!z) {
                AccountInput accountInput = AccountInput.this;
                if (!accountInput.OppO0p0 && !TextUtils.isEmpty(accountInput.getText())) {
                    AccountInput accountInput2 = AccountInput.this;
                    xj.U(AccountInput.this.getContext()).a(accountInput2.OppO0O0(accountInput2.getText()) ? "Phone" : "Mail", AccountInput.this.getText().length());
                }
                AccountInput.this.OppO00p();
            }
            AccountInput.this.setLogoColor(z);
            b bVar = AccountInput.this.OppOO0;
            if (bVar != null) {
                ((rp7) bVar).a.j.s = System.currentTimeMillis();
            }
        }
    }

    public interface d {
        void a();
    }

    public class e implements TextWatcher {
        public e() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            AccountInput.this.OppO00p(editable.length() - AccountInput.this.f29OppOOO0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AccountInput accountInput = AccountInput.this;
            accountInput.f29OppOOO0 = accountInput.getText().length();
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public AccountInput(@NonNull Context context) {
        super(context);
        this.OppOO0p = false;
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
        this.OppO00p = (EditText) findViewById(R.id.edit);
        this.OppO0O0 = (RelativeLayout) findViewById(R.id.accountLeftL);
        this.OppO0OO = (TextView) findViewById(R.id.cc);
        this.OppO0p = (ImageView) findViewById(R.id.logo);
        this.OppO0OO.setOnClickListener(new a());
        this.OppO00p.setOnFocusChangeListener(new c());
        this.OppO00p.addTextChangedListener(new e());
    }

    public void OppO0OO() {
        if (this.OppO) {
            this.OppO = false;
            return;
        }
        PopupWindow popupWindow = this.OppO0pO;
        if (popupWindow == null || !popupWindow.isShowing()) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.xn_email_association, (ViewGroup) null);
            PopupWindow popupWindow2 = new PopupWindow(getContext(), (AttributeSet) null, 0, R.style.OsListPopupWindowStyle);
            this.OppO0pO = popupWindow2;
            popupWindow2.setInputMethodMode(1);
            this.OppO0pO.setWidth(c39.f() - c39.a(32.0f));
            this.OppO0pO.setContentView(viewInflate);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
            ln7 ln7Var = new ln7(getContext());
            this.OppO0pp = ln7Var;
            listView.setAdapter((ListAdapter) ln7Var);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.b.b(adapterView, view, i, j);
                }
            });
            OverScrollDecorHelper.setUpOverScroll(listView);
        }
        boolean zB = this.OppO0pp.b(getText());
        if (this.OppO0pO.isShowing()) {
            if (zB) {
                return;
            }
            this.OppO0pO.dismiss();
        } else if (zB) {
            findViewById(R.id.line).postDelayed(new OppO00p(), 200L);
        }
    }

    public final void b(AdapterView adapterView, View view, int i, long j) {
        this.OppO = true;
        setText(this.OppO0pp.a(i));
        this.OppO0pO.dismiss();
    }

    public String getCc() {
        return this.OppO0OO.getText().toString();
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public int getType() {
        if (OppO0O0(getText())) {
            return 3;
        }
        return OppO00p(getText()) ? 2 : 1;
    }

    public void setCanShowPopView(boolean z) {
        this.OppOO0p = z;
    }

    public void setCc(String str) {
        this.OppO0OO.setText(this.OppOO0O.unicodeWrap(str, TextDirectionHeuristics.LTR));
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            return;
        }
        int length = str.trim().length();
        if (length == 2) {
            this.OppO0OO.setPadding(c39.a(16.0f), 0, c39.a(10.0f), 0);
            return;
        }
        if (length == 3) {
            this.OppO0OO.setPadding(c39.a(10.0f), 0, c39.a(8.0f), 0);
        } else if (length == 4) {
            this.OppO0OO.setPadding(c39.a(6.0f), 0, c39.a(5.0f), 0);
        } else {
            if (length != 5) {
                return;
            }
            this.OppO0OO.setPadding(c39.a(2.0f), 0, c39.a(1.0f), 0);
        }
    }

    public void setEditFocus(b bVar) {
        this.OppOO0 = bVar;
    }

    public void setHint(String str) {
        this.OppO00p.setHint(str);
    }

    public void setInputListener(d dVar) {
        this.OppO0Op = dVar;
    }

    public void setLogoColor(boolean z) {
        ((AppCompatImageView) findViewById(R.id.logo)).getDrawable().setTint(getResources().getColor(z ? R.color.xn_input_logo_color_s : R.color.xn_input_logo_color, null));
        this.OppO0OO.setTextAppearance(z ? R.style.font_black_14 : R.style.font_black_14_t40);
    }

    public void setOnlyPhoneNum() {
        this.OppO00p.setHint(R.string.xn_phone_num);
        this.OppO00p.setInputType(3);
        this.OppO00p.setKeyListener(DigitsKeyListener.getInstance("0123456789"));
    }

    public void setSupportUserName(boolean z) {
        this.OppO0p0 = z;
        OppO00p(2);
    }

    public void setText(String str) {
        if (OppO00p(str)) {
            this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(100)});
        } else if (OppO0O0(str)) {
            this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(15)});
        } else {
            this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(50)});
        }
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
    }

    public AccountInput(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OppOO0p = false;
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_account_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO0O0();
        this.OppOO0O = BidiFormatter.getInstance();
    }

    public boolean OppO0O0(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 3) {
            return false;
        }
        return str.matches("[0-9]+");
    }

    public void OppO00p() {
        PopupWindow popupWindow = this.OppO0pO;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.OppO0pO.dismiss();
    }

    public final void OppO00p(int i) {
        if (OppO0O0(getText())) {
            this.OppO0p.setVisibility(8);
            this.OppO0O0.setVisibility(0);
            PopupWindow popupWindow = this.OppO0pO;
            if (popupWindow != null && popupWindow.isShowing()) {
                this.OppO0pO.dismiss();
            }
            this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(15)});
            return;
        }
        if (OppO00p(getText())) {
            this.OppO0p.setVisibility(0);
            this.OppO0O0.setVisibility(8);
            this.OppO0p.setImageResource(R.drawable.xn_icon_email);
            if (i <= 1) {
                OppO0OO();
            }
            this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(100)});
            setLogoColor(true);
            return;
        }
        this.OppO0p.setVisibility(0);
        this.OppO0O0.setVisibility(8);
        this.OppO0p.setImageResource(R.drawable.xn_icon_account);
        PopupWindow popupWindow2 = this.OppO0pO;
        if (popupWindow2 != null && popupWindow2.isShowing()) {
            this.OppO0pO.dismiss();
        }
        this.OppO00p.setFilters(new InputFilter[]{new InputFilter.LengthFilter(50)});
        setLogoColor(true);
    }

    public final boolean OppO00p(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.OppO0p0) {
            return str.contains("@");
        }
        return !(TextUtils.isEmpty(str) ? false : str.matches("[0-9]+"));
    }
}

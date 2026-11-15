package com.transsion.tools.fragments;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import defpackage.a64;
import defpackage.hb0;
import defpackage.r0a;
import defpackage.tg8;

public class PasswordSettingFragment extends BaseFragment implements View.OnClickListener {
    public TextView l;
    public TextView m;
    public int n;
    public View o;
    public View p;
    public View q;
    public String r;
    public EditText s;
    public EditText t;

    public class a implements View.OnClickListener {
        public final ImageView b;

        public a(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void onClick(View view) {
            ImageView imageView = this.b;
            imageView.setSelected(!imageView.isSelected());
            if (this.b.isSelected()) {
                PasswordSettingFragment.this.s.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                PasswordSettingFragment.this.s.setSelection(PasswordSettingFragment.this.s.getText().length());
            } else {
                PasswordSettingFragment.this.s.setTransformationMethod(PasswordTransformationMethod.getInstance());
                PasswordSettingFragment.this.s.setSelection(PasswordSettingFragment.this.s.getText().length());
            }
        }
    }

    public class b implements View.OnFocusChangeListener {
        public final TextView b;

        public b(TextView textView) {
            this.b = textView;
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            if (z) {
                return;
            }
            if (PasswordSettingFragment.this.s.getText().length() < 6) {
                this.b.setVisibility(0);
                this.b.setText(R.string.privacy_password_error_2);
            } else {
                PasswordSettingFragment passwordSettingFragment = PasswordSettingFragment.this;
                passwordSettingFragment.r = passwordSettingFragment.s.getText().toString();
            }
        }
    }

    public class c implements TextWatcher {
        public final TextView b;

        public c(TextView textView) {
            this.b = textView;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (r0a.g(editable)) {
                return;
            }
            PasswordSettingFragment.this.l.setEnabled(editable.length() == 6 && !r0a.g(PasswordSettingFragment.this.t.getText()) && PasswordSettingFragment.this.t.getText().length() == 6);
            this.b.setVisibility(4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class d implements View.OnClickListener {
        public final ImageView b;

        public d(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void onClick(View view) {
            ImageView imageView = this.b;
            imageView.setSelected(!imageView.isSelected());
            if (this.b.isSelected()) {
                PasswordSettingFragment.this.t.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                PasswordSettingFragment.this.t.setSelection(PasswordSettingFragment.this.t.getText().length());
            } else {
                PasswordSettingFragment.this.t.setTransformationMethod(PasswordTransformationMethod.getInstance());
                PasswordSettingFragment.this.t.setSelection(PasswordSettingFragment.this.t.getText().length());
            }
        }
    }

    public class e implements View.OnFocusChangeListener {
        public e() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            if (z || PasswordSettingFragment.this.t.getText().length() >= 6) {
                return;
            }
            PasswordSettingFragment.this.m.setVisibility(0);
            PasswordSettingFragment.this.m.setText(R.string.privacy_password_error_2);
        }
    }

    public class f implements TextWatcher {
        public f() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (r0a.g(editable)) {
                return;
            }
            PasswordSettingFragment.this.l.setEnabled(editable.length() == 6 && !r0a.g(PasswordSettingFragment.this.s.getText()) && PasswordSettingFragment.this.s.getText().length() == 6);
            PasswordSettingFragment.this.m.setVisibility(4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class g implements TextView.OnEditorActionListener {
        public g() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 1) {
                return false;
            }
            PasswordSettingFragment.this.V();
            return false;
        }
    }

    private void X(View view) {
        ((TextView) view.findViewById(R.id.title_bar_title)).setText(this.n == 1 ? R.string.privacy_set_password : R.string.privacy_reset_password);
    }

    private void Y(View view) {
        TextView textView = (TextView) view.findViewById(R.id.btn_next);
        this.l = textView;
        textView.setOnClickListener(this);
        View viewFindViewById = view.findViewById(R.id.title_bar_back);
        this.q = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
    }

    public static PasswordSettingFragment Z(int i) {
        PasswordSettingFragment passwordSettingFragment = new PasswordSettingFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("privacy_setting_mode", i);
        passwordSettingFragment.setArguments(bundle);
        return passwordSettingFragment;
    }

    public void V() {
        if (this.t.getText().length() != 6 || !TextUtils.equals(this.t.getText().toString(), this.s.getText())) {
            this.l.setEnabled(false);
            this.m.setVisibility(0);
            this.m.setText(R.string.privacy_password_error_3);
            return;
        }
        int i = this.n;
        if (i == 1) {
            EmailSettingFragment emailSettingFragment = (EmailSettingFragment) EmailSettingFragment.b0(i, this.s.getText().toString()).setBaseActivity(this.mActivity);
            emailSettingFragment.setNeedBg(true);
            a64.n(emailSettingFragment, true, true);
        } else {
            tg8.d().k(this.s.getText().toString());
            PasswordSuccessFragment passwordSuccessFragment = (PasswordSuccessFragment) PasswordSuccessFragment.P(this.n).setBaseActivity(this.mActivity);
            passwordSuccessFragment.setNeedBg(true);
            a64.n(passwordSuccessFragment, true, true);
            hideSoftPanel(this.t);
        }
    }

    public final void W(View view) {
        View viewFindViewById = view.findViewById(R.id.password_enter);
        this.o = viewFindViewById;
        int i = R.id.et_password;
        this.s = (EditText) viewFindViewById.findViewById(i);
        View view2 = this.o;
        int i2 = R.id.iv_hide_password;
        ImageView imageView = (ImageView) view2.findViewById(i2);
        View view3 = this.o;
        int i3 = R.id.tv_message;
        TextView textView = (TextView) view3.findViewById(i3);
        imageView.setOnClickListener(new a(imageView));
        this.s.postDelayed(new Runnable() {
            @Override
            public void run() {
                PasswordSettingFragment passwordSettingFragment = PasswordSettingFragment.this;
                passwordSettingFragment.showSoftPanel(passwordSettingFragment.s);
            }
        }, 300L);
        this.s.setOnFocusChangeListener(new b(textView));
        this.s.addTextChangedListener(new c(textView));
        View viewFindViewById2 = view.findViewById(R.id.password_confirm);
        this.p = viewFindViewById2;
        this.t = (EditText) viewFindViewById2.findViewById(i);
        ImageView imageView2 = (ImageView) this.p.findViewById(i2);
        imageView2.setOnClickListener(new d(imageView2));
        this.m = (TextView) this.p.findViewById(i3);
        this.t.setOnFocusChangeListener(new e());
        this.t.addTextChangedListener(new f());
        this.t.setOnEditorActionListener(new g());
        View view4 = this.o;
        int i4 = R.id.tv_password;
        ((TextView) view4.findViewById(i4)).setText(this.n == 1 ? R.string.privacy_enter_password : R.string.privacy_enter_new_password);
        ((TextView) this.p.findViewById(i4)).setText(this.n == 1 ? R.string.privacy_confirm_password : R.string.privacy_confirm_new_password);
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_next) {
            V();
        } else if (id == R.id.title_bar_back) {
            if (this.n != 2) {
                this.mActivity.onBackPressed();
            } else {
                a64.a((BaseActivity) this.mContext);
            }
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.n = arguments.getInt("privacy_setting_mode");
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_password_setting;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        Y(view);
        X(view);
        W(view);
        hb0.markTrackSingle("vd_more_hide_pwset_show", "type", Integer.valueOf(this.n != 1 ? 0 : 1));
    }
}

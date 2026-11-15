package com.transsion.tools.fragments;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import defpackage.a64;
import defpackage.bg5;
import defpackage.hb0;
import defpackage.jf;
import defpackage.sv4;
import defpackage.tg8;

public class EmailSettingFragment extends BaseFragment implements View.OnClickListener {
    public TextView l;
    public TextView m;
    public TextView n;
    public TextView o;
    public View p;
    public EditText q;
    public int r;
    public String s;
    public long t;

    public class a implements TextView.OnEditorActionListener {
        public a() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 6) {
                return false;
            }
            EmailSettingFragment.this.U();
            return false;
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            EmailSettingFragment.this.l.setEnabled(editable.length() > 0);
            EmailSettingFragment.this.n.setVisibility(4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class c implements sv4 {
        public final d a;

        public c(d dVar) {
            this.a = dVar;
        }

        @Override
        public void a(int i) {
        }

        @Override
        public void b() {
            this.a.dismiss();
            ToastUtils.s(R.string.privacy_send_verify_code_toast);
            a64.n((EmailVerifyFragment) EmailVerifyFragment.f0(EmailSettingFragment.this.q.getText().toString()).setBaseActivity(((BaseFragment) EmailSettingFragment.this).mActivity), true, true);
        }

        @Override
        public void c() {
        }

        @Override
        public void d() {
            this.a.dismiss();
            EmailSettingFragment.this.l.setEnabled(false);
            EmailSettingFragment.this.n.setVisibility(0);
            EmailSettingFragment.this.n.setText(R.string.privacy_email_error);
        }
    }

    public static String W(String str) {
        int iIndexOf;
        if (TextUtils.isEmpty(str) || (iIndexOf = str.indexOf("@")) == -1) {
            return "";
        }
        String strSubstring = str.substring(iIndexOf);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            sb.append("*");
        }
        sb.append(strSubstring);
        return sb.toString();
    }

    private void Y(View view) {
        TextView textView = (TextView) view.findViewById(R.id.title_bar_title);
        int i = this.r;
        textView.setText((i == 1 || i == 5) ? com.transsion.playercommon.R.string.privacy_add_new_email_title : R.string.privacy_password_retrieve_title);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_hint);
        this.m = textView2;
        int i2 = this.r;
        textView2.setText((i2 == 1 || i2 == 5) ? getString(R.string.privacy_email_add_hint) : getString(R.string.privacy_email_retrieve_hint, W(tg8.d().c())));
    }

    private void Z(View view) {
        TextView textView = (TextView) view.findViewById(R.id.btn_next);
        this.l = textView;
        textView.setOnClickListener(this);
        View viewFindViewById = view.findViewById(R.id.title_bar_back);
        this.p = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.n = (TextView) view.findViewById(R.id.tv_message);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_email_forget);
        this.o = textView2;
        textView2.setOnClickListener(this);
        this.o.setVisibility(this.r != 2 ? 8 : 0);
    }

    public static EmailSettingFragment a0(int i) {
        EmailSettingFragment emailSettingFragment = new EmailSettingFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("privacy_setting_mode", i);
        emailSettingFragment.setArguments(bundle);
        return emailSettingFragment;
    }

    public static EmailSettingFragment b0(int i, String str) {
        EmailSettingFragment emailSettingFragment = new EmailSettingFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("privacy_setting_mode", i);
        bundle.putString("privacy_password", str);
        emailSettingFragment.setArguments(bundle);
        return emailSettingFragment;
    }

    public void U() {
        int i = this.r;
        if (i == 1) {
            if (!V(this.q.getText().toString())) {
                this.l.setEnabled(false);
                this.n.setVisibility(0);
                this.n.setText(R.string.privacy_email_format_error);
                return;
            } else {
                tg8.d().k(this.s);
                tg8.d().j(this.q.getText().toString());
                PasswordSuccessFragment passwordSuccessFragment = (PasswordSuccessFragment) PasswordSuccessFragment.P(this.r).setBaseActivity(this.mActivity);
                passwordSuccessFragment.setNeedBg(true);
                a64.n(passwordSuccessFragment, true, true);
                hideSoftPanel(this.q);
                return;
            }
        }
        if (i != 5) {
            if (TextUtils.equals(tg8.d().c(), this.q.getText().toString())) {
                tg8.d().l(this.q.getText().toString(), new c(new com.transsion.widgetslib.dialog.b(this.mContext).c(R.string.privacy_verifying).e()));
                return;
            } else {
                this.l.setEnabled(false);
                this.n.setVisibility(0);
                this.n.setText(R.string.privacy_email_error_2);
                return;
            }
        }
        if (!V(this.q.getText().toString())) {
            this.l.setEnabled(false);
            this.n.setVisibility(0);
            this.n.setText(R.string.privacy_email_format_error);
        } else {
            tg8.d().j(this.q.getText().toString());
            PasswordSuccessFragment passwordSuccessFragment2 = (PasswordSuccessFragment) PasswordSuccessFragment.P(this.r).setBaseActivity(this.mActivity);
            passwordSuccessFragment2.setNeedBg(true);
            a64.n(passwordSuccessFragment2, true, true);
            hideSoftPanel(this.q);
        }
    }

    public final boolean V(String str) {
        return str.matches("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
    }

    public final void X(View view) {
        EditText editText = (EditText) view.findViewById(R.id.et_email);
        this.q = editText;
        editText.postDelayed(new Runnable() {
            @Override
            public void run() {
                EmailSettingFragment emailSettingFragment = EmailSettingFragment.this;
                emailSettingFragment.showSoftPanel(emailSettingFragment.q);
            }
        }, 300L);
        this.q.setHint(this.r == 2 ? W(tg8.d().c()) : getString(R.string.privacy_email_format_hint));
        this.q.setOnEditorActionListener(new a());
        this.q.addTextChangedListener(new b());
    }

    @Override
    public void onClick(View view) {
        if (jf.j(this.t)) {
            return;
        }
        this.t = System.currentTimeMillis();
        int id = view.getId();
        if (id == R.id.btn_next) {
            U();
            return;
        }
        if (id == R.id.title_bar_back) {
            if (this.r != 1) {
                this.mActivity.onBackPressed();
                return;
            } else {
                a64.a((BaseActivity) this.mContext);
                return;
            }
        }
        if (id == R.id.tv_email_forget) {
            PrivacyHelpFragment privacyHelpFragment = (PrivacyHelpFragment) PrivacyHelpFragment.V(true).setBaseActivity(this.mActivity);
            privacyHelpFragment.setNeedBg(true);
            if (bg5.g(this.mActivity)) {
                bg5.d(this.mActivity);
            }
            a64.n(privacyHelpFragment, true, true);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.r = arguments.getInt("privacy_setting_mode");
            this.s = arguments.getString("privacy_password");
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_email_setting;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        TextView textView = (TextView) view.findViewById(R.id.btn_next);
        this.l = textView;
        textView.setOnClickListener(this);
        Z(view);
        Y(view);
        X(view);
        hb0.markTrackSingle("vd_more_hide_emadd_show", "type", Integer.valueOf(this.r != 1 ? 0 : 1));
        if (this.r == 2) {
            hb0.markDirect("vd_more_hide_retrieve_show");
        }
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
    }
}

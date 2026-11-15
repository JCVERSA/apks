package com.transsion.tools.fragments;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import defpackage.a64;
import defpackage.hb0;
import defpackage.sv4;
import defpackage.tg8;

public class EmailVerifyFragment extends BaseFragment implements View.OnClickListener {
    public String l;
    public EditText m;
    public TextView n;
    public TextView o;
    public TextView p;
    public TextView q;
    public View r;
    public int s;
    public final Runnable t = new Runnable() {
        @Override
        public void run() {
            if (EmailVerifyFragment.this.isAdded()) {
                EmailVerifyFragment.this.s--;
                EmailVerifyFragment.this.n.setText(EmailVerifyFragment.this.getResources().getString(R.string.privacy_verify_code_resend_timer, Integer.valueOf(EmailVerifyFragment.this.s)));
                if (EmailVerifyFragment.this.s != 0) {
                    ThreadUtils.o().postDelayed(EmailVerifyFragment.this.t, 1000L);
                } else {
                    EmailVerifyFragment.this.n.setText(R.string.privacy_verify_code_resend);
                    EmailVerifyFragment.this.n.setEnabled(true);
                }
            }
        }
    };

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            EmailVerifyFragment.this.o.setEnabled(EmailVerifyFragment.this.m.getText().length() == 4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class b implements TextView.OnEditorActionListener {

        public class a implements sv4 {
            public a() {
            }

            @Override
            public void a(int i) {
                EmailVerifyFragment.this.p.setVisibility(0);
                if (i == -4100) {
                    EmailVerifyFragment.this.p.setText(R.string.privacy_send_verify_code_error_1);
                } else if (i == -4101) {
                    EmailVerifyFragment.this.p.setText(R.string.privacy_send_verify_code_error_2);
                } else if (i == -4102) {
                    EmailVerifyFragment.this.p.setText(R.string.privacy_send_verify_code_error_3);
                }
            }

            @Override
            public void b() {
            }

            @Override
            public void c() {
                EmailVerifyFragment.this.p.setVisibility(4);
                a64.n((PasswordSettingFragment) PasswordSettingFragment.Z(2).setBaseActivity(((BaseFragment) EmailVerifyFragment.this).mActivity), true, true);
            }

            @Override
            public void d() {
            }
        }

        public b() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 6) {
                return false;
            }
            tg8.d().n(EmailVerifyFragment.this.l, EmailVerifyFragment.this.m.getText().toString(), new a());
            return false;
        }
    }

    public class c implements sv4 {
        public c() {
        }

        @Override
        public void a(int i) {
            EmailVerifyFragment.this.p.setVisibility(0);
            if (i == -4100) {
                EmailVerifyFragment.this.p.setText(R.string.privacy_send_verify_code_error_1);
            } else if (i == -4101) {
                EmailVerifyFragment.this.p.setText(R.string.privacy_send_verify_code_error_2);
            } else if (i == -4102) {
                EmailVerifyFragment.this.p.setText(R.string.privacy_send_verify_code_error_3);
            }
        }

        @Override
        public void b() {
        }

        @Override
        public void c() {
            EmailVerifyFragment.this.p.setVisibility(4);
            a64.n((PasswordSettingFragment) PasswordSettingFragment.Z(2).setBaseActivity(((BaseFragment) EmailVerifyFragment.this).mActivity), true, true);
        }

        @Override
        public void d() {
        }
    }

    public class d implements sv4 {
        public d() {
        }

        @Override
        public void a(int i) {
        }

        @Override
        public void b() {
            EmailVerifyFragment.this.b0();
        }

        @Override
        public void c() {
        }

        @Override
        public void d() {
        }
    }

    private void c0(View view) {
        EditText editText = (EditText) view.findViewById(R.id.et_email);
        this.m = editText;
        editText.postDelayed(new Runnable() {
            @Override
            public void run() {
                EmailVerifyFragment emailVerifyFragment = EmailVerifyFragment.this;
                emailVerifyFragment.showSoftPanel(emailVerifyFragment.m);
            }
        }, 300L);
        this.m.addTextChangedListener(new a());
        this.m.setOnEditorActionListener(new b());
    }

    private void d0(View view) {
        ((TextView) view.findViewById(R.id.title_bar_title)).setText(R.string.privacy_password_retrieve_title);
        ((TextView) view.findViewById(R.id.tv_hint)).setText(getString(R.string.privacy_verify_code_title, tg8.d().c()));
    }

    private void e0(View view) {
        TextView textView = (TextView) view.findViewById(R.id.tv_resend);
        this.n = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) view.findViewById(R.id.btn_next);
        this.o = textView2;
        textView2.setEnabled(true);
        this.o.setOnClickListener(this);
        View viewFindViewById = view.findViewById(R.id.title_bar_back);
        this.r = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        TextView textView3 = (TextView) view.findViewById(R.id.tv_email_forget);
        this.q = textView3;
        textView3.setOnClickListener(this);
        this.q.setVisibility(0);
        this.p = (TextView) view.findViewById(R.id.tv_message);
    }

    public static EmailVerifyFragment f0(String str) {
        EmailVerifyFragment emailVerifyFragment = new EmailVerifyFragment();
        Bundle bundle = new Bundle();
        bundle.putString("privacy_email", str);
        emailVerifyFragment.setArguments(bundle);
        return emailVerifyFragment;
    }

    public final void b0() {
        this.n.setEnabled(false);
        this.s = 60;
        this.n.setText(getResources().getString(R.string.privacy_verify_code_resend_timer, Integer.valueOf(this.s)));
        ThreadUtils.o().removeCallbacks(this.t);
        ThreadUtils.o().postDelayed(this.t, 1000L);
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_next) {
            tg8.d().n(this.l, this.m.getText().toString(), new c());
            return;
        }
        if (id == R.id.title_bar_back) {
            a64.a((BaseActivity) this.mContext);
            return;
        }
        if (id == R.id.tv_resend) {
            tg8.d().l(this.l, new d());
        } else if (id == R.id.tv_email_forget) {
            PrivacyHelpFragment privacyHelpFragment = (PrivacyHelpFragment) PrivacyHelpFragment.V(false).setBaseActivity(this.mActivity);
            privacyHelpFragment.setNeedBg(true);
            a64.n(privacyHelpFragment, true, true);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.l = arguments.getString("privacy_email");
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_email_verify;
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        d0(view);
        e0(view);
        c0(view);
        b0();
        hb0.markDirect("vd_more_hide_code_show");
    }
}

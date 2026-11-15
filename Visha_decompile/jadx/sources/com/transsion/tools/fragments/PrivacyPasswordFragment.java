package com.transsion.tools.fragments;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.NetworkUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import com.transsion.tools.activities.PasswordSettingActivity;
import com.transsion.utils.ToastUtils;
import defpackage.a64;
import defpackage.e07;
import defpackage.k29;
import defpackage.kg8;
import defpackage.mc7;
import defpackage.q06;
import defpackage.sv3;
import defpackage.tg8;
import defpackage.uv3;
import defpackage.vb;
import defpackage.vz6;
import defpackage.zf1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class PrivacyPasswordFragment extends BaseFragment implements View.OnClickListener {
    public EditText l;
    public LinearLayout m;
    public ImageView o;
    public TextView p;
    public TextView q;
    public TextView r;
    public TextView s;
    public int t;
    public com.transsion.widgetslib.dialog.d u;
    public final List n = new ArrayList();
    public final NetworkUtils.a v = new a();

    public class a implements NetworkUtils.a {
        public a() {
        }

        @Override
        public void a(NetworkUtils.NetworkType networkType) {
            PrivacyPasswordFragment.this.o0();
        }

        @Override
        public void onDisconnected() {
            PrivacyPasswordFragment.this.o0();
        }
    }

    public class b implements vz6 {
        public b() {
        }

        @Override
        public void onConnect(int i) {
            if (PrivacyPasswordFragment.this.u != null) {
                PrivacyPasswordFragment.this.u.dismiss();
            }
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            PrivacyPasswordFragment.this.p0(editable.length());
            if (editable.length() == 6) {
                PrivacyPasswordFragment privacyPasswordFragment = PrivacyPasswordFragment.this;
                privacyPasswordFragment.c0(privacyPasswordFragment.l.getText().toString());
            } else if (editable.length() > 0) {
                PrivacyPasswordFragment.this.l0(false);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            PrivacyPasswordFragment.this.startActivity(new Intent("android.settings.SETTINGS"));
        }
    }

    public static PrivacyPasswordFragment k0(int i) {
        PrivacyPasswordFragment privacyPasswordFragment = new PrivacyPasswordFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("privacy_setting_mode", i);
        privacyPasswordFragment.setArguments(bundle);
        return privacyPasswordFragment;
    }

    public void n0(int i, boolean z) {
        int i2;
        if (i == 22) {
            i2 = z ? R.string.biometric_unlock_success : R.string.biometric_unlock_failure;
        } else {
            i2 = z ? R.string.biometric_lock_success : R.string.biometric_lock_failure;
        }
        ToastUtils.s(i2);
    }

    public final void c0(String str) {
        if (!TextUtils.equals(str, tg8.d().e())) {
            l0(true);
            this.l.postDelayed(new Runnable() {
                @Override
                public void run() {
                    PrivacyPasswordFragment.this.l.setText("");
                }
            }, 300L);
            return;
        }
        if (this.t == 3) {
            Intent intent = new Intent(this.mActivity, (Class<?>) PasswordSettingActivity.class);
            intent.putExtra("privacy_setting_mode", 3);
            startActivityForResult(intent, 3);
        } else {
            q06.a("vd_more_hide_pw_method", "method", "Pin");
            PrivacyFileFragment privacyFileFragment = (PrivacyFileFragment) new PrivacyFileFragment().setBaseActivity(this.mActivity);
            privacyFileFragment.setNeedBg(true);
            a64.g(this.mActivity);
            a64.o(privacyFileFragment, false, true, false);
            hideSoftPanel(this.l);
        }
    }

    public final void d0() {
        boolean zE = MMKV.p().e("mmkv_key_user_open_delayed_access_by_hidden_space", false);
        boolean zC = uv3.c(getContext());
        this.s.setVisibility((!zE || zC) ? 8 : 0);
        if (!zE || zC) {
            return;
        }
        o0();
        NetworkUtils.registerNetworkStatusChangedListener(this.v);
    }

    public final void e0() {
        for (int i = 0; i < 6; i++) {
            ImageView imageView = new ImageView(this.mContext);
            imageView.setImageResource(R.drawable.ic_password_dot_selector);
            Resources resources = getResources();
            int i2 = R.dimen.password_dot_width;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(resources.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2));
            Resources resources2 = getResources();
            int i3 = R.dimen.password_margin_horizontal;
            layoutParams.rightMargin = resources2.getDimensionPixelOffset(i3);
            layoutParams.leftMargin = getResources().getDimensionPixelOffset(i3);
            imageView.setLayoutParams(layoutParams);
            this.m.addView(imageView);
            this.n.add(imageView);
        }
    }

    public final void f0() {
        this.l.addTextChangedListener(new c());
    }

    public void fingerPrintMethod(int i, int i2, int i3, int i4, int i5) {
        q06.a("vd_more_hide_pw_show", "method", "Fingerprint");
        final Activity activity = (Activity) new WeakReference(this.mActivity).get();
        if (activity != null) {
            new sv3(activity, new sv3.b() {
                @Override
                public void a(int i6, int i7) {
                }

                @Override
                public void b(int i6, int i7) {
                    PrivacyPasswordFragment.this.n0(i6, false);
                }

                @Override
                public void c(int i6, int i7) {
                    if (i6 == 22) {
                        PrivacyPasswordFragment.this.m0(activity);
                    }
                }

                @Override
                public void d(int i6, int i7) {
                    if (i7 == 1) {
                        PrivacyPasswordFragment.this.l.postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                PrivacyPasswordFragment privacyPasswordFragment = PrivacyPasswordFragment.this;
                                privacyPasswordFragment.showSoftPanel(privacyPasswordFragment.l);
                            }
                        }, 300L);
                    }
                }
            }, i, i5).g(activity, i2, i3, i4);
        }
    }

    public final void g0() {
        int i;
        if (uv3.c(getContext()) && sv3.e(getContext()) && (i = this.t) != 3 && i != 1 && i != 2 && i != 5) {
            this.r.setVisibility(0);
            hideSoftPanel(this.l);
            fingerPrintMethod(22, R.string.biometric_unlock_title, R.string.prompt_fingerprint_authentication, R.string.password_unlock, 1);
        } else {
            this.r.setVisibility(8);
            q06.a("vd_more_hide_pw_show", "method", "Pin");
            if (isVisible()) {
                showSoftPanel(this.l);
            }
        }
    }

    public final Long h0() {
        return Long.valueOf(kg8.a.a(this.mContext));
    }

    public final void i0(boolean z) {
        if (z) {
            Intent intent = new Intent(this.mActivity, (Class<?>) PasswordSettingActivity.class);
            intent.putExtra("privacy_setting_mode", 3);
            startActivityForResult(intent, 3);
        } else {
            this.s.setVisibility(8);
            MMKV.p().y("mmkv_key_user_open_delayed_access_by_hidden_space", false);
            MMKV.p().u("mmkv_key_user_operated_delayed_access_time_by_hidden_space", 0L);
        }
    }

    public final void j0(Long l) {
        this.s.setVisibility(0);
        if (!e07.e(this.mContext)) {
            this.s.setText(R.string.visha_delay_access_countdown_notice_no_network);
        } else {
            this.s.setText(kg8.a.c(this.mContext, MMKV.p().h("mmkv_key_user_operated_delayed_access_time_by_hidden_space"), l.longValue(), new kg8.a() {
                @Override
                public final void a(boolean z) {
                    this.a.i0(z);
                }
            }));
        }
    }

    public final void l0(boolean z) {
        this.q.setText(z ? R.string.privacy_password_error : R.string.privacy_password_title);
        if (z) {
            this.q.setTextColor(getResources().getColor(R.color.password_error_color));
        } else {
            this.q.setTextColor(getResources().getColor(R.color.os_text_primary_color));
        }
    }

    public final void m0(Activity activity) {
        if (activity == null) {
            return;
        }
        q06.a("vd_more_hide_pw_method", "method", "Fingerprint");
        PrivacyFileFragment privacyFileFragment = (PrivacyFileFragment) new PrivacyFileFragment().setBaseActivity(this.mActivity);
        privacyFileFragment.setNeedBg(true);
        a64.g(this.mActivity);
        a64.o(privacyFileFragment, false, true, false);
        hideSoftPanel(this.l);
    }

    public final void o0() {
        TextView textView = this.s;
        if (textView == null || this.mContext == null) {
            return;
        }
        textView.setVisibility(4);
        mc7.D(new Callable() {
            @Override
            public final Object call() {
                return this.b.h0();
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.j0((Long) obj);
            }
        });
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_close) {
            Log.d("PrivacyPasswordFragment", "=======>" + this.t);
            if (this.t == 3) {
                a64.a(this.mActivity);
                return;
            } else {
                this.mActivity.finish();
                return;
            }
        }
        if (id == R.id.dots_container) {
            showSoftPanel(this.l);
            return;
        }
        if (id != R.id.tv_password_forget) {
            if (id == R.id.print_password_fingerprint && uv3.c(getContext())) {
                fingerPrintMethod(22, R.string.enable_biometric_unlock, R.string.prompt_fingerprint_authentication, R.string.password_unlock, 1);
                return;
            }
            return;
        }
        if (!e07.e(this.mContext)) {
            this.u = new com.transsion.widgetslib.dialog.d.a(this.mContext).j(R.string.privacy_find_password_network_error_msg).u(R.string.privacy_find_password_network_error_ok, new d()).m(R.string.privacy_find_password_network_error_cancel, null).F();
            return;
        }
        Intent intent = new Intent(this.mActivity, (Class<?>) PasswordSettingActivity.class);
        intent.putExtra("privacy_setting_mode", 2);
        startActivity(intent);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.t = arguments.getInt("privacy_setting_mode");
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        MainApp.s("PrivacyPasswordFragment");
        NetworkUtils.unregisterNetworkStatusChangedListener(this.v);
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_privacy_password;
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.g0();
            }
        }, 300L);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.l = (EditText) view.findViewById(R.id.et_password);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.dots_container);
        this.m = linearLayout;
        linearLayout.setOnClickListener(this);
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_close);
        this.o = imageView;
        imageView.setOnClickListener(this);
        TextView textView = (TextView) view.findViewById(R.id.tv_password_forget);
        this.p = textView;
        textView.setOnClickListener(this);
        this.q = (TextView) view.findViewById(R.id.tv_title);
        TextView textView2 = (TextView) view.findViewById(R.id.print_password_fingerprint);
        this.r = textView2;
        textView2.setOnClickListener(this);
        this.s = (TextView) view.findViewById(R.id.tv_delayed_access_notice);
        d0();
        f0();
        e0();
        MainApp.d("PrivacyPasswordFragment", new b());
        if (this.needBg) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
    }

    public final void p0(int i) {
        int i2 = 0;
        while (i2 < 6) {
            ((ImageView) this.n.get(i2)).setSelected(i2 < i);
            i2++;
        }
    }
}

package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.livecaption.constant.ICode;

public class xj {
    public static xj g;
    public Context a;
    public boolean b = false;
    public String c;
    public String d;
    public String e;
    public String f;

    public xj(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        AthenaAnalytics.P(applicationContext, "palmid", 7710, false, false);
        this.c = pa1.c();
        this.d = pa1.d();
    }

    public static xj U(Context context) {
        if (g == null) {
            synchronized (xj.class) {
                try {
                    if (g == null) {
                        g = new xj(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public void A(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("ti_s_type", str);
        bundle.putInt("bind_status", i);
        G1("bind_start", bundle);
    }

    public void A0() {
        G1("modify_mcc_show", null);
    }

    public void A1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("country", str);
        G1("select_mcc_cl", bundle);
    }

    public void B(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("status", i);
        G1("bind_vk_cl", bundle);
    }

    public void B0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("modify_name_cl", bundle);
    }

    public void B1() {
        G1("setting_entrance_cl", null);
    }

    public void C(int i, String str, int i2, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i2);
        bundle.putString("ti_s_type", str);
        bundle.putInt("action", i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("reason", str2);
        }
        G1("bing_tp_result", bundle);
    }

    public void C0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_name_result", bundle);
    }

    public void C1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("login_type", str);
        G1("sms_exceed_show", bundle);
    }

    public void D() {
        G1("cannot_modify_id_show", null);
    }

    public void D0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("modify_nickname_cl", bundle);
    }

    public void D1(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("login_type", str);
        bundle.putInt("sms_cnt", i);
        G1("sms_fill_end", bundle);
    }

    public void E() {
        G1("change_pwd_cl", null);
    }

    public void E0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_nickname_result", bundle);
    }

    public void E1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("login_type", str);
        G1("sms_sent_show", bundle);
    }

    public void F() {
        G1("change_pwd_show", null);
    }

    public void F0() {
        G1("modify_password_cl", null);
    }

    public void F1() {
        G1("third_party_account_show", null);
    }

    public void G() {
        G1("de_address_cl", null);
    }

    public void G0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_photo_result", bundle);
    }

    public void G1(String str, Bundle bundle) {
        if (b0()) {
            Bundle bundleS = S();
            if (bundle != null) {
                bundleS.putAll(bundle);
            }
            Log.i("palm_id", "trackAccount " + str);
            new wj(str, 7710).c(bundleS, null).b();
        }
    }

    public void H(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("del_cnt", str);
        G1("delete_data_end", bundle);
    }

    public void H0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_region_result", bundle);
    }

    public void H1() {
        G1("uc_account_security_cl", null);
    }

    public void I() {
        G1("delete_data_fail_show", null);
    }

    public void I0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("modify_sexual_cl", bundle);
    }

    public void I1() {
        G1("uc_modify_photo_cl", null);
    }

    public void J() {
        G1("delete_data_next_cl", null);
    }

    public void J0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_sexual_result", bundle);
    }

    public void J1() {
        G1("uc_personal_info_cl", null);
    }

    public void K(String str) {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("source", str);
        }
        G1("delete_data_show", bundle);
    }

    public void K0() {
        G1("my_accountid_cl", null);
    }

    public void K1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("uc_photo_deny_pop_cl", bundle);
    }

    public void L() {
        G1("emergency_information_cl", null);
    }

    public void L0() {
        G1("my_address_cl", null);
    }

    public void L1() {
        G1("uc_privacy_cl", null);
    }

    public void M(boolean z) {
    }

    public void M0() {
        G1("my_autograph_cl", null);
    }

    public void M1() {
        G1("user_agreement_cl", null);
    }

    public void N(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("info_fill_status", str);
        G1("exit_my_info", bundle);
    }

    public void N0() {
        G1("my_birthday_cl", null);
    }

    public void N1() {
        G1("user_center_show", null);
    }

    public void O(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("exit_set_pwd_pop_cl", bundle);
    }

    public void O0() {
        G1("my_gender_cl", null);
    }

    public void O1() {
        G1("verify_account_show", null);
    }

    public void P() {
        G1("exit_set_pwd_pop_show", null);
    }

    public void P0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("info_fill_status", str);
        G1("my_info_show", bundle);
    }

    public void P1(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("verify_password_result", bundle);
    }

    public void Q() {
        G1("forgot_password_cl", null);
    }

    public void Q0() {
        G1("my_name_cl", null);
    }

    public void R() {
        G1("forgot_password_show", null);
    }

    public void R0() {
        G1("my_nickname_cl", null);
    }

    public Bundle S() {
        Bundle bundle = new Bundle();
        bundle.putString("bp_v", "2.1");
        bundle.putString("palm_ver", this.c);
        bundle.putString("os_v", this.d);
        bundle.putInt("net_work", pa1.f(this.a) ? 1 : 0);
        return bundle;
    }

    public void S0() {
        G1("my_photo_cl", null);
    }

    public String T() {
        return this.e;
    }

    public void T0() {
        G1("network_invalid_show", null);
    }

    public void U0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("no_password_cl", bundle);
    }

    public String V(Context context) {
        return context.getResources().getConfiguration().getLocales().get(0).getLanguage();
    }

    public void V0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        G1("no_password_show", bundle);
    }

    public void W(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("login_type", str);
        bundle.putInt("sms_cnt", i);
        G1("get_sms_cl", bundle);
    }

    public void W0() {
        G1("old_user_login_success_show", null);
    }

    public void X(int i, String str, String str2, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        bundle.putString("reason", str);
        bundle.putString("login_type", str2);
        bundle.putInt("sms_cnt", i2);
        G1("get_sms_result", bundle);
    }

    public void X0(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("page", str);
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str2);
        G1("oobe_palmid_cl", bundle);
    }

    public void Y() {
        G1("hc_network_invalid_show", null);
    }

    public void Y0(String str, int i, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        bundle.putInt("login_status", i);
        bundle.putString("syn_status", str2);
        G1("palmid_enter", bundle);
    }

    public void Z() {
        G1("hc_normal_ques_cl", null);
    }

    public void Z0() {
        G1("pc_network_invalid_show", null);
    }

    public void a(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("login_type", str);
        bundle.putInt(SessionDescription.ATTR_LENGTH, i);
        G1("account_fill_cl", bundle);
    }

    public void a0(String str) {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("source", str);
        }
        G1("identity_verify_show", bundle);
    }

    public void a1() {
        G1("pc_privacy_policy_cl", null);
    }

    public void b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("bind_list", str);
        G1("account_security_show", bundle);
    }

    public boolean b0() {
        return true;
    }

    public void b1() {
        G1("pc_user_agreement_cl", null);
    }

    public void c() {
        G1("add_account_cl", null);
    }

    public void c0() {
        G1("login_by_facebook_cl", null);
    }

    public void c1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("photo_from_cl", bundle);
    }

    public void d() {
        G1("add_emergency_add_cl", null);
    }

    public void d0() {
        G1("login_by_google_cl", null);
    }

    public void d1() {
        G1("photo_from_show", null);
    }

    public void e(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("add_emergency_result", bundle);
    }

    public void e0() {
        G1("login_by_line_cl", null);
    }

    public void e1() {
        G1("pic_verify_cl", null);
    }

    public void f() {
        G1("add_emergency_select_cl", null);
    }

    public void f0() {
        G1("login_by_password_cl", null);
    }

    public void f1() {
        G1("pic_verify_show", null);
    }

    public void g() {
        G1("add_emergency_show", null);
    }

    public void g0() {
        G1("login_by_sms_cl", null);
    }

    public void g1() {
        G1("pic_verify_wrong_show", null);
    }

    public void h(String str) {
        AthenaAnalytics.X((short) 0, pa1.e(str));
    }

    public void h0(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        bundle.putString("account", str2);
        G1("login_by_tp_button_cl", bundle);
    }

    public void h1() {
        G1("privacy_center_show", null);
    }

    public void i() {
        G1("address_add_cl", null);
    }

    public void i0() {
        G1("login_by_vk_cl", null);
    }

    public void i1() {
        G1("privacy_policy_cl", null);
    }

    public void j(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("address_detail_cl", bundle);
    }

    public void j0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("login_type", str);
        G1("login_cl", bundle);
    }

    public void j1() {
        G1("relogin_by_password_show", null);
    }

    public void k() {
        G1("address_edit_cl", null);
    }

    public void k0(String str, int i, String str2, long j) {
        Bundle bundle = new Bundle();
        bundle.putString("login_by", str);
        bundle.putInt("ti_i_result", i);
        bundle.putString("reason", str2);
        bundle.putLong("time", j);
        G1("login_end", bundle);
    }

    public void k1() {
        G1("relogin_by_sms_show", null);
    }

    public void l(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("address_cnt", i);
        G1("address_show", bundle);
    }

    public void l0(String str, String str2) {
        Bundle bundle = new Bundle();
        if (TextUtils.isEmpty(str)) {
            str = "other";
        }
        bundle.putString("source", str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("ti_s_record", str2);
        }
        G1("login_show", bundle);
    }

    public void l1(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(ICode.CALL.CALL_KEY_CONTENT, str);
        G1("remote_config_received", bundle);
    }

    public void m(String str, String str2, String str3) {
        Resources resources = this.a.getResources();
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        bundle.putLong("dt", System.currentTimeMillis());
        if (resources != null) {
            bundle.putString("lang", V(this.a));
        }
        bundle.putString("uav", str2);
        bundle.putString("pv", str3);
        G1("agreement_up_bt_cl", bundle);
    }

    public void m0(String str, int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putString("login_by", str);
        bundle.putInt("pic_cnt", i);
        bundle.putInt("sms_cnt", i2);
        bundle.putInt("ems_cnt", i3);
        G1("login_start", bundle);
    }

    public void m1() {
        G1("remove_data_show", null);
    }

    public void n(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_LINK, str);
        G1("agreement_up_ln_cl", bundle);
    }

    public void n0(String str, String str2, String str3, String str4, String str5) {
        Bundle bundle = new Bundle();
        bundle.putString("pv", str);
        bundle.putString("uav", str2);
        bundle.putString("ext_pv", str3);
        bundle.putString("ext_uav", str4);
        bundle.putString("ext_dpv", str5);
        G1("login_success", bundle);
    }

    public void n1() {
        G1("reset_by_email_cl", null);
    }

    public void o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("version", str);
        G1("agreement_up_show", bundle);
    }

    public void o0() {
        G1("logout_cl", null);
    }

    public void o1() {
        G1("reset_by_email_next_cl", null);
    }

    public void p(String str, String str2, String str3, String str4, String str5) {
        Resources resources = this.a.getResources();
        Bundle bundle = new Bundle();
        bundle.putString("pv", str);
        bundle.putString("uav", str2);
        bundle.putString("ext_pv", str3);
        bundle.putString("ext_uav", str4);
        bundle.putString("ext_dpv", str5);
        bundle.putLong("dt", System.currentTimeMillis());
        if (resources != null) {
            bundle.putString("lang", V(this.a));
        }
        G1("authorize_cl", bundle);
    }

    public void p0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("local_data", str);
        G1("logout_next_cl", bundle);
    }

    public void p1() {
        G1("reset_by_email_show", null);
    }

    public void q(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("ti_s_page", str);
        G1("login_autofill", bundle);
    }

    public void q0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("logout_result", bundle);
    }

    public void q1() {
        G1("reset_by_email_verify_next_cl", null);
    }

    public void r(String str, int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putString("ti_s_type", str);
        bundle.putInt("bind_status", i2);
        bundle.putInt("ti_i_result", i);
        G1("bind_end", bundle);
    }

    public void r0() {
        G1("logout_verify_next_cl", null);
    }

    public void r1() {
        G1("reset_by_phone_cl", null);
    }

    public void s(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("status", i);
        G1("bind_facebook_cl", bundle);
    }

    public void s0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_addres_result", bundle);
    }

    public void s1() {
        G1("reset_by_phone_next_cl", null);
    }

    public void t(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("status", i);
        G1("bind_google_cl", bundle);
    }

    public void t0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("modify_autograph_cl", bundle);
    }

    public void t1() {
        G1("reset_by_phone_show", null);
    }

    public void u(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("status", i);
        G1("bind_line_cl", bundle);
    }

    public void u0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_autograph_result", bundle);
    }

    public void u1() {
        G1("reset_by_phone_verify_next_cl", null);
    }

    public void v() {
        G1("bind_mail_cl", null);
    }

    public void v0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("modify_birthday_cl", bundle);
    }

    public void v1(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        bundle.putString("reason", str);
        G1("reset_finish", bundle);
    }

    public void w(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        bundle.putString("ti_s_type", str2);
        G1("bind_noti_cl", bundle);
    }

    public void w0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_birthday_result", bundle);
    }

    public void w1() {
        G1("reset_password_cl", null);
    }

    public void x(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        G1("bind_noti_show", bundle);
    }

    public void x0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthInfo.Component.CODE_BUTTON, str);
        G1("modify_id_cl", bundle);
    }

    public void x1() {
        G1("reset_password_show", null);
    }

    public void y() {
        G1("bind_phone_cl", null);
    }

    public void y0(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("ti_i_result", i);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("reason", str);
        }
        G1("modify_id_result", bundle);
    }

    public void y1(String str) {
        this.f = str;
    }

    public void z(String str, String str2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        bundle.putString("ti_s_type", str2);
        bundle.putInt("bind_status", i);
        G1("bind_show", bundle);
    }

    public void z0(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("country", str);
        G1("modify_mcc_cl", bundle);
    }

    public void z1(String str) {
        this.e = str;
    }
}

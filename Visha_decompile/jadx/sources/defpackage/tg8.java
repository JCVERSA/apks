package defpackage;

import com.transsion.privateroom.api.DefaultPrivateRoomService;
import com.transsion.privateroom.api.beans.FeedbackBean;
import java.util.List;

public final class tg8 {
    public static volatile vv4 a = DefaultPrivateRoomService.INSTANCE;

    public static final class a {
        public static final tg8 a = new tg8();
    }

    public static tg8 d() {
        return a.a;
    }

    public static void h(vv4 vv4Var) {
        if (vv4Var == null) {
            vv4Var = DefaultPrivateRoomService.INSTANCE;
        }
        a = vv4Var;
    }

    public void a(List list, tv4 tv4Var) {
        a.deleteFiles(list, tv4Var);
    }

    public List b() {
        return a.getAllPrivateFiles();
    }

    public String c() {
        return a.getEmail();
    }

    public String e() {
        return a.getPassword();
    }

    public void f(List list, tv4 tv4Var) {
        a.hideFiles(list, tv4Var);
    }

    public void g(uv4 uv4Var) {
        a.init(uv4Var);
    }

    public void i(List list, tv4 tv4Var) {
        a.restoreFiles(list, tv4Var);
    }

    public void j(String str) {
        a.saveEmail(str);
    }

    public void k(String str) {
        a.savePassword(str);
    }

    public void l(String str, sv4 sv4Var) {
        a.sendVerificationCode(str, sv4Var);
    }

    public void m(FeedbackBean feedbackBean) {
        a.submitPrivacyFeedback(feedbackBean);
    }

    public void n(String str, String str2, sv4 sv4Var) {
        a.verifyVerificationCode(str, str2, sv4Var);
    }

    public tg8() {
    }
}

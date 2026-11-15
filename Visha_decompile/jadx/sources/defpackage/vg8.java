package defpackage;

import com.transsion.privateroom.api.beans.FeedbackBean;
import java.util.List;

public final class vg8 implements vv4 {
    public static final vg8 b = new vg8();

    public class a implements tq0 {
        public a() {
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
        }
    }

    public final rg8 a() {
        return rg8.d();
    }

    @Override
    public void deleteFiles(List list, tv4 tv4Var) {
        a().a(list, tv4Var);
    }

    @Override
    public List getAllPrivateFiles() {
        return a().b();
    }

    @Override
    public String getEmail() {
        return a().c();
    }

    @Override
    public String getPassword() {
        return a().e();
    }

    @Override
    public void hideFiles(List list, tv4 tv4Var) {
        a().f(list, tv4Var);
    }

    @Override
    public void init(uv4 uv4Var) {
        if (uv4Var != null) {
            a().g(uv4Var);
        }
    }

    @Override
    public void restoreFiles(List list, tv4 tv4Var) {
        a().h(list, tv4Var);
    }

    @Override
    public void saveEmail(String str) {
        a().i(str);
    }

    @Override
    public void savePassword(String str) {
        a().j(str);
    }

    @Override
    public void sendVerificationCode(String str, sv4 sv4Var) {
        a().k(str, sv4Var);
    }

    @Override
    public void submitPrivacyFeedback(FeedbackBean feedbackBean) {
        if (feedbackBean == null) {
            return;
        }
        ((ae9) de9.a().getApi(ae9.class)).c(feedbackBean).enqueue(new a());
    }

    @Override
    public void verifyVerificationCode(String str, String str2, sv4 sv4Var) {
        a().l(str, str2, sv4Var);
    }
}

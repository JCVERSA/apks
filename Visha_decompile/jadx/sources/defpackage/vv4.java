package defpackage;

import com.transsion.privateroom.api.beans.FeedbackBean;
import java.util.List;

public interface vv4 {
    void deleteFiles(List list, tv4 tv4Var);

    List getAllPrivateFiles();

    String getEmail();

    String getPassword();

    void hideFiles(List list, tv4 tv4Var);

    void init(uv4 uv4Var);

    void restoreFiles(List list, tv4 tv4Var);

    void saveEmail(String str);

    void savePassword(String str);

    void sendVerificationCode(String str, sv4 sv4Var);

    void submitPrivacyFeedback(FeedbackBean feedbackBean);

    void verifyVerificationCode(String str, String str2, sv4 sv4Var);
}

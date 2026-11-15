package defpackage;

import android.os.Build;
import android.text.TextUtils;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.ITopicListener;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.ConfigInfo;
import com.transsion.push.bean.PushRequest;
import com.transsion.push.bean.PushResponse;
import com.transsion.push.bean.SelfDestroyInfo;
import com.transsion.push.config.PushRepository;
import com.transsion.push.utils.NotificationAssistUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Locale;

public final class cs8 {
    public final PushRequest.ReportContentData a() {
        PushRequest.ReportContentData reportContentData = new PushRequest.ReportContentData();
        Locale locale = Locale.getDefault();
        reportContentData.vaid = AthenaAnalytics.G(xj1.a(), true);
        reportContentData.gaid = DeviceInfo.e();
        reportContentData.sdkVersion = "2.0.5.02";
        reportContentData.sdkVersionCode = 17004;
        reportContentData.pkg = la2.f();
        reportContentData.confVersion = lk8.a();
        reportContentData.whitelistVersion = ylc.b();
        if (nk8.e()) {
            reportContentData.platVer = nk8.c();
        }
        boolean zBooleanValue = ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.TRUE)).booleanValue();
        if (TextUtils.isEmpty(reportContentData.clientId)) {
            zBooleanValue = true;
        }
        reportContentData.withDetail = zBooleanValue;
        if (zBooleanValue) {
            reportContentData.aid = DeviceInfo.c();
            String strReplace = Build.BRAND;
            if (!TextUtils.isEmpty(strReplace)) {
                strReplace = strReplace.toUpperCase().replace(" ", "");
            }
            reportContentData.brand = strReplace;
            reportContentData.androidVersion = Build.VERSION.RELEASE;
            reportContentData.cid = 0;
            reportContentData.lac = 0;
            String str = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_LANGUAGE, "");
            if (TextUtils.isEmpty(str)) {
                reportContentData.language = locale.getLanguage() == null ? null : locale.getLanguage().toLowerCase();
            } else {
                reportContentData.language = str.trim();
            }
            reportContentData.mcc = la2.d();
            reportContentData.mnc = la2.e();
            String strReplace2 = Build.MODEL;
            if (!TextUtils.isEmpty(strReplace2)) {
                strReplace2 = strReplace2.toUpperCase().replace(" ", "");
            }
            reportContentData.model = strReplace2;
            reportContentData.network = fz6.a();
            reportContentData.osVersion = String.valueOf(Build.VERSION.SDK_INT);
            reportContentData.appVersion = la2.g(xj1.a());
            reportContentData.appVersionCode = hf.b();
            reportContentData.token = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
            reportContentData.country = locale.getCountry() != null ? locale.getCountry().toUpperCase() : null;
        }
        nk8.h(reportContentData);
        reportContentData.appId = PushUtils.e();
        reportContentData.appKey = PushUtils.f();
        reportContentData.clientId = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        reportContentData.noticeEnable = NotificationAssistUtils.isOpenNotification(xj1.a()) ? 1 : 2;
        return reportContentData;
    }

    public final PushRequest.SelfDestroyContentData b() {
        PushRequest.SelfDestroyContentData selfDestroyContentData = new PushRequest.SelfDestroyContentData();
        selfDestroyContentData.appId = PushUtils.e();
        selfDestroyContentData.appKey = PushUtils.f();
        selfDestroyContentData.clientId = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        selfDestroyContentData.sdkVersion = "2.0.5.02";
        selfDestroyContentData.sdkVersionCode = 17004;
        selfDestroyContentData.appVersion = la2.g(xj1.a());
        selfDestroyContentData.appVersionCode = hf.b();
        selfDestroyContentData.confVersion = lk8.a();
        selfDestroyContentData.whitelistVersion = ylc.b();
        return selfDestroyContentData;
    }

    public final PushRequest.TopicContentData c(String str, String str2) {
        PushRequest.TopicContentData topicContentData = new PushRequest.TopicContentData();
        topicContentData.clientId = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        topicContentData.gaid = DeviceInfo.e();
        topicContentData.appId = PushUtils.e();
        topicContentData.appKey = PushUtils.f();
        topicContentData.appVersion = hf.c();
        topicContentData.appVersionCode = hf.b();
        topicContentData.sdkVersion = "2.0.5.02";
        topicContentData.sdkVersionCode = 17004;
        if (!TextUtils.isEmpty(str)) {
            topicContentData.topics = new ArrayList<>();
            if (str.contains(StringUtils.COMMA)) {
                for (String str3 : str.split(StringUtils.COMMA)) {
                    topicContentData.topics.add(str3.toLowerCase());
                }
            } else {
                topicContentData.topics.add(str.toLowerCase());
            }
        }
        topicContentData.action = str2;
        return topicContentData;
    }

    public final void d(ITopicListener iTopicListener, String str) {
        if (iTopicListener != null) {
            iTopicListener.onFail(str);
        }
    }

    public SelfDestroyInfo e() {
        try {
            PushRequest.SelfDestroyContentData selfDestroyContentDataB = b();
            PushLogUtils.LOG.g("get self-destroying request data: " + selfDestroyContentDataB.toString());
            u9 u9Var = new u9();
            kw8 kw8Var = new kw8(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = u9Var.c(u9Var.e(qab.b(selfDestroyContentDataB)));
            String strC2 = u9Var.c(kw8Var.d(u9Var.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bytes = qab.b(pushRequest).getBytes();
            String strD = nk8.d();
            if (TextUtils.isEmpty(strD)) {
                return null;
            }
            String str = strD + PushUtils.e() + PushConstants.CONFIG_URL_PATH;
            PushLogUtils.LOG.g("self-destroying request url:" + str);
            byte[] bArrC = vt4.c(str, bytes);
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                return null;
            }
            PushResponse pushResponse = (PushResponse) qab.a(new String(bArrC), PushResponse.class);
            if (pushResponse == null) {
                PushLogUtils.LOG.i("parse self-destroying BaseResponse failed");
                return null;
            }
            if (pushResponse.status != 200) {
                PushLogUtils.LOG.i("self-destroying BaseResponse status error, status:" + pushResponse.status + ", " + pushResponse.message);
                return null;
            }
            PushResponse.SignedEncryptedData signedEncryptedData = pushResponse.data;
            if (signedEncryptedData == null) {
                PushLogUtils.LOG.i("parse self-destroying signedResponse failed");
                return null;
            }
            if (!kw8Var.g(q0a.a(u9Var.a(signedEncryptedData.data)), u9Var.a(signedEncryptedData.sign))) {
                PushLogUtils.LOG.i("self-destroying verify signature failed");
                return null;
            }
            SelfDestroyInfo selfDestroyInfo = (SelfDestroyInfo) qab.a(new String(u9Var.d(u9Var.a(signedEncryptedData.data))), SelfDestroyInfo.class);
            if (selfDestroyInfo != null) {
                return selfDestroyInfo;
            }
            PushLogUtils.LOG.i("parse self-destroying info failed");
            return null;
        } catch (Exception e) {
            PushLogUtils.LOG.z("self-destroying Exception: " + e.getMessage());
            return null;
        }
    }

    public ConfigInfo f() {
        String str;
        try {
            PushRequest.ReportContentData reportContentDataA = a();
            if (reportContentDataA == null) {
                PushLogUtils.LOG.i("dataContent is null, skip syncActive");
                return null;
            }
            PushLogUtils.LOG.g("get config request data: " + reportContentDataA.toString());
            u9 u9Var = new u9();
            kw8 kw8Var = new kw8(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strB = qab.b(reportContentDataA);
            if (TextUtils.isEmpty(strB)) {
                PushLogUtils.LOG.i("jsonContent is empty, skip syncActive");
                return null;
            }
            String strC = u9Var.c(u9Var.e(strB));
            String strC2 = u9Var.c(kw8Var.d(u9Var.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            String strB2 = qab.b(pushRequest);
            if (TextUtils.isEmpty(strB2)) {
                PushLogUtils.LOG.i("pushRequestJson is empty, skip syncActive");
                return null;
            }
            byte[] bytes = strB2.getBytes();
            String strD = nk8.d();
            if (TextUtils.isEmpty(strD)) {
                return null;
            }
            if (nk8.e()) {
                str = strD + PushConstants.TPMS_URL_PATH;
            } else {
                str = strD + PushUtils.e() + PushConstants.UPDATE_URL_PATH;
            }
            PushLogUtils.LOG.g("request url:" + str);
            byte[] bArrC = vt4.c(str, bytes);
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                return null;
            }
            PushResponse pushResponse = (PushResponse) qab.a(new String(bArrC), PushResponse.class);
            if (pushResponse == null) {
                PushLogUtils.LOG.i("parse syncActive BaseResponse failed");
                return null;
            }
            if (pushResponse.status != 200) {
                PushLogUtils.LOG.i("syncActive BaseResponse status error, status:" + pushResponse.status + ", " + pushResponse.message);
                return null;
            }
            PushResponse.SignedEncryptedData signedEncryptedData = pushResponse.data;
            if (signedEncryptedData == null) {
                PushLogUtils.LOG.i("parse syncActive signedResponse failed");
                return null;
            }
            if (!kw8Var.g(q0a.a(u9Var.a(signedEncryptedData.data)), u9Var.a(signedEncryptedData.sign))) {
                PushLogUtils.LOG.i("syncActive verify signature failed");
                return null;
            }
            String str2 = new String(u9Var.d(u9Var.a(signedEncryptedData.data)));
            if (TextUtils.isEmpty(str2)) {
                PushLogUtils.LOG.i("content is empty, skip syncActive");
                return null;
            }
            ConfigInfo configInfo = (ConfigInfo) qab.a(str2, ConfigInfo.class);
            if (configInfo != null) {
                return configInfo;
            }
            PushLogUtils.LOG.i("parse syncActive reportResponse failed");
            return null;
        } catch (Exception e) {
            PushLogUtils.LOG.i("syncActive Exception: " + e.getMessage());
            return null;
        }
    }

    public void g(String str, String str2, ITopicListener iTopicListener) {
        PushRequest.TopicContentData topicContentDataC = c(str, str2);
        PushLogUtils.LOG.g("topics request data: " + topicContentDataC.toString());
        u9 u9Var = new u9();
        kw8 kw8Var = new kw8(PushConstants.RSA_PUB_KEY);
        PushRequest pushRequest = new PushRequest();
        try {
            String strC = u9Var.c(u9Var.e(qab.b(topicContentDataC)));
            String strC2 = u9Var.c(kw8Var.d(u9Var.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bytes = qab.b(pushRequest).getBytes();
            String strD = nk8.d();
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            String str3 = strD + PushUtils.e() + PushConstants.TOPICS_URL_PATH;
            PushLogUtils.LOG.g("topics request url:" + str3);
            byte[] bArrC = vt4.c(str3, bytes);
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                d(iTopicListener, "the response data is empty");
                return;
            }
            PushResponse pushResponse = (PushResponse) qab.a(new String(bArrC), PushResponse.class);
            if (pushResponse == null) {
                PushLogUtils.LOG.i("parse topics BaseResponse failed");
                d(iTopicListener, "parse topics BaseResponse failed");
                return;
            }
            if (pushResponse.status == 200) {
                if (iTopicListener != null) {
                    iTopicListener.onSuccess();
                    return;
                }
                return;
            }
            PushLogUtils.LOG.i("topics BaseResponse status error, status:" + pushResponse.status + ", " + pushResponse.message);
            d(iTopicListener, "topics BaseResponse status error, status:" + pushResponse.status + ", " + pushResponse.message);
        } catch (Exception e) {
            PushLogUtils.LOG.z("topics Exception: " + e.getMessage());
            d(iTopicListener, "topics Exception: " + e.getMessage());
        }
    }
}

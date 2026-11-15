package com.transsion.push.config;

import ak.b;
import ak.c;
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
import com.transsion.push.utils.NotificationAssistUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.g0;
import com.transsion.push.utils.k;
import com.transsion.push.utils.k0;
import com.transsion.push.utils.m;
import com.transsion.push.utils.o;
import com.transsion.push.utils.p0;
import com.transsion.push.utils.q0;
import java.util.ArrayList;
import java.util.Locale;

public final class a {
    private PushRequest.ReportContentData a() {
        PushRequest.ReportContentData reportContentData = new PushRequest.ReportContentData();
        Locale locale = Locale.getDefault();
        reportContentData.vaid = AthenaAnalytics.H(yj.a.a(), true);
        reportContentData.gaid = DeviceInfo.e();
        reportContentData.sdkVersion = "2.0.2.01";
        reportContentData.sdkVersionCode = 17004;
        reportContentData.pkg = k.f();
        reportContentData.confVersion = g0.a();
        reportContentData.whitelistVersion = q0.b();
        if (k0.e()) {
            reportContentData.platVer = k0.c();
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
            reportContentData.language = locale.getLanguage() == null ? null : locale.getLanguage().toLowerCase();
            reportContentData.mcc = k.d();
            reportContentData.mnc = k.e();
            String strReplace2 = Build.MODEL;
            if (!TextUtils.isEmpty(strReplace2)) {
                strReplace2 = strReplace2.toUpperCase().replace(" ", "");
            }
            reportContentData.model = strReplace2;
            reportContentData.network = o.a();
            reportContentData.osVersion = String.valueOf(Build.VERSION.SDK_INT);
            reportContentData.appVersion = k.g(yj.a.a());
            reportContentData.appVersionCode = com.transsion.core.utils.a.b();
            reportContentData.token = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
            reportContentData.country = locale.getCountry() != null ? locale.getCountry().toUpperCase() : null;
        }
        k0.h(reportContentData);
        reportContentData.appId = PushUtils.e();
        reportContentData.appKey = PushUtils.f();
        reportContentData.clientId = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        reportContentData.noticeEnable = NotificationAssistUtils.isOpenNotification(yj.a.a()) ? 1 : 2;
        return reportContentData;
    }

    private PushRequest.SelfDestroyContentData b() {
        PushRequest.SelfDestroyContentData selfDestroyContentData = new PushRequest.SelfDestroyContentData();
        selfDestroyContentData.appId = PushUtils.e();
        selfDestroyContentData.appKey = PushUtils.f();
        selfDestroyContentData.clientId = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        selfDestroyContentData.sdkVersion = "2.0.2.01";
        selfDestroyContentData.sdkVersionCode = 17004;
        selfDestroyContentData.appVersion = k.g(yj.a.a());
        selfDestroyContentData.appVersionCode = com.transsion.core.utils.a.b();
        selfDestroyContentData.confVersion = g0.a();
        selfDestroyContentData.whitelistVersion = q0.b();
        return selfDestroyContentData;
    }

    private PushRequest.TopicContentData c(String str, String str2) {
        PushRequest.TopicContentData topicContentData = new PushRequest.TopicContentData();
        topicContentData.clientId = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        topicContentData.gaid = DeviceInfo.e();
        topicContentData.appId = PushUtils.e();
        topicContentData.appKey = PushUtils.f();
        topicContentData.appVersion = com.transsion.core.utils.a.c();
        topicContentData.appVersionCode = com.transsion.core.utils.a.b();
        topicContentData.sdkVersion = "2.0.2.01";
        topicContentData.sdkVersionCode = 17004;
        if (!TextUtils.isEmpty(str)) {
            topicContentData.topics = new ArrayList<>();
            if (str.contains(",")) {
                for (String str3 : str.split(",")) {
                    topicContentData.topics.add(str3.toLowerCase());
                }
            } else {
                topicContentData.topics.add(str.toLowerCase());
            }
        }
        topicContentData.action = str2;
        return topicContentData;
    }

    private void d(ITopicListener iTopicListener, String str) {
        if (iTopicListener != null) {
            iTopicListener.onFail(str);
        }
    }

    SelfDestroyInfo e() {
        try {
            PushRequest.SelfDestroyContentData selfDestroyContentDataB = b();
            PushLogUtils.LOG.g("get self-destroying request data: " + selfDestroyContentDataB.toString());
            b bVar = new b();
            c cVar = new c(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = bVar.c(bVar.e(com.transsion.json.b.b(selfDestroyContentDataB)));
            String strC2 = bVar.c(cVar.d(bVar.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bytes = com.transsion.json.b.b(pushRequest).getBytes();
            String strD = k0.d();
            if (TextUtils.isEmpty(strD)) {
                return null;
            }
            String str = strD + PushUtils.e() + PushConstants.CONFIG_URL_PATH;
            PushLogUtils.LOG.g("self-destroying request url:" + str);
            byte[] bArrC = m.c(str, bytes);
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                return null;
            }
            PushResponse pushResponse = (PushResponse) com.transsion.json.b.a(new String(bArrC), PushResponse.class);
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
            if (!cVar.g(p0.a(bVar.a(signedEncryptedData.data)), bVar.a(signedEncryptedData.sign))) {
                PushLogUtils.LOG.i("self-destroying verify signature failed");
                return null;
            }
            SelfDestroyInfo selfDestroyInfo = (SelfDestroyInfo) com.transsion.json.b.a(new String(bVar.d(bVar.a(signedEncryptedData.data))), SelfDestroyInfo.class);
            if (selfDestroyInfo != null) {
                return selfDestroyInfo;
            }
            PushLogUtils.LOG.i("parse self-destroying info failed");
            return null;
        } catch (Exception e10) {
            PushLogUtils.LOG.z("self-destroying Exception: " + e10.getMessage());
            return null;
        }
    }

    ConfigInfo f() {
        String str;
        try {
            PushRequest.ReportContentData reportContentDataA = a();
            PushLogUtils.LOG.g("get config request data: " + reportContentDataA.toString());
            b bVar = new b();
            c cVar = new c(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = bVar.c(bVar.e(com.transsion.json.b.b(reportContentDataA)));
            String strC2 = bVar.c(cVar.d(bVar.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bytes = com.transsion.json.b.b(pushRequest).getBytes();
            String strD = k0.d();
            if (TextUtils.isEmpty(strD)) {
                return null;
            }
            if (k0.e()) {
                str = strD + PushConstants.TPMS_URL_PATH;
            } else {
                str = strD + PushUtils.e() + PushConstants.UPDATE_URL_PATH;
            }
            PushLogUtils.LOG.g("request url:" + str);
            byte[] bArrC = m.c(str, bytes);
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                return null;
            }
            PushResponse pushResponse = (PushResponse) com.transsion.json.b.a(new String(bArrC), PushResponse.class);
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
            if (!cVar.g(p0.a(bVar.a(signedEncryptedData.data)), bVar.a(signedEncryptedData.sign))) {
                PushLogUtils.LOG.i("syncActive verify signature failed");
                return null;
            }
            ConfigInfo configInfo = (ConfigInfo) com.transsion.json.b.a(new String(bVar.d(bVar.a(signedEncryptedData.data))), ConfigInfo.class);
            if (configInfo != null) {
                return configInfo;
            }
            PushLogUtils.LOG.i("parse syncActive reportResponse failed");
            return null;
        } catch (Exception e10) {
            PushLogUtils.LOG.i("syncActive Exception: " + e10.getMessage());
            return null;
        }
    }

    void g(String str, String str2, ITopicListener iTopicListener) {
        PushRequest.TopicContentData topicContentDataC = c(str, str2);
        PushLogUtils.LOG.g("topics request data: " + topicContentDataC.toString());
        b bVar = new b();
        c cVar = new c(PushConstants.RSA_PUB_KEY);
        PushRequest pushRequest = new PushRequest();
        try {
            String strC = bVar.c(bVar.e(com.transsion.json.b.b(topicContentDataC)));
            String strC2 = bVar.c(cVar.d(bVar.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bytes = com.transsion.json.b.b(pushRequest).getBytes();
            String strD = k0.d();
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            String str3 = strD + PushUtils.e() + PushConstants.TOPICS_URL_PATH;
            PushLogUtils.LOG.g("topics request url:" + str3);
            byte[] bArrC = m.c(str3, bytes);
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                d(iTopicListener, "the response data is empty");
                return;
            }
            PushResponse pushResponse = (PushResponse) com.transsion.json.b.a(new String(bArrC), PushResponse.class);
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
        } catch (Exception e10) {
            PushLogUtils.LOG.z("topics Exception: " + e10.getMessage());
            d(iTopicListener, "topics Exception: " + e10.getMessage());
        }
    }
}

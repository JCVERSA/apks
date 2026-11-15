package com.transsion.push.tracker;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushPointInfo;
import com.transsion.push.bean.PushRequest;
import com.transsion.push.bean.TrackerResponse;
import com.transsion.push.config.PushRepository;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ThreadManager;
import defpackage.fz6;
import defpackage.hf;
import defpackage.kw8;
import defpackage.la2;
import defpackage.lk8;
import defpackage.mk8;
import defpackage.qab;
import defpackage.u9;
import defpackage.vt4;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class PushTracker {
    public static PushTracker b;
    public Context a;

    public static PushTracker getInstance() {
        if (b == null) {
            b = new PushTracker();
        }
        return b;
    }

    public final JSONObject e() {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("app_id", PushUtils.e());
                jSONObject2.put("app_ver", hf.c());
                jSONObject2.put("app_ver_code", hf.b());
                jSONObject2.put("gaid", DeviceInfo.e());
                jSONObject2.put("pkg_name", hf.a());
                jSONObject2.put("sdk_ver", "2.0.5.02");
                jSONObject2.put("sdk_ver_code", 17004);
                jSONObject2.put("tz", la2.c());
                jSONObject2.put("country", Locale.getDefault().getCountry());
                String strReplace = Build.BRAND;
                if (!TextUtils.isEmpty(strReplace)) {
                    strReplace = strReplace.toUpperCase().replace(" ", "");
                }
                jSONObject2.put("brand", strReplace);
                jSONObject2.put("mcc", la2.d());
                jSONObject2.put("mnc", la2.d());
                jSONObject2.put(CommonUrlParts.DEVICE_TYPE, la2.h(this.a) ? "pad" : "phone");
                jSONObject2.put("android_ver", Build.VERSION.RELEASE);
                jSONObject2.put("os_ver", Build.VERSION.SDK_INT);
                return jSONObject2;
            } catch (JSONException e) {
                e = e;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e2) {
            e = e2;
        }
    }

    public final JSONObject f(Tracker.KEY key, Bundle bundle) {
        JSONObject jSONObject;
        JSONException e;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("name", key.event);
                jSONObject.put(TrackingKey.TS, System.currentTimeMillis());
                jSONObject.put(DownloadFacadeEnum.NETWORK_TYPE, fz6.b());
                if (bundle != null && !bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (String str : bundle.keySet()) {
                        jSONObject2.put(str, bundle.get(str));
                    }
                    jSONObject.put("extra", jSONObject2);
                    return jSONObject;
                }
                return jSONObject;
            } catch (JSONException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (JSONException e3) {
            jSONObject = null;
            e = e3;
        }
    }

    public final void g(JSONObject jSONObject, List list) {
        String str;
        if (jSONObject == null || list == null || list.size() <= 0) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(new JSONObject(((PushPointInfo) it.next()).evt));
            }
            jSONObject.put("evt", jSONArray);
            String string = jSONObject.toString();
            PushLogUtils.LOG.g("request body:" + string);
            if (PushManager.getInstance().getTestEnv()) {
                str = PushConstants.TEST_POINT_REPORT;
            } else {
                str = PushManager.getInstance().getDebug() ? PushConstants.DEBUG_POINT_REPORT : PushConstants.RELEASE_POINT_REPORT;
            }
            PushLogUtils.LOG.g("request url:" + str);
            u9 u9Var = new u9();
            kw8 kw8Var = new kw8(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = u9Var.c(u9Var.e(string));
            String strC2 = u9Var.c(kw8Var.d(u9Var.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bArrC = vt4.c(str, qab.b(pushRequest).getBytes());
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                return;
            }
            TrackerResponse trackerResponse = (TrackerResponse) qab.a(new String(bArrC), TrackerResponse.class);
            if (trackerResponse != null && trackerResponse.config != null) {
                PushLogUtils.LOG.g("post points response:" + trackerResponse);
                if (trackerResponse.status == 200) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IMMEDIATELY_TRACK, Boolean.valueOf(trackerResponse.config.reportType == 0));
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACKER_REPORT_INTERVAL, Long.valueOf(trackerResponse.config.reportTime));
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACKER_REPORT_TIME, Long.valueOf(System.currentTimeMillis() + lk8.f()));
                    mk8.b().a(list);
                    return;
                }
                PushLogUtils.LOG.i("post points response status error, status:" + trackerResponse.status + ", " + trackerResponse.message);
                return;
            }
            PushLogUtils.LOG.i("parse post points BaseResponse failed");
        } catch (Exception e) {
            PushLogUtils.LOG.i("post points Exception: " + e.getMessage());
        }
    }

    public final void h(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("evt", jSONArray);
            String string = jSONObject.toString();
            PushLogUtils.LOG.g("request body:" + string);
            if (PushManager.getInstance().getTestEnv()) {
                str = PushConstants.TEST_POINT_REPORT;
            } else {
                str = PushManager.getInstance().getDebug() ? PushConstants.DEBUG_POINT_REPORT : PushConstants.RELEASE_POINT_REPORT;
            }
            PushLogUtils.LOG.g("request url:" + str);
            u9 u9Var = new u9();
            kw8 kw8Var = new kw8(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = u9Var.c(u9Var.e(string));
            String strC2 = u9Var.c(kw8Var.d(u9Var.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bArrC = vt4.c(str, qab.b(pushRequest).getBytes());
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                mk8.b().c(jSONObject2.toString());
                return;
            }
            TrackerResponse trackerResponse = (TrackerResponse) qab.a(new String(bArrC), TrackerResponse.class);
            if (trackerResponse == null) {
                PushLogUtils.LOG.i("parse post point BaseResponse failed");
                mk8.b().c(jSONObject2.toString());
                return;
            }
            PushLogUtils.LOG.g("post point response:" + trackerResponse);
            if (trackerResponse.status == 200) {
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IMMEDIATELY_TRACK, Boolean.valueOf(trackerResponse.config.reportType == 0));
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACKER_REPORT_INTERVAL, Long.valueOf(trackerResponse.config.reportTime));
                return;
            }
            PushLogUtils.LOG.i("post point response status error, status:" + trackerResponse.status + ", " + trackerResponse.message);
            mk8.b().c(jSONObject2.toString());
        } catch (Exception e) {
            PushLogUtils.LOG.i("post point Exception: " + e.getMessage());
            mk8.b().c(jSONObject2.toString());
        }
    }

    public void i(final Tracker.KEY key, final Bundle bundle) {
        boolean zBooleanValue = ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_START_POINT_REPORT, Boolean.FALSE)).booleanValue();
        PushLogUtils.LOG.g("push tracker isStartPointReport:" + zBooleanValue + ", key:" + key.event);
        if (zBooleanValue) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    JSONObject jSONObjectF = PushTracker.this.f(key, bundle);
                    if (!lk8.g()) {
                        mk8.b().c(jSONObjectF.toString());
                    } else {
                        PushTracker.this.h(PushTracker.this.e(), jSONObjectF);
                    }
                }
            });
        }
    }

    public void tracks() {
        boolean zBooleanValue = ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_START_POINT_REPORT, Boolean.FALSE)).booleanValue();
        PushLogUtils.LOG.g("push trackers isStartPointReport:" + zBooleanValue);
        if (!zBooleanValue) {
            PushLogUtils.LOG.g("check tracker report");
        } else if (PushUtils.u()) {
            PushLogUtils.LOG.g("check tracker report");
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    List listD = mk8.b().d();
                    if (listD == null || listD.size() <= 0) {
                        PushLogUtils.LOG.g("No tracker content reporting");
                    } else {
                        PushTracker.this.g(PushTracker.this.e(), listD);
                    }
                }
            });
        }
    }
}

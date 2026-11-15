package com.transsion.push.tracker;

import ak.b;
import ak.c;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.net.UrlKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.utils.a;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushPointInfo;
import com.transsion.push.bean.PushRequest;
import com.transsion.push.bean.TrackerResponse;
import com.transsion.push.config.PushRepository;
import com.transsion.push.db.h;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ThreadManager;
import com.transsion.push.utils.g0;
import com.transsion.push.utils.k;
import com.transsion.push.utils.m;
import com.transsion.push.utils.o;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class PushTracker {

    private static PushTracker f48883b;

    private Context f48884a;

    private PushTracker() {
    }

    public JSONObject e() {
        JSONObject jSONObject;
        JSONException e10;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("app_id", PushUtils.e());
                jSONObject.put("app_ver", a.c());
                jSONObject.put("app_ver_code", a.b());
                jSONObject.put(UrlKt.KEY_MINI_GAID, DeviceInfo.e());
                jSONObject.put("pkg_name", a.a());
                jSONObject.put("sdk_ver", "2.0.2.01");
                jSONObject.put("sdk_ver_code", 17004);
                jSONObject.put("tz", k.c());
                jSONObject.put(PlaceTypes.COUNTRY, Locale.getDefault().getCountry());
                String strReplace = Build.BRAND;
                if (!TextUtils.isEmpty(strReplace)) {
                    strReplace = strReplace.toUpperCase().replace(" ", "");
                }
                jSONObject.put("brand", strReplace);
                jSONObject.put("mcc", k.d());
                jSONObject.put("mnc", k.d());
                jSONObject.put("device_type", k.h(this.f48884a) ? "pad" : "phone");
                jSONObject.put("android_ver", Build.VERSION.RELEASE);
                jSONObject.put("os_ver", Build.VERSION.SDK_INT);
            } catch (JSONException e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (JSONException e12) {
            jSONObject = null;
            e10 = e12;
        }
        return jSONObject;
    }

    public JSONObject f(Tracker.KEY key, Bundle bundle) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("name", key.event);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject2.put("network_type", o.b());
                if (bundle != null && !bundle.isEmpty()) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (String str : bundle.keySet()) {
                        jSONObject3.put(str, bundle.get(str));
                    }
                    jSONObject2.put("extra", jSONObject3);
                    return jSONObject2;
                }
                return jSONObject2;
            } catch (JSONException e10) {
                e = e10;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e11) {
            e = e11;
        }
    }

    public void g(JSONObject jSONObject, List list) {
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
            b bVar = new b();
            c cVar = new c(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = bVar.c(bVar.e(string));
            String strC2 = bVar.c(cVar.d(bVar.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bArrC = m.c(str, com.transsion.json.b.b(pushRequest).getBytes());
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                return;
            }
            TrackerResponse trackerResponse = (TrackerResponse) com.transsion.json.b.a(new String(bArrC), TrackerResponse.class);
            if (trackerResponse != null && trackerResponse.config != null) {
                PushLogUtils.LOG.g("post points response:" + trackerResponse);
                if (trackerResponse.status == 200) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IMMEDIATELY_TRACK, Boolean.valueOf(trackerResponse.config.reportType == 0));
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACKER_REPORT_INTERVAL, Long.valueOf(trackerResponse.config.reportTime));
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACKER_REPORT_TIME, Long.valueOf(System.currentTimeMillis() + g0.f()));
                    h.b().a(list);
                    return;
                }
                PushLogUtils.LOG.i("post points response status error, status:" + trackerResponse.status + ", " + trackerResponse.message);
                return;
            }
            PushLogUtils.LOG.i("parse post points BaseResponse failed");
        } catch (Exception e10) {
            PushLogUtils.LOG.i("post points Exception: " + e10.getMessage());
        }
    }

    public static PushTracker getInstance() {
        if (f48883b == null) {
            f48883b = new PushTracker();
        }
        return f48883b;
    }

    public void h(JSONObject jSONObject, JSONObject jSONObject2) {
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
            b bVar = new b();
            c cVar = new c(PushConstants.RSA_PUB_KEY);
            PushRequest pushRequest = new PushRequest();
            String strC = bVar.c(bVar.e(string));
            String strC2 = bVar.c(cVar.d(bVar.i()));
            pushRequest.data = strC;
            pushRequest.key = strC2;
            byte[] bArrC = m.c(str, com.transsion.json.b.b(pushRequest).getBytes());
            if (bArrC == null) {
                PushLogUtils.LOG.i("the response data is empty");
                h.b().c(jSONObject2.toString());
                return;
            }
            TrackerResponse trackerResponse = (TrackerResponse) com.transsion.json.b.a(new String(bArrC), TrackerResponse.class);
            if (trackerResponse == null) {
                PushLogUtils.LOG.i("parse post point BaseResponse failed");
                h.b().c(jSONObject2.toString());
                return;
            }
            PushLogUtils.LOG.g("post point response:" + trackerResponse);
            if (trackerResponse.status == 200) {
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IMMEDIATELY_TRACK, Boolean.valueOf(trackerResponse.config.reportType == 0));
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACKER_REPORT_INTERVAL, Long.valueOf(trackerResponse.config.reportTime));
                return;
            }
            PushLogUtils.LOG.i("post point response status error, status:" + trackerResponse.status + ", " + trackerResponse.message);
            h.b().c(jSONObject2.toString());
        } catch (Exception e10) {
            PushLogUtils.LOG.i("post point Exception: " + e10.getMessage());
            h.b().c(jSONObject2.toString());
        }
    }

    void i(final Tracker.KEY key, final Bundle bundle) {
        boolean zBooleanValue = ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_START_POINT_REPORT, Boolean.FALSE)).booleanValue();
        PushLogUtils.LOG.g("push tracker isStartPointReport:" + zBooleanValue + ", key:" + key.event);
        if (zBooleanValue) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    JSONObject jSONObjectF = PushTracker.this.f(key, bundle);
                    if (!g0.g()) {
                        h.b().c(jSONObjectF.toString());
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
        } else if (PushUtils.t()) {
            PushLogUtils.LOG.g("check tracker report");
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    List listD = h.b().d();
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

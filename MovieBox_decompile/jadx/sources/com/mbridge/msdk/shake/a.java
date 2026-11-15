package com.mbridge.msdk.shake;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

public class a {

    private SensorManager f36526a;

    private static class b {

        static a f36527a = new a();
    }

    public static a a() {
        return b.f36527a;
    }

    public void b(SensorEventListener sensorEventListener) {
        SensorManager sensorManager = this.f36526a;
        if (sensorManager != null) {
            try {
                sensorManager.unregisterListener(sensorEventListener);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private a() {
    }

    public void a(SensorEventListener sensorEventListener) {
        a(sensorEventListener, null, 2);
    }

    public void a(SensorEventListener sensorEventListener, Sensor sensor, int i10) {
        Context contextD = c.m().d();
        if (contextD != null) {
            try {
                if (this.f36526a == null) {
                    this.f36526a = (SensorManager) contextD.getSystemService("sensor");
                }
                if (sensor == null) {
                    sensor = this.f36526a.getDefaultSensor(1);
                }
                this.f36526a.registerListener(sensorEventListener, sensor, i10);
            } catch (Exception e10) {
                e10.printStackTrace();
                a(contextD, e10.getMessage());
            }
        }
    }

    private static void a(Context context, String str) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000106");
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f34503g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f34503g);
                }
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("NativeShakeManager", th2.getMessage());
            }
        }
    }
}

package com.bytedance.sdk.openadsdk.sU;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class vS {
    private Context Sj;
    private WeakReference<Dq> sP;
    private Map<String, Sj> TKC = new HashMap();
    private SensorEventListener EjP = new SensorEventListener() {
        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            Dq dqEjP;
            if (sensorEvent.sensor.getType() != 1 || (dqEjP = vS.this.EjP()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f10);
                jSONObject.put("y", f11);
                jSONObject.put("z", f12);
                dqEjP.Sj("accelerometer_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };
    private SensorEventListener HiB = new SensorEventListener() {
        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            Dq dqEjP;
            if (sensorEvent.sensor.getType() != 4 || (dqEjP = vS.this.EjP()) == null) {
                return;
            }
            float degrees = (float) Math.toDegrees(sensorEvent.values[0]);
            float degrees2 = (float) Math.toDegrees(sensorEvent.values[1]);
            float degrees3 = (float) Math.toDegrees(sensorEvent.values[2]);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", degrees);
                jSONObject.put("y", degrees2);
                jSONObject.put("z", degrees3);
                dqEjP.Sj("gyro_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };
    private SensorEventListener vS = new SensorEventListener() {
        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            Dq dqEjP;
            if (sensorEvent.sensor.getType() != 10 || (dqEjP = vS.this.EjP()) == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", f10);
                jSONObject.put("y", f11);
                jSONObject.put("z", f12);
                dqEjP.Sj("accelerometer_grativityless_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };
    private SensorEventListener Jcg = new SensorEventListener() {
        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                float[] fArr = sensorEvent.values;
                float[] fArr2 = TEQ.sP;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            } else if (sensorEvent.sensor.getType() == 2) {
                float[] fArr3 = sensorEvent.values;
                float[] fArr4 = TEQ.TKC;
                System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
            }
            float[] fArr5 = TEQ.EjP;
            SensorManager.getRotationMatrix(fArr5, null, TEQ.sP, TEQ.TKC);
            float[] fArr6 = TEQ.HiB;
            SensorManager.getOrientation(fArr5, fArr6);
            Dq dqEjP = vS.this.EjP();
            if (dqEjP == null) {
                return;
            }
            float f10 = fArr6[0];
            float f11 = fArr6[1];
            float f12 = fArr6[2];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("alpha", f10);
                jSONObject.put("beta", f11);
                jSONObject.put("gamma", f12);
                dqEjP.Sj("rotation_vector_callback", jSONObject);
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }
    };

    interface Sj {
        JSONObject Sj(JSONObject jSONObject) throws Throwable;
    }

    public vS(Dq dq2) {
        this.Sj = dq2.Sj();
        this.sP = new WeakReference<>(dq2);
        TKC();
    }

    public Dq EjP() {
        WeakReference<Dq> weakReference = this.sP;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public com.bytedance.sdk.openadsdk.sU.Sj HiB() {
        Dq dqEjP = EjP();
        if (dqEjP == null) {
            return null;
        }
        return dqEjP.dNu();
    }

    private void TKC() {
        this.TKC.put("adInfo", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                if (dqEjP == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectRiZ = dqEjP.RiZ();
                if (jSONObjectRiZ != null) {
                    jSONObjectRiZ.put("code", 1);
                    return jSONObjectRiZ;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", -1);
                return jSONObject3;
            }
        });
        this.TKC.put(TmcConstants.EXTRA_APPINFO, new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 1);
                jSONObject2.put(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.6.0");
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = vS.this.Sj().iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject2.put("supportList", jSONArray);
                Dq dqEjP = vS.this.EjP();
                if (dqEjP != null) {
                    jSONObject2.put("deviceId", dqEjP.Jcg());
                    jSONObject2.put("netType", dqEjP.uvD());
                    jSONObject2.put("innerAppName", dqEjP.EjP());
                    jSONObject2.put(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, dqEjP.HiB());
                    jSONObject2.put(TmcStartParams.KEY_APP_VERSION, dqEjP.vS());
                    Map<String, String> mapSP = dqEjP.sP();
                    for (String str : mapSP.keySet()) {
                        jSONObject2.put(str, mapSP.get(str));
                    }
                }
                return jSONObject2;
            }
        });
        this.TKC.put("playableSDKInfo", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", 1);
                jSONObject2.put(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "playable_sdk");
                jSONObject2.put("playableSdkEdition", "6.6.0");
                jSONObject2.put("os", "android");
                return jSONObject2;
            }
        });
        this.TKC.put("subscribe_app_ad", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("download_app_ad", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("isViewable", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                if (dqEjP == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 1);
                jSONObject3.put("viewStatus", dqEjP.uA());
                return jSONObject3;
            }
        });
        this.TKC.put("getVolume", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                if (dqEjP == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 1);
                jSONObject3.put("endcard_mute", dqEjP.Dq());
                return jSONObject3;
            }
        });
        this.TKC.put("getScreenSize", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                if (dqEjP == null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectTzV = dqEjP.TzV();
                jSONObjectTzV.put("code", 1);
                return jSONObjectTzV;
            }
        });
        this.TKC.put("start_accelerometer_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        Jcg.Sj("PlayableJsBridge", "invoke start_accelerometer_observer error", th2);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                TEQ.Sj(vS.this.Sj, vS.this.EjP, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("close_accelerometer_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    TEQ.Sj(vS.this.Sj, vS.this.EjP);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    Jcg.Sj("PlayableJsBridge", "invoke close_accelerometer_observer error", th2);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.TKC.put("start_gyro_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        Jcg.Sj("PlayableJsBridge", "invoke start_gyro_observer error", th2);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                TEQ.sP(vS.this.Sj, vS.this.HiB, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("close_gyro_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    TEQ.Sj(vS.this.Sj, vS.this.HiB);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    Jcg.Sj("PlayableJsBridge", "invoke close_gyro_observer error", th2);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.TKC.put("start_accelerometer_grativityless_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        Jcg.Sj("PlayableJsBridge", "invoke start_accelerometer_grativityless_observer error", th2);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                TEQ.TKC(vS.this.Sj, vS.this.vS, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("close_accelerometer_grativityless_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    TEQ.Sj(vS.this.Sj, vS.this.vS);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    Jcg.Sj("PlayableJsBridge", "invoke close_accelerometer_grativityless_observer error", th2);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.TKC.put("start_rotation_vector_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                int iOptInt = 2;
                if (jSONObject != null) {
                    try {
                        iOptInt = jSONObject.optInt("interval_android", 2);
                    } catch (Throwable th2) {
                        Jcg.Sj("PlayableJsBridge", "invoke start_rotation_vector_observer error", th2);
                        jSONObject2.put("code", -1);
                        jSONObject2.put("codeMsg", th2.toString());
                        return jSONObject2;
                    }
                }
                TEQ.EjP(vS.this.Sj, vS.this.Jcg, iOptInt);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("close_rotation_vector_observer", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    TEQ.Sj(vS.this.Sj, vS.this.Jcg);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    Jcg.Sj("PlayableJsBridge", "invoke close_rotation_vector_observer error", th2);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.TKC.put("device_shake", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    TEQ.Sj(vS.this.Sj, 300L);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    Jcg.Sj("PlayableJsBridge", "invoke device_shake error", th2);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.TKC.put("device_shake_short", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    TEQ.Sj(vS.this.Sj, 150L);
                    jSONObject2.put("code", 1);
                    return jSONObject2;
                } catch (Throwable th2) {
                    Jcg.Sj("PlayableJsBridge", "invoke device_shake error", th2);
                    jSONObject2.put("code", -1);
                    jSONObject2.put("codeMsg", th2.toString());
                    return jSONObject2;
                }
            }
        });
        this.TKC.put("playable_style", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectTKC = dqEjP.TKC();
                jSONObjectTKC.put("code", 1);
                return jSONObjectTKC;
            }
        });
        this.TKC.put("sendReward", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.dx();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("webview_time_track", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                return new JSONObject();
            }
        });
        this.TKC.put("playable_event", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null || jSONObject == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.sP(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null), jSONObject.optJSONObject("params"));
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("reportAd", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("close", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("openAdLandPageLinks", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("get_viewport", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectSU = dqEjP.sU();
                jSONObjectSU.put("code", 1);
                return jSONObjectSU;
            }
        });
        this.TKC.put("jssdk_load_finish", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.LD();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_material_render_result", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.uA(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("detect_change_playable_click", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectTEQ = dqEjP.TEQ();
                jSONObjectTEQ.put("code", 1);
                return jSONObjectTEQ;
            }
        });
        this.TKC.put("check_camera_permission", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectFmk = dqEjP.Fmk();
                jSONObjectFmk.put("code", 1);
                return jSONObjectFmk;
            }
        });
        this.TKC.put("check_external_storage", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectSef = dqEjP.sef();
                if (jSONObjectSef.isNull("result")) {
                    jSONObjectSef.put("code", -1);
                } else {
                    jSONObjectSef.put("code", 1);
                }
                return jSONObjectSef;
            }
        });
        this.TKC.put("playable_open_camera", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_pick_photo", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_download_media_in_photos", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.Sj(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_preventTouchEvent", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.sP(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_settings_info", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectZq = dqEjP.Zq();
                jSONObjectZq.put("code", 1);
                return jSONObjectZq;
            }
        });
        this.TKC.put("playable_load_main_scene", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.zR();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_enter_section", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.EjP(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_end", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.ib();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_finish_play_playable", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.kF();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_transfrom_module_show", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.uP();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_transfrom_module_change_color", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.wE();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_set_scroll_rect", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_click_area", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.HiB(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_real_play_start", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_material_first_frame_show", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.ley();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_stuck_check_pong", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.LqL();
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_material_adnormal_mask", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                dqEjP.vS(jSONObject);
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_long_press_panel", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_alpha_player_play", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_transfrom_module_highlight", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_send_click_event", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_query_media_permission_declare", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectJcg = dqEjP.Jcg(jSONObject);
                jSONObjectJcg.put("code", 1);
                return jSONObjectJcg;
            }
        });
        this.TKC.put("playable_query_media_permission_enable", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                Dq dqEjP = vS.this.EjP();
                JSONObject jSONObject2 = new JSONObject();
                if (dqEjP == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                JSONObject jSONObjectDq = dqEjP.Dq(jSONObject);
                jSONObjectDq.put("code", 1);
                return jSONObjectDq;
            }
        });
        this.TKC.put("playable_apply_media_permission", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_start_kws", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_close_kws", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_video_preload_task_add", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
        this.TKC.put("playable_video_preload_task_cancel", new Sj() {
            @Override
            public JSONObject Sj(JSONObject jSONObject) throws Throwable {
                com.bytedance.sdk.openadsdk.sU.Sj sjHiB = vS.this.HiB();
                JSONObject jSONObject2 = new JSONObject();
                if (sjHiB == null) {
                    jSONObject2.put("code", -1);
                    return jSONObject2;
                }
                jSONObject2.put("code", 1);
                return jSONObject2;
            }
        });
    }

    public Set<String> Sj() {
        return this.TKC.keySet();
    }

    public void sP() {
        TEQ.Sj(this.Sj, this.EjP);
        TEQ.Sj(this.Sj, this.HiB);
        TEQ.Sj(this.Sj, this.vS);
        TEQ.Sj(this.Sj, this.Jcg);
    }

    public JSONObject Sj(String str, JSONObject jSONObject) {
        try {
            Sj sj2 = this.TKC.get(str);
            if (sj2 == null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", -1);
                return jSONObject2;
            }
            return sj2.Sj(jSONObject);
        } catch (Throwable th2) {
            Jcg.Sj("PlayableJsBridge", "invoke error", th2);
            return null;
        }
    }
}

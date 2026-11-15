package com.bytedance.sdk.openadsdk.oem;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.LruCache;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.EjP.TKC;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import org.json.JSONObject;

public class IPMiBroadcastReceiver extends BroadcastReceiver {
    private static volatile IPMiBroadcastReceiver Sj;
    private int EjP = 0;
    private Sj TKC;
    private final LruCache<String, sU> sP;

    private IPMiBroadcastReceiver() {
        int i10 = 10;
        int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("ip_data_config", "ip_ad_cache_count", 10);
        if (iSj > 0 && iSj <= 200) {
            i10 = iSj;
        }
        this.sP = new LruCache<>(i10);
    }

    @Override
    public void onReceive(Context context, final Intent intent) {
        if ("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT".equals(intent.getAction())) {
            JcM.TKC(new Dq("ip-mi") {
                @Override
                public void run() {
                    final int i10;
                    final int i11;
                    final int i12;
                    try {
                        int intExtra = 0;
                        final int intExtra2 = intent.getIntExtra("errorCode", 0);
                        if (intExtra2 < 0) {
                            int intExtra3 = intent.getIntExtra("reason", 0);
                            if (intExtra2 == -4 && intExtra3 == -1) {
                                return;
                            } else {
                                i10 = intExtra3;
                            }
                        } else {
                            i10 = 0;
                        }
                        if (intExtra2 == 5) {
                            int intExtra4 = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, 0);
                            if (intExtra4 == -2) {
                                try {
                                    intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_PROGRESS, 0);
                                } catch (Throwable unused) {
                                    IPMiBroadcastReceiver.this.EjP = 1;
                                }
                                if (intExtra < 100) {
                                    return;
                                }
                            }
                            i11 = intExtra4;
                            i12 = intExtra;
                        } else {
                            i11 = 0;
                            i12 = 0;
                        }
                        String stringExtra = intent.getStringExtra("packageName");
                        Sj sj2 = IPMiBroadcastReceiver.this.TKC;
                        if (intExtra2 > 0 && sj2 != null) {
                            sj2.Sj(stringExtra, intExtra2);
                        }
                        final sU sUVarSj = IPMiBroadcastReceiver.this.Sj(stringExtra);
                        if (sUVarSj != null) {
                            TKC.Sj(System.currentTimeMillis(), sUVarSj, Mts.Sj(sUVarSj), "ip_listener_log", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() {
                                @Override
                                public JSONObject Sj() {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        JSONObject jSONObject2 = new JSONObject();
                                        JSONObject jSONObject3 = new JSONObject();
                                        jSONObject3.put("ip_error_code", intExtra2);
                                        sU sUVar = sUVarSj;
                                        if (sUVar != null) {
                                            jSONObject3.put("ip_is_w2a", sUVar.Jcg());
                                        }
                                        int i13 = intExtra2;
                                        if (i13 > 0) {
                                            if (i13 == 5) {
                                                jSONObject3.put("ip_status", i11);
                                                jSONObject3.put("ip_exec_type", IPMiBroadcastReceiver.this.EjP);
                                            }
                                            if (i11 == -2) {
                                                jSONObject3.put("ip_progress", i12);
                                            }
                                        }
                                        if (intExtra2 < 0) {
                                            jSONObject3.put("ip_reason", i10);
                                        }
                                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                                        jSONObject.put("ad_extra_data", jSONObject2);
                                    } catch (Throwable th2) {
                                        com.bytedance.sdk.component.utils.sU.sP("IPMiBroadcastReceiver", th2.getMessage());
                                    }
                                    return jSONObject;
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP("IPMiBroadcastReceiver", th2.getMessage());
                    }
                }
            });
        }
    }

    public void Sj(String str, sU sUVar) {
        if (TextUtils.isEmpty(str) || sUVar == null || this.sP.get(str) != null) {
            return;
        }
        this.sP.put(str, sUVar);
    }

    public sU Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.sP.get(str);
    }

    public void Sj(Sj sj2) {
        this.TKC = sj2;
    }

    public void Sj() {
        this.TKC = null;
    }

    public static IPMiBroadcastReceiver Sj(Context context) {
        if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("ip_data_config", "ip_link_listener", 0) == 0) {
            return null;
        }
        if (Sj == null) {
            synchronized (IPMiBroadcastReceiver.class) {
                try {
                    if (Sj == null) {
                        Sj = new IPMiBroadcastReceiver();
                        IntentFilter intentFilter = new IntentFilter("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT");
                        if (Build.VERSION.SDK_INT >= 34 && Mts.TEQ(context) >= 34) {
                            context.registerReceiver(Sj, intentFilter, 2);
                        } else {
                            context.registerReceiver(Sj, intentFilter);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public static void Sj(final Context context, sU sUVar) {
        kF kFVarENi;
        if (Sj == null && sUVar != null && (kFVarENi = sUVar.eNi()) != null && kFVarENi.Jcg()) {
            sef.sP().post(new Runnable() {
                @Override
                public void run() {
                    try {
                        IPMiBroadcastReceiver.Sj(dNu.Sj(context));
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP("IPMiBroadcastReceiver", th2.getMessage());
                    }
                }
            });
        }
    }
}

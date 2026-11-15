package com.mbridge.msdk.videocommon.net;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.h;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    private static final String f39129a = "com.mbridge.msdk.videocommon.net.a";

    public void a(Context context, String str, String str2) {
        e eVar = new e();
        eVar.a("app_id", str);
        eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str + str2));
        try {
            com.mbridge.msdk.videocommon.setting.a aVarD = com.mbridge.msdk.videocommon.setting.b.b().d();
            if (aVarD == null) {
                eVar.a("vtag", "");
            } else {
                String strJ = aVarD.j();
                if (TextUtils.isEmpty(strJ)) {
                    strJ = "";
                }
                eVar.a("vtag", strJ);
            }
        } catch (Throwable th2) {
            o0.b(f39129a, th2.getMessage());
        }
        new com.mbridge.msdk.videocommon.net.b(context).get(1, d.h().T, eVar, new C0550a(str), "setting", 60000L);
        a(3, 2, "");
    }

    class C0550a extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        final String f39130b;

        C0550a(String str) {
            this.f39130b = str;
        }

        @Override
        public void a(JSONObject jSONObject) {
            try {
                if (t0.a(jSONObject)) {
                    com.mbridge.msdk.videocommon.setting.b.b().b(false);
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String strD = com.mbridge.msdk.videocommon.setting.b.b().d(this.f39130b);
                        if (!TextUtils.isEmpty(strD)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(strD), jSONObject);
                            } catch (Exception e10) {
                                o0.b(a.f39129a, e10.getMessage());
                            }
                        }
                    }
                    try {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        com.mbridge.msdk.videocommon.setting.b.b().f(this.f39130b, jSONObject.toString());
                    } catch (JSONException e11) {
                        o0.b(a.f39129a, e11.getMessage());
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().f(this.f39130b);
                }
                a.this.a(1, 2, "");
            } catch (Throwable th2) {
                o0.b(a.f39129a, th2.getMessage());
            }
        }

        @Override
        public void a(String str) {
            com.mbridge.msdk.videocommon.setting.b.b().b(false);
            o0.b(a.f39129a, str);
            a.this.a(2, 2, str);
        }
    }

    public void a(Context context, String str, String str2, String str3, c cVar) {
        e eVar = new e();
        eVar.a("app_id", str);
        eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str + str2));
        eVar.a("unit_ids", "[" + str3 + "]");
        try {
            com.mbridge.msdk.videocommon.setting.c cVarD = com.mbridge.msdk.videocommon.setting.b.b().d(str, str3);
            if (cVarD == null) {
                eVar.a("vtag", "");
            } else {
                String strG = cVarD.G();
                if (TextUtils.isEmpty(strG)) {
                    strG = "";
                }
                eVar.a("vtag", strG);
            }
        } catch (Throwable th2) {
            o0.b(f39129a, th2.getMessage());
        }
        b bVar = new b(str, cVar);
        bVar.setUnitId(str3);
        new com.mbridge.msdk.videocommon.net.b(context).get(1, d.h().T, eVar, bVar, "setting", 60000L);
        a(3, 3, "");
    }

    class b extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        final String f39132b;

        final c f39133c;

        class RunnableC0551a implements Runnable {

            final JSONObject f39135a;

            RunnableC0551a(JSONObject jSONObject) {
                this.f39135a = jSONObject;
            }

            @Override
            public void run() {
                com.mbridge.msdk.videocommon.setting.b bVarB = com.mbridge.msdk.videocommon.setting.b.b();
                b bVar = b.this;
                bVarB.a(bVar.f39132b, bVar.unitId, this.f39135a.toString());
            }
        }

        b(String str, c cVar) {
            this.f39132b = str;
            this.f39133c = cVar;
        }

        @Override
        public void a(JSONObject jSONObject) {
            try {
                try {
                    com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
                } catch (Exception e10) {
                    o0.b(a.f39129a, e10.getMessage());
                }
                if (t0.a(jSONObject)) {
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String strB = com.mbridge.msdk.videocommon.setting.b.b().b(this.f39132b, this.unitId);
                        if (!TextUtils.isEmpty(strB)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(strB), jSONObject);
                            } catch (Exception e11) {
                                o0.b(a.f39129a, e11.getMessage());
                            }
                        }
                    }
                    if (com.mbridge.msdk.videocommon.setting.b.c(jSONObject.toString())) {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        RunnableC0551a runnableC0551a = new RunnableC0551a(jSONObject);
                        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(runnableC0551a);
                        } else {
                            runnableC0551a.run();
                        }
                        c cVar = this.f39133c;
                        if (cVar != null) {
                            cVar.a("request success");
                        }
                    } else {
                        c cVar2 = this.f39133c;
                        if (cVar2 != null) {
                            cVar2.onFailed("data error");
                        }
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().g(this.f39132b, this.unitId);
                }
                a.this.a(1, 3, "");
            } catch (Throwable th2) {
                o0.b(a.f39129a, th2.getMessage());
            }
        }

        @Override
        public void a(String str) {
            try {
                com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
            } catch (Exception e10) {
                o0.b(a.f39129a, e10.getMessage());
            }
            if (!TextUtils.isEmpty(str)) {
                c cVar = this.f39133c;
                if (cVar != null) {
                    cVar.onFailed(str);
                }
            } else {
                c cVar2 = this.f39133c;
                if (cVar2 != null) {
                    cVar2.onFailed("request error");
                }
            }
            a.this.a(2, 3, str);
        }
    }

    public void a(int i10, int i11, String str) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", "2000112");
            eVar.a("st_net", Integer.valueOf(d.h().f34655t));
            eVar.a("result", Integer.valueOf(i10));
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i11));
            eVar.a("url", d.h().f34654s ? d.h().U : d.h().T);
            eVar.a("reason", str);
            cVar.a("2000112", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000112", cVar);
        } catch (Throwable th2) {
            o0.b(f39129a, th2.getMessage());
        }
    }
}

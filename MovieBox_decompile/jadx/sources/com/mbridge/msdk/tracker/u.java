package com.mbridge.msdk.tracker;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import org.json.JSONObject;

public class u {

    private static volatile u f37896g;

    private m f37897a;

    private x f37898b;

    private volatile boolean f37899c = false;

    private int f37900d = 30000;

    private final HashMap<String, String> f37901e = new HashMap<>();

    Handler f37902f = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            try {
                u.this.b();
                u.this.f37902f.removeMessages(1);
                u.this.d();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private u() {
    }

    public void d() {
        try {
            this.f37902f.sendEmptyMessageDelayed(1, this.f37900d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005a A[Catch: Exception -> 0x0058, TRY_LEAVE, TryCatch #0 {Exception -> 0x0058, blocks: (B:5:0x0008, B:7:0x000d, B:9:0x001b, B:12:0x002e, B:15:0x003a, B:20:0x005a, B:25:0x00a6, B:22:0x0072), top: B:29:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x005a, please report this as an issue */
    public void b() {
        m[] mVarArrB = m.b();
        if (mVarArrB.length == 0) {
            return;
        }
        try {
            for (m mVar : mVarArrB) {
                String strF = mVar.f();
                if (!"monitor".equals(strF)) {
                    String strD = mVar.d();
                    long[] jArrE = mVar.e();
                    long j10 = jArrE[1];
                    if (j10 != 0) {
                        long j11 = jArrE[0];
                        if (this.f37901e.containsKey(strF)) {
                            if (!(j11 + "").equals(this.f37901e.get(strF))) {
                                this.f37901e.put(strF, j11 + "");
                                if (this.f37897a != null) {
                                    try {
                                        e eVar = new e("event_lib_monitor");
                                        eVar.a(1);
                                        JSONObject jSONObject = new JSONObject();
                                        jSONObject.put("key", "m_report_rate");
                                        jSONObject.put("task_name", strF);
                                        jSONObject.put("task_count", j10);
                                        jSONObject.put("task_session_id", strD);
                                        jSONObject.put("task_ts", j11);
                                        eVar.a(jSONObject);
                                        this.f37897a.d(eVar);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                            }
                        } else {
                            this.f37901e.put(strF, j11 + "");
                            if (this.f37897a != null) {
                                e eVar2 = new e("event_lib_monitor");
                                eVar2.a(1);
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("key", "m_report_rate");
                                jSONObject2.put("task_name", strF);
                                jSONObject2.put("task_count", j10);
                                jSONObject2.put("task_session_id", strD);
                                jSONObject2.put("task_ts", j11);
                                eVar2.a(jSONObject2);
                                this.f37897a.d(eVar2);
                            }
                        }
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public synchronized void c() {
        if (this.f37899c) {
            return;
        }
        this.f37899c = true;
        d();
    }

    public void a(Context context, x xVar, int i10, JSONObject jSONObject) {
        this.f37898b = xVar;
        this.f37900d = i10;
        m mVarA = m.a("monitor", context, xVar);
        this.f37897a = mVarA;
        if (mVarA != null) {
            mVarA.a(jSONObject);
            this.f37897a.h();
        }
        c();
    }

    public static u a() {
        if (f37896g == null) {
            synchronized (u.class) {
                try {
                    if (f37896g == null) {
                        f37896g = new u();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f37896g;
    }
}

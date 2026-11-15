package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.BatchReportDao;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.x;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Stack;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

public final class e {

    private static final String f34709l = "e";

    private static String f34710m = "roas";

    private static volatile e f34711n;

    private AtomicInteger f34712a;

    private BatchReportDao f34713b;

    private int f34714c = 1;

    private long f34715d = 0;

    private String f34716e = com.mbridge.msdk.foundation.same.net.utils.d.h().O;

    private volatile int f34717f = 0;

    private boolean f34718g = false;

    private Executor f34719h = Executors.newSingleThreadExecutor();

    private Handler f34720i;

    private Stack<Long> f34721j;

    private com.mbridge.msdk.tracker.m f34722k;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                Bundle data = message.getData();
                if (e.this.f34720i == null || e.this.f34713b == null || data == null) {
                    return;
                }
                e.this.f34720i.removeMessages(2);
                long jCurrentTimeMillis = System.currentTimeMillis();
                ArrayList<BatchReportMessage> batchReportMessages = e.this.f34713b.getBatchReportMessages(jCurrentTimeMillis, 2);
                e.this.b(batchReportMessages, jCurrentTimeMillis);
                e.this.f34712a.set(0);
                String str = e.f34709l;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("超时上报触发了，需要上报的数据： ");
                sb2.append(batchReportMessages != null ? batchReportMessages.size() : 0);
                o0.a(str, sb2.toString());
                return;
            }
            if (i10 == 2) {
                Bundle data2 = message.getData();
                if (e.this.f34720i == null || e.this.f34713b == null || data2 == null) {
                    return;
                }
                e.this.f34720i.removeMessages(1);
                long j10 = data2.getLong("last_report_time");
                ArrayList<BatchReportMessage> batchReportMessages2 = e.this.f34713b.getBatchReportMessages(j10, 2);
                e.this.b(batchReportMessages2, j10);
                String str2 = e.f34709l;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("队列上报触发了，需要上报的数据： ");
                sb3.append(batchReportMessages2 != null ? batchReportMessages2.size() : 0);
                o0.a(str2, sb3.toString());
                return;
            }
            if (i10 == 3) {
                Bundle data3 = message.getData();
                if (data3 != null) {
                    e.this.a((ArrayList<BatchReportMessage>) data3.getParcelableArrayList("report_message"), data3.getLong("last_report_time"));
                    return;
                }
                return;
            }
            if (i10 != 4) {
                return;
            }
            Bundle data4 = message.getData();
            if (e.this.f34720i == null || e.this.f34713b == null || data4 == null || !e.this.f34718g) {
                return;
            }
            e.this.f34720i.removeMessages(4);
            ArrayList<BatchReportMessage> batchReportMessages3 = e.this.f34713b.getBatchReportMessages(System.currentTimeMillis(), 2);
            if (batchReportMessages3 != null && batchReportMessages3.size() > 0) {
                for (int i11 = 0; i11 < batchReportMessages3.size(); i11++) {
                    BatchReportMessage batchReportMessage = batchReportMessages3.get(i11);
                    e.this.a(batchReportMessage.getReportMessage(), batchReportMessage.getTimestamp());
                }
            }
            String str3 = e.f34709l;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("切换上报lib，需要上报的数据： ");
            sb4.append(batchReportMessages3 != null ? batchReportMessages3.size() : 0);
            o0.a(str3, sb4.toString());
        }
    }

    class b extends com.mbridge.msdk.foundation.same.report.net.b {

        final long f34724b;

        final ArrayList f34725c;

        b(long j10, ArrayList arrayList) {
            this.f34724b = j10;
            this.f34725c = arrayList;
        }

        @Override
        public void a(String str) {
            Stack stack;
            o0.a(e.f34709l, "批量上报失败： " + str);
            e.this.a(2, str);
            synchronized (e.this.f34721j) {
                try {
                    e.this.f34721j.add(Long.valueOf(this.f34724b));
                    if (e.this.f34713b != null) {
                        e.this.f34713b.updateMessagesReportState(this.f34725c);
                    }
                    if (e.this.f34721j.size() >= 5) {
                        o0.a(e.f34709l, "批量上报失败，上报失败的数据超过阈值");
                        try {
                            try {
                                e.this.f34721j.pop();
                                long jLongValue = ((Long) e.this.f34721j.pop()).longValue();
                                e.this.f34721j.clear();
                                if (e.this.f34713b != null) {
                                    e.this.f34713b.deleteBatchReportMessagesByTimestamp(jLongValue);
                                }
                                stack = e.this.f34721j;
                            } catch (Throwable th2) {
                                e.this.f34721j.clear();
                                throw th2;
                            }
                        } catch (Exception e10) {
                            o0.b(e.f34709l, e10.getMessage());
                            stack = e.this.f34721j;
                        }
                        stack.clear();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        @Override
        public void b(String str) {
            o0.a(e.f34709l, "批量上报成功");
            e.this.a(1, "");
            try {
                if (e.this.f34713b != null) {
                    e.this.f34713b.deleteBatchReportMessagesByTimestamp(this.f34724b);
                }
            } catch (Exception e10) {
                o0.b(e.f34709l, e10.getMessage());
            }
            synchronized (e.this.f34721j) {
                e.this.f34721j.clear();
            }
        }
    }

    class c implements Runnable {

        final String f34727a;

        c(String str) {
            this.f34727a = str;
        }

        @Override
        public void run() {
            if (e.this.f34713b == null) {
                return;
            }
            o0.a(e.f34709l, "接收到上报数据： " + this.f34727a);
            if (!e.this.f34718g) {
                if (e.this.f34717f != 1) {
                    e.this.c(this.f34727a);
                }
            } else {
                e.this.a(this.f34727a, 0L);
                if (((Integer) w0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "roas_use_event", 0)).intValue() == 0) {
                    w0.b(com.mbridge.msdk.foundation.controller.c.m().d(), "roas_use_event", 1);
                    e.this.f34720i.sendEmptyMessage(4);
                }
            }
        }
    }

    private e() {
        d();
    }

    public static synchronized e c() {
        try {
            if (f34711n == null) {
                f34711n = new e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f34711n;
    }

    private void d() {
        com.mbridge.msdk.setting.a aVarJ;
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD != null && (aVarJ = gVarD.j()) != null) {
            this.f34714c = aVarJ.a();
            this.f34715d = ((long) aVarJ.c()) * 1000;
            this.f34716e = com.mbridge.msdk.foundation.same.net.utils.d.h().O;
            this.f34717f = aVarJ.b();
            boolean z10 = aVarJ.d() == 1;
            this.f34718g = z10;
            if (z10 && this.f34717f != 1) {
                int iB = q0.a().b("bcp", NativeComponentConstants.KEY_COMPONENT_TYPE, q0.a().b("t_r_t", 1));
                if (iB != 0 && iB != 1) {
                    iB = 0;
                }
                this.f34722k = com.mbridge.msdk.tracker.m.a(f34710m, com.mbridge.msdk.foundation.controller.c.m().d(), new x.b().a(new d()).a(new n()).a(iB, a(iB)).a(q0.a().b("t_m_e_t", MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF)).b(q0.a().b("t_m_e_s", 50)).d(q0.a().b("t_m_r_c", 50)).c(q0.a().b("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS)).e(q0.a().b("t_m_r_t_s", 1)).a());
                JSONObject jSONObjectB = com.mbridge.msdk.foundation.same.report.c.b();
                try {
                    jSONObjectB.put("device_type", k0.E(com.mbridge.msdk.foundation.controller.c.m().d()) ? "pad" : "phone");
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                        jSONObjectB.put(com.mbridge.msdk.foundation.same.net.wrapper.e.f34671j, k0.u());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f34722k.a(jSONObjectB);
                this.f34722k.h();
            }
        }
        o0.a(f34709l, "初始化批量上报： " + this.f34716e + " " + this.f34714c + " " + this.f34715d + " " + this.f34717f);
        this.f34712a = new AtomicInteger(0);
        this.f34721j = new Stack<>();
        this.f34713b = BatchReportDao.getInstance(com.mbridge.msdk.foundation.controller.c.m().d());
        HandlerThread handlerThread = new HandlerThread("mb_revenue_batch_report_thread");
        handlerThread.start();
        this.f34720i = new a(handlerThread.getLooper());
    }

    public void b(ArrayList<BatchReportMessage> arrayList, long j10) {
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("report_message", arrayList);
        bundle.putLong("last_report_time", j10);
        messageObtain.setData(bundle);
        messageObtain.what = 3;
        this.f34720i.sendMessage(messageObtain);
    }

    public void c(String str) {
        this.f34713b.addReportMessage(str, 2);
        Handler handler = this.f34720i;
        if (handler != null && !handler.hasMessages(1)) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            this.f34720i.sendMessageDelayed(messageObtain, this.f34715d);
        }
        if (this.f34712a.incrementAndGet() < this.f34714c || this.f34720i == null) {
            return;
        }
        Message messageObtain2 = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putLong("last_report_time", System.currentTimeMillis());
        messageObtain2.setData(bundle);
        messageObtain2.what = 2;
        this.f34720i.sendMessage(messageObtain2);
        this.f34712a.set(0);
    }

    private p a(int i10) {
        if (i10 == 1) {
            return new p(new m((byte) 2), com.mbridge.msdk.foundation.same.net.utils.d.h().f34647l, com.mbridge.msdk.foundation.same.net.utils.d.h().f34651p);
        }
        return new p(new com.mbridge.msdk.tracker.network.toolbox.h(), com.mbridge.msdk.foundation.same.net.utils.d.h().O, 0);
    }

    public void a(ArrayList<BatchReportMessage> arrayList, long j10) {
        if (arrayList != null && arrayList.size() > 0) {
            o0.a(f34709l, "需要上报的数据条数： " + arrayList.size());
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (contextD == null) {
                return;
            }
            com.mbridge.msdk.foundation.same.net.wrapper.e eVarA = j.a(contextD);
            eVarA.a("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
            eVarA.a("m_sdk", "msdk");
            eVarA.a("lqswt", String.valueOf(1));
            eVarA.a("device_type", k0.E(contextD) ? "pad" : "phone");
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                eVarA.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f34671j, k0.u());
            }
            StringBuilder sb2 = new StringBuilder();
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    BatchReportMessage batchReportMessage = arrayList.get(i10);
                    if (batchReportMessage != null) {
                        sb2.append(batchReportMessage.getReportMessage() + "&ts=" + batchReportMessage.getTimestamp());
                        if (i10 >= 0 && i10 < size - 1) {
                            sb2.append("\n");
                        }
                    }
                } catch (Throwable th2) {
                    o0.b(f34709l, th2.getMessage());
                }
            }
            try {
                String strEncode = URLEncoder.encode(sb2.toString(), "utf-8");
                eVarA.a("data", strEncode);
                o0.a(f34709l, "需要批量上报的数据： " + strEncode);
                com.mbridge.msdk.foundation.same.report.net.a aVar = new com.mbridge.msdk.foundation.same.report.net.a(com.mbridge.msdk.foundation.controller.c.m().d());
                a(0, "");
                aVar.post(0, this.f34716e, eVarA, new b(j10, arrayList), "roas", 60000L);
                return;
            } catch (Exception e10) {
                o0.b(f34709l, e10.getMessage());
                return;
            }
        }
        o0.a(f34709l, "需要上报的数据条数： 0");
    }

    public void b() {
        Handler handler = this.f34720i;
        if (handler == null || handler.hasMessages(1) || this.f34717f == 1 || this.f34718g) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        this.f34720i.sendMessageDelayed(messageObtain, 5000L);
    }

    public synchronized void b(String str) {
        Executor executor;
        try {
            if (this.f34717f == 1) {
                return;
            }
            c cVar = new c(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e() && (executor = this.f34719h) != null) {
                executor.execute(cVar);
            } else {
                cVar.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void a(String str, long j10) {
        if (this.f34722k != null) {
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("roas");
            eVar.a(true);
            if (j10 != 0) {
                eVar.c(j10);
            }
            eVar.a(1);
            try {
                eVar.a(a(str));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f34722k.d(eVar);
        }
    }

    public void a(int i10, String str) {
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("state", Integer.valueOf(i10));
        if (i10 == 2) {
            eVar.a("reason", str);
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a("m_ad_rev_s_s", eVar);
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_ad_rev_s_s", cVar);
    }

    private JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            for (String str2 : str.split(UrlUtils.AND_MARK)) {
                String[] strArrSplit = str2.split(UrlUtils.EQUAL_MARK);
                if (strArrSplit.length == 2) {
                    jSONObject.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}

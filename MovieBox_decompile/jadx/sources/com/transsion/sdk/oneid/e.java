package com.transsion.sdk.oneid;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import bz.g;
import bz.h;
import bz.i;
import bz.j;
import bz.l;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.gslb.GslbSdk;
import com.transsion.sdk.oneid.data.AppIdInfo;
import com.transsion.sdk.oneid.data.GroupFpInfo;
import com.transsion.sdk.oneid.data.GroupHashInfo;
import com.transsion.sdk.oneid.data.IdChangeInfo;
import com.transsion.sdk.oneid.data.OdIdInfo;
import com.transsion.sdk.oneid.data.UniqueIdInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

public class e implements Handler.Callback {

    private static volatile e f49915n;

    private Handler f49916a;

    private GroupFpInfo f49918c;

    private GroupHashInfo f49919d;

    private c f49922g;

    private final Context f49925j;

    private OdIdInfo f49926k;

    private ConcurrentHashMap f49927l;

    private HandlerThread f49917b = null;

    private long f49920e = 0;

    private long f49921f = 0;

    private final ReentrantLock f49924i = new ReentrantLock();

    private final AtomicBoolean f49928m = new AtomicBoolean(false);

    private final List f49923h = new CopyOnWriteArrayList();

    class a extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        a(e eVar) {
        }
    }

    class b extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        b(e eVar) {
        }
    }

    private e(Context context) {
        this.f49925j = context;
        j();
        Handler handler = this.f49916a;
        if (handler != null) {
            handler.sendEmptyMessage(200);
        }
    }

    public static e a(Context context) {
        if (f49915n == null) {
            synchronized (e.class) {
                try {
                    if (f49915n == null) {
                        f49915n = new e(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f49915n;
    }

    private void c(int i10, AppIdInfo appIdInfo) {
        if (com.transsion.sdk.oneid.b.q(this.f49925j)) {
            com.transsion.sdk.oneid.b.i("onOdidRequestRetry");
            appIdInfo.retryTimes++;
            long j10 = appIdInfo.retryRequestDelay;
            if (j10 == 0) {
                appIdInfo.retryRequestDelay = 3000L;
            } else {
                appIdInfo.retryRequestDelay = Math.min((j10 * 2) + 1000, 600000L);
            }
            Message messageObtain = Message.obtain(this.f49916a, 303);
            messageObtain.obj = appIdInfo;
            messageObtain.arg1 = i10;
            this.f49916a.sendMessageDelayed(messageObtain, appIdInfo.retryRequestDelay);
        }
    }

    private void d(Message message) {
        if (com.transsion.sdk.oneid.b.q(this.f49925j)) {
            long j10 = this.f49920e;
            if (j10 == 0) {
                this.f49920e = 3000L;
            } else {
                this.f49920e = Math.min((j10 * 2) + 1000, 600000L);
            }
            this.f49916a.sendMessageDelayed(message, this.f49920e);
        }
    }

    private void f(String str) {
        com.transsion.sdk.oneid.b.i("onFpPostComplete");
        this.f49921f = System.currentTimeMillis();
        try {
            bz.b bVarB = bz.b.b(this.f49925j);
            bVarB.c("last_post_time", Long.valueOf(this.f49921f / 1000).intValue());
            if (TextUtils.isEmpty(str)) {
                return;
            }
            bVarB.d("fp_hash", str);
        } catch (Exception e10) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
        }
    }

    private void g(String str, int i10, AppIdInfo appIdInfo) {
        com.transsion.sdk.oneid.b.i("onOdidRequestComplete appId : " + i10);
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optInt("code", 0);
            String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE, "");
            long jOptLong = jSONObject.optLong(EventConstants.KEY_TIME, 0L);
            appIdInfo.odid = jSONObject.optString("odid", "");
            appIdInfo.retryTimes = 0;
            appIdInfo.retryRequestDelay = 0L;
            appIdInfo.lastRequestTime = System.currentTimeMillis();
            long j10 = jOptLong * 1000;
            appIdInfo.waitTime = j10;
            appIdInfo.msg = strOptString;
            bz.b bVarB = bz.b.b(this.f49925j);
            String json = new Gson().toJson(this.f49927l, new b(this).getType());
            com.transsion.sdk.oneid.b.i("appIdInfoListJson : " + json);
            bVarB.g("appid_info_list", json);
            Message messageObtain = Message.obtain(this.f49916a, 303);
            messageObtain.obj = appIdInfo;
            messageObtain.arg1 = i10;
            this.f49916a.sendMessageDelayed(messageObtain, j10);
        } catch (Exception e10) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
        }
    }

    private void j() {
        if (this.f49924i.tryLock()) {
            try {
                try {
                    Handler handler = this.f49916a;
                    if (handler == null || this.f49917b == null) {
                        HandlerThread handlerThread = new HandlerThread("OneID Worker", 10);
                        this.f49917b = handlerThread;
                        handlerThread.start();
                        this.f49916a = new Handler(this.f49917b.getLooper(), this);
                    } else if (handler.hasMessages(201)) {
                        this.f49916a.removeMessages(201);
                    }
                } catch (Exception e10) {
                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
                }
            } finally {
                this.f49924i.unlock();
            }
        }
    }

    private void k() {
        ConcurrentHashMap concurrentHashMap = this.f49927l;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            String strH = bz.b.b(this.f49925j).h("appid_info_list");
            if (!TextUtils.isEmpty(strH)) {
                com.transsion.sdk.oneid.b.i("AppId Records : " + strH);
                try {
                    this.f49927l = (ConcurrentHashMap) new Gson().fromJson(strH, new a(this).getType());
                } catch (Exception e10) {
                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
                }
            }
            if (this.f49927l == null) {
                this.f49927l = new ConcurrentHashMap();
            }
        }
    }

    public void b(int i10) {
        com.transsion.sdk.oneid.b.i("Check appId record : " + i10);
        HandlerThread handlerThread = this.f49917b;
        if (handlerThread == null || !handlerThread.isAlive()) {
            return;
        }
        Message messageObtain = Message.obtain(this.f49916a, Sdk$SDKError.Reason.AD_EXPIRED_VALUE);
        messageObtain.obj = Integer.valueOf(i10);
        if (this.f49928m.get()) {
            this.f49916a.sendMessage(messageObtain);
        } else {
            this.f49916a.sendMessageDelayed(messageObtain, ((long) OneID.f49901d) * 1000);
        }
    }

    public void e(IdChangeInfo idChangeInfo) {
        IdChangeInfo idChangeInfo2;
        com.transsion.sdk.oneid.b.i("onFpIdChanged type = " + idChangeInfo.id_type);
        List list = this.f49923h;
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    idChangeInfo2 = null;
                    break;
                }
                idChangeInfo2 = (IdChangeInfo) it.next();
            } while (!idChangeInfo2.id_type.equals(idChangeInfo.id_type));
            if (idChangeInfo2 != null) {
                this.f49923h.remove(idChangeInfo2);
            }
            this.f49923h.add(idChangeInfo);
        }
    }

    public String h() {
        try {
            GroupFpInfo groupFpInfo = this.f49918c;
            return groupFpInfo != null ? groupFpInfo.vaid : "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public boolean handleMessage(Message message) {
        GroupFpInfo groupFpInfo;
        int i10;
        long j10;
        String strF;
        try {
            int i11 = message.what;
            if (i11 == 100) {
                com.transsion.sdk.oneid.b.i("-->WHAT_GET_PROP_RET");
                String string = message.getData().getString("oneid");
                if (!TextUtils.isEmpty(string) && !TextUtils.equals(string, NetworkUtil.NETWORK_TYPE_UNKNOWN) && (groupFpInfo = this.f49918c) != null) {
                    if (TextUtils.isEmpty(groupFpInfo.dids.tsid)) {
                        UniqueIdInfo uniqueIdInfo = this.f49918c.dids;
                        uniqueIdInfo.tsid = string;
                        this.f49919d.updateDidsHash(uniqueIdInfo);
                        this.f49926k.tsid = string;
                        bz.b bVarB = bz.b.b(this.f49925j);
                        int iIntValue = Long.valueOf(System.currentTimeMillis() / 1000).intValue();
                        try {
                            bVarB.d("oneid", string);
                            bVarB.c("oneid_time", iIntValue);
                        } catch (Exception e10) {
                            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e10));
                        }
                    } else if (!TextUtils.equals(this.f49918c.dids.tsid, string)) {
                        e(new IdChangeInfo("tsid", this.f49918c.dids.tsid, string));
                        UniqueIdInfo uniqueIdInfo2 = this.f49918c.dids;
                        uniqueIdInfo2.tsid = string;
                        this.f49919d.updateDidsHash(uniqueIdInfo2);
                        this.f49926k.tsid = string;
                    }
                }
            } else if (i11 == 200) {
                com.transsion.sdk.oneid.b.o();
                if (TextUtils.isEmpty(bz.b.b(this.f49925j).h("one_id_first_launch")) && OneID.f49901d > 0) {
                    com.transsion.sdk.oneid.b.i("First launch delay " + OneID.f49901d + " sec init");
                    try {
                        Thread.sleep(((long) OneID.f49901d) * 1000);
                    } catch (InterruptedException unused) {
                    }
                    bz.b.b(this.f49925j).g("one_id_first_launch", String.valueOf(System.currentTimeMillis()));
                }
                com.transsion.sdk.oneid.b.i("-->WHAT_INIT 2.0.2.1");
                String string2 = this.f49925j.getResources().getString(R$string.oneid_process_name);
                if (TextUtils.isEmpty(string2)) {
                    string2 = this.f49925j.getPackageName();
                }
                if (!TextUtils.equals(string2, com.transsion.sdk.oneid.b.k(this.f49925j))) {
                    com.transsion.sdk.oneid.b.i("Only works in the main process");
                    this.f49916a.sendEmptyMessageDelayed(201, 1000L);
                    return false;
                }
                try {
                    if (this.f49922g == null) {
                        this.f49922g = new c();
                        this.f49925j.registerReceiver(this.f49922g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), null, this.f49916a);
                    }
                } catch (Exception e11) {
                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
                }
                GslbSdk.init(this.f49925j, new String[]{"ire-oneid.shalltry.com", "oneid-dev-sg.shalltry.com"}, (GslbSdk.InitListener) null);
                GroupFpInfo groupFpInfo2 = new GroupFpInfo(this.f49925j, this);
                this.f49918c = groupFpInfo2;
                this.f49919d = new GroupHashInfo(groupFpInfo2);
                this.f49926k = new OdIdInfo(this.f49918c);
                com.transsion.sdk.oneid.b.i("--> new OdidInfo " + this.f49926k);
                if (this.f49921f == 0) {
                    this.f49921f = ((long) bz.b.b(this.f49925j).a("last_post_time")) * 1000;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j11 = this.f49921f;
                if (jCurrentTimeMillis >= j11 && jCurrentTimeMillis - j11 < 86400000) {
                    com.transsion.sdk.oneid.b.i("Post time not yet reached");
                } else if (!this.f49916a.hasMessages(300)) {
                    Handler handler = this.f49916a;
                    if (GslbSdk.isInitSuccess(l.d().c())) {
                        i10 = 300;
                        j10 = 3000;
                    } else {
                        i10 = 300;
                        j10 = 6000;
                    }
                    handler.sendEmptyMessageDelayed(i10, j10);
                }
                this.f49928m.set(true);
            } else if (i11 != 201) {
                switch (i11) {
                    case 300:
                        com.transsion.sdk.oneid.b.i("-->WHAT_POST_FP_HASH");
                        this.f49916a.removeMessages(300);
                        if (OneID.f49900c && com.transsion.sdk.oneid.b.p(this.f49925j)) {
                            if (!GslbSdk.isInitSuccess(l.d().c())) {
                                com.transsion.sdk.oneid.b.i("GslbSdk new domain is not ready");
                                d(Message.obtain(this.f49916a, 300));
                                return false;
                            }
                            try {
                                strF = bz.b.b(this.f49925j).f("fp_hash");
                            } catch (Exception unused2) {
                                strF = "";
                            }
                            String strG = com.transsion.sdk.oneid.b.g(this.f49919d.toString());
                            com.transsion.sdk.oneid.b.i(strF + " vs " + strG);
                            if (TextUtils.equals(strF, strG)) {
                                f(null);
                            } else {
                                Message.obtain(this.f49916a, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, strG).sendToTarget();
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f49920e = 0L;
                        this.f49916a.sendEmptyMessage(201);
                        return false;
                    case MRAID_ERROR_VALUE:
                        com.transsion.sdk.oneid.b.i("-->WHAT_POST_FP_DATA");
                        this.f49916a.removeMessages(Sdk$SDKError.Reason.MRAID_ERROR_VALUE);
                        if (OneID.f49900c && com.transsion.sdk.oneid.b.p(this.f49925j)) {
                            String str = (String) message.obj;
                            i iVarA = new g(this.f49918c).a();
                            com.transsion.sdk.oneid.b.i("code = " + iVarA.f16352a + " data = " + ((String) iVarA.f16353b));
                            int i12 = iVarA.f16352a;
                            if (i12 == 0) {
                                this.f49920e = 0L;
                                try {
                                    if (new JSONObject((String) iVarA.f16353b).optInt("code", 0) == 0) {
                                        if (this.f49923h.isEmpty()) {
                                            f(str);
                                        } else {
                                            Message.obtain(this.f49916a, Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, str).sendToTarget();
                                        }
                                    }
                                } catch (Exception e12) {
                                    com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e12));
                                }
                            } else if (i12 != 4) {
                                d(Message.obtain(this.f49916a, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, str));
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f49920e = 0L;
                        this.f49916a.sendEmptyMessage(201);
                        return false;
                    case INVALID_IFA_STATUS_VALUE:
                        com.transsion.sdk.oneid.b.i("-->WHAT_POST_ID_CHANGE");
                        this.f49916a.removeMessages(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE);
                        String str2 = (String) message.obj;
                        ArrayList arrayList = new ArrayList();
                        for (IdChangeInfo idChangeInfo : this.f49923h) {
                            if (!TextUtils.isEmpty(idChangeInfo.pre_id)) {
                                arrayList.add(idChangeInfo);
                            }
                        }
                        if (arrayList.size() > 0) {
                            try {
                                i iVarA2 = new h(arrayList).a();
                                com.transsion.sdk.oneid.b.i("code = " + iVarA2.f16352a + " data = " + ((String) iVarA2.f16353b));
                                int i13 = iVarA2.f16352a;
                                if (i13 == 0) {
                                    this.f49920e = 0L;
                                    try {
                                        if (new JSONObject((String) iVarA2.f16353b).optInt("code", 0) == 0) {
                                            com.transsion.sdk.oneid.b.h(this.f49925j, this.f49923h);
                                            this.f49923h.clear();
                                            f(str2);
                                        }
                                    } catch (Exception e13) {
                                        com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e13));
                                    }
                                } else if (i13 != 4) {
                                    d(Message.obtain(this.f49916a, Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, str2));
                                }
                            } catch (Exception e14) {
                                com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e14));
                            }
                        } else {
                            if (this.f49923h.size() > 0) {
                                com.transsion.sdk.oneid.b.h(this.f49925j, this.f49923h);
                                this.f49923h.clear();
                            }
                            f(str2);
                        }
                        break;
                    case 303:
                        com.transsion.sdk.oneid.b.i("-->WHAT_REQUEST_ODID");
                        int i14 = message.arg1;
                        AppIdInfo appIdInfo = (AppIdInfo) message.obj;
                        this.f49916a.removeMessages(303, appIdInfo);
                        if (OneID.f49900c && com.transsion.sdk.oneid.b.p(this.f49925j)) {
                            OdIdInfo odIdInfo = this.f49926k;
                            if (odIdInfo != null) {
                                odIdInfo.appid = i14;
                                com.transsion.sdk.oneid.b.i("--> mOdidInfo set appID :" + this.f49926k.toString());
                                i iVarA3 = new j(this.f49926k).a();
                                com.transsion.sdk.oneid.b.i("code = " + iVarA3.f16352a + " data = " + ((String) iVarA3.f16353b));
                                int i15 = iVarA3.f16352a;
                                if (i15 == 0) {
                                    g((String) iVarA3.f16353b, i14, appIdInfo);
                                } else if (i15 == 3) {
                                    com.transsion.sdk.oneid.b.i("onOdidRequestGatewayError");
                                    Message messageObtain = Message.obtain(this.f49916a, 303);
                                    messageObtain.obj = appIdInfo;
                                    messageObtain.arg1 = i14;
                                    this.f49916a.sendMessageDelayed(messageObtain, 1000L);
                                } else if (i15 != 4) {
                                    c(i14, appIdInfo);
                                }
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f49916a.sendEmptyMessage(201);
                        return false;
                    case AD_EXPIRED_VALUE:
                        Integer num = (Integer) message.obj;
                        int iIntValue2 = num.intValue();
                        this.f49916a.removeMessages(Sdk$SDKError.Reason.AD_EXPIRED_VALUE, num);
                        if (OneID.f49900c && com.transsion.sdk.oneid.b.p(this.f49925j)) {
                            k();
                            AppIdInfo appIdInfo2 = (AppIdInfo) this.f49927l.get(num);
                            if (appIdInfo2 == null) {
                                appIdInfo2 = new AppIdInfo();
                                this.f49927l.put(num, appIdInfo2);
                                OdIdInfo odIdInfo2 = this.f49926k;
                                if (odIdInfo2 != null) {
                                    odIdInfo2.appid = iIntValue2;
                                }
                            }
                            Message messageObtain2 = Message.obtain(this.f49916a, 303);
                            messageObtain2.arg1 = iIntValue2;
                            messageObtain2.obj = appIdInfo2;
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            long jMax = GslbSdk.isInitSuccess(l.d().c()) ? 3000L : 6000L;
                            long j12 = appIdInfo2.lastRequestTime;
                            if (jCurrentTimeMillis2 >= j12) {
                                long j13 = jCurrentTimeMillis2 - j12;
                                long j14 = appIdInfo2.waitTime;
                                if (j13 < j14) {
                                    jMax = Math.max((j12 + j14) - jCurrentTimeMillis2, jMax);
                                }
                            }
                            if (!this.f49916a.hasMessages(303, appIdInfo2)) {
                                this.f49916a.sendMessageDelayed(messageObtain2, jMax);
                                com.transsion.sdk.oneid.b.i("Appid : " + iIntValue2 + " delay " + jMax + " ms refresh odid ");
                            }
                            break;
                        }
                        com.transsion.sdk.oneid.b.i("OneID disable or network unavailable");
                        this.f49916a.sendEmptyMessage(201);
                        return false;
                }
            } else {
                com.transsion.sdk.oneid.b.i("-->WHAT_QUIT");
                if (this.f49924i.tryLock()) {
                    try {
                        HandlerThread handlerThread = this.f49917b;
                        if (handlerThread != null) {
                            handlerThread.quit();
                            this.f49917b = null;
                        }
                    } finally {
                        this.f49924i.unlock();
                    }
                }
            }
        } catch (Exception e15) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e15));
        }
        return false;
    }

    public String i(int i10) {
        AppIdInfo appIdInfo;
        String str;
        ConcurrentHashMap concurrentHashMap = this.f49927l;
        return (concurrentHashMap == null || (appIdInfo = (AppIdInfo) concurrentHashMap.get(Integer.valueOf(i10))) == null || (str = appIdInfo.odid) == null) ? "" : str;
    }

    public void l() {
        if (com.transsion.sdk.oneid.b.q(this.f49925j)) {
            com.transsion.sdk.oneid.b.i("retry");
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z10 = OneID.f49900c;
            if (z10) {
                long j10 = this.f49921f;
                if (jCurrentTimeMillis < j10 || jCurrentTimeMillis - j10 >= 86400000) {
                    if (this.f49924i.tryLock()) {
                        try {
                            if (this.f49917b == null) {
                                j();
                            }
                            this.f49924i.unlock();
                        } catch (Throwable th2) {
                            this.f49924i.unlock();
                            throw th2;
                        }
                    }
                    Handler handler = this.f49916a;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                        this.f49916a.sendEmptyMessage(200);
                        return;
                    }
                    return;
                }
            }
            com.transsion.sdk.oneid.b.i(z10 ? "Post time not yet reached" : "OneID disable");
        }
    }
}

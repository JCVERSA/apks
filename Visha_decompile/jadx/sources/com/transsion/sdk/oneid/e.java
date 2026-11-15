package com.transsion.sdk.oneid;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.gslb.GslbSdk;
import com.transsion.sdk.oneid.data.AppIdInfo;
import com.transsion.sdk.oneid.data.GroupFpInfo;
import com.transsion.sdk.oneid.data.GroupHashInfo;
import com.transsion.sdk.oneid.data.IdChangeInfo;
import com.transsion.sdk.oneid.data.OdIdInfo;
import com.transsion.sdk.oneid.data.UniqueIdInfo;
import defpackage.d8d;
import defpackage.p6d;
import defpackage.r6d;
import defpackage.sfd;
import defpackage.tjd;
import defpackage.uid;
import defpackage.xgd;
import defpackage.zld;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

public class e implements Handler.Callback {
    public static volatile e o;
    public Handler b;
    public GroupFpInfo d;
    public GroupHashInfo e;
    public d8d h;
    public final Context k;
    public OdIdInfo l;
    public ConcurrentHashMap m;
    public HandlerThread c = null;
    public long f = 0;
    public long g = 0;
    public final ReentrantLock j = new ReentrantLock();
    public final AtomicBoolean n = new AtomicBoolean(false);
    public final List i = new CopyOnWriteArrayList();

    public class a extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        public a(e eVar) {
        }
    }

    public class b extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        public b(e eVar) {
        }
    }

    public e(Context context) {
        this.k = context;
        j();
        Handler handler = this.b;
        if (handler != null) {
            handler.sendEmptyMessage(200);
        }
    }

    public static e a(Context context) {
        if (o == null) {
            synchronized (e.class) {
                try {
                    if (o == null) {
                        o = new e(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return o;
    }

    public void b(int i) {
        p6d.i("Check appId record : " + i);
        HandlerThread handlerThread = this.c;
        if (handlerThread == null || !handlerThread.isAlive()) {
            return;
        }
        Message messageObtain = Message.obtain(this.b, 304);
        messageObtain.obj = Integer.valueOf(i);
        if (this.n.get()) {
            this.b.sendMessage(messageObtain);
        } else {
            this.b.sendMessageDelayed(messageObtain, ((long) OneID.d) * 1000);
        }
    }

    public final void c(int i, AppIdInfo appIdInfo) {
        if (p6d.q(this.k)) {
            p6d.i("onOdidRequestRetry");
            appIdInfo.retryTimes++;
            long j = appIdInfo.retryRequestDelay;
            if (j == 0) {
                appIdInfo.retryRequestDelay = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            } else {
                appIdInfo.retryRequestDelay = Math.min((j * 2) + 1000, 600000L);
            }
            Message messageObtain = Message.obtain(this.b, 303);
            messageObtain.obj = appIdInfo;
            messageObtain.arg1 = i;
            this.b.sendMessageDelayed(messageObtain, appIdInfo.retryRequestDelay);
        }
    }

    public final void d(Message message) {
        if (p6d.q(this.k)) {
            long j = this.f;
            if (j == 0) {
                this.f = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            } else {
                this.f = Math.min((j * 2) + 1000, 600000L);
            }
            this.b.sendMessageDelayed(message, this.f);
        }
    }

    public void e(IdChangeInfo idChangeInfo) {
        IdChangeInfo idChangeInfo2;
        p6d.i("onFpIdChanged type = " + idChangeInfo.id_type);
        List list = this.i;
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
                this.i.remove(idChangeInfo2);
            }
            this.i.add(idChangeInfo);
        }
    }

    public final void f(String str) {
        p6d.i("onFpPostComplete");
        this.g = System.currentTimeMillis();
        try {
            r6d r6dVarB = r6d.b(this.k);
            r6dVarB.c("last_post_time", Long.valueOf(this.g / 1000).intValue());
            if (TextUtils.isEmpty(str)) {
                return;
            }
            r6dVarB.d("fp_hash", str);
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    public final void g(String str, int i, AppIdInfo appIdInfo) {
        p6d.i("onOdidRequestComplete appId : " + i);
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optInt(TrackingKey.CODE, 0);
            String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE, "");
            long jOptLong = jSONObject.optLong("time", 0L);
            appIdInfo.odid = jSONObject.optString("odid", "");
            appIdInfo.retryTimes = 0;
            appIdInfo.retryRequestDelay = 0L;
            appIdInfo.lastRequestTime = System.currentTimeMillis();
            long j = jOptLong * 1000;
            appIdInfo.waitTime = j;
            appIdInfo.msg = strOptString;
            r6d r6dVarB = r6d.b(this.k);
            String json = new Gson().toJson(this.m, new b(this).getType());
            p6d.i("appIdInfoListJson : " + json);
            r6dVarB.g("appid_info_list", json);
            Message messageObtain = Message.obtain(this.b, 303);
            messageObtain.obj = appIdInfo;
            messageObtain.arg1 = i;
            this.b.sendMessageDelayed(messageObtain, j);
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    public String h() {
        try {
            GroupFpInfo groupFpInfo = this.d;
            return groupFpInfo != null ? groupFpInfo.vaid : "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public boolean handleMessage(Message message) {
        GroupFpInfo groupFpInfo;
        int i;
        long j;
        String strF;
        try {
            int i2 = message.what;
            if (i2 == 100) {
                p6d.i("-->WHAT_GET_PROP_RET");
                String string = message.getData().getString("oneid");
                if (!TextUtils.isEmpty(string) && !TextUtils.equals(string, "UNKNOWN") && (groupFpInfo = this.d) != null) {
                    if (TextUtils.isEmpty(groupFpInfo.dids.tsid)) {
                        UniqueIdInfo uniqueIdInfo = this.d.dids;
                        uniqueIdInfo.tsid = string;
                        this.e.updateDidsHash(uniqueIdInfo);
                        this.l.tsid = string;
                        r6d r6dVarB = r6d.b(this.k);
                        int iIntValue = Long.valueOf(System.currentTimeMillis() / 1000).intValue();
                        try {
                            r6dVarB.d("oneid", string);
                            r6dVarB.c("oneid_time", iIntValue);
                        } catch (Exception e) {
                            p6d.m(Log.getStackTraceString(e));
                        }
                    } else if (!TextUtils.equals(this.d.dids.tsid, string)) {
                        e(new IdChangeInfo("tsid", this.d.dids.tsid, string));
                        UniqueIdInfo uniqueIdInfo2 = this.d.dids;
                        uniqueIdInfo2.tsid = string;
                        this.e.updateDidsHash(uniqueIdInfo2);
                        this.l.tsid = string;
                    }
                }
            } else if (i2 == 200) {
                p6d.o();
                if (TextUtils.isEmpty(r6d.b(this.k).h("one_id_first_launch")) && OneID.d > 0) {
                    p6d.i("First launch delay " + OneID.d + " sec init");
                    try {
                        Thread.sleep(((long) OneID.d) * 1000);
                    } catch (InterruptedException unused) {
                    }
                    r6d.b(this.k).g("one_id_first_launch", String.valueOf(System.currentTimeMillis()));
                }
                p6d.i("-->WHAT_INIT 2.0.2.1");
                String string2 = this.k.getResources().getString(R.string.oneid_process_name);
                if (TextUtils.isEmpty(string2)) {
                    string2 = this.k.getPackageName();
                }
                if (!TextUtils.equals(string2, p6d.k(this.k))) {
                    p6d.i("Only works in the main process");
                    this.b.sendEmptyMessageDelayed(201, 1000L);
                    return false;
                }
                try {
                    if (this.h == null) {
                        this.h = new d8d();
                        this.k.registerReceiver(this.h, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), null, this.b);
                    }
                } catch (Exception e2) {
                    p6d.m(Log.getStackTraceString(e2));
                }
                GslbSdk.init(this.k, new String[]{"ire-oneid.shalltry.com", "oneid-dev-sg.shalltry.com"}, (GslbSdk.InitListener) null);
                GroupFpInfo groupFpInfo2 = new GroupFpInfo(this.k, this);
                this.d = groupFpInfo2;
                this.e = new GroupHashInfo(groupFpInfo2);
                this.l = new OdIdInfo(this.d);
                p6d.i("--> new OdidInfo " + this.l);
                if (this.g == 0) {
                    this.g = ((long) r6d.b(this.k).a("last_post_time")) * 1000;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = this.g;
                if (jCurrentTimeMillis >= j2 && jCurrentTimeMillis - j2 < 86400000) {
                    p6d.i("Post time not yet reached");
                } else if (!this.b.hasMessages(300)) {
                    Handler handler = this.b;
                    if (GslbSdk.isInitSuccess(zld.d().c())) {
                        i = 300;
                        j = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
                    } else {
                        i = 300;
                        j = 6000;
                    }
                    handler.sendEmptyMessageDelayed(i, j);
                }
                this.n.set(true);
            } else if (i2 != 201) {
                switch (i2) {
                    case 300:
                        p6d.i("-->WHAT_POST_FP_HASH");
                        this.b.removeMessages(300);
                        if (OneID.c && p6d.p(this.k)) {
                            if (!GslbSdk.isInitSuccess(zld.d().c())) {
                                p6d.i("GslbSdk new domain is not ready");
                                d(Message.obtain(this.b, 300));
                                return false;
                            }
                            try {
                                strF = r6d.b(this.k).f("fp_hash");
                            } catch (Exception unused2) {
                                strF = "";
                            }
                            String strG = p6d.g(this.e.toString());
                            p6d.i(strF + " vs " + strG);
                            if (TextUtils.equals(strF, strG)) {
                                f(null);
                            } else {
                                Message.obtain(this.b, 301, strG).sendToTarget();
                            }
                            break;
                        }
                        p6d.i("OneID disable or network unavailable");
                        this.f = 0L;
                        this.b.sendEmptyMessage(201);
                        return false;
                    case 301:
                        p6d.i("-->WHAT_POST_FP_DATA");
                        this.b.removeMessages(301);
                        if (OneID.c && p6d.p(this.k)) {
                            String str = (String) message.obj;
                            uid uidVarA = new sfd(this.d).a();
                            p6d.i("code = " + uidVarA.a + " data = " + ((String) uidVarA.b));
                            int i3 = uidVarA.a;
                            if (i3 == 0) {
                                this.f = 0L;
                                try {
                                    if (new JSONObject((String) uidVarA.b).optInt(TrackingKey.CODE, 0) == 0) {
                                        if (this.i.isEmpty()) {
                                            f(str);
                                        } else {
                                            Message.obtain(this.b, 302, str).sendToTarget();
                                        }
                                    }
                                } catch (Exception e3) {
                                    p6d.m(Log.getStackTraceString(e3));
                                }
                            } else if (i3 != 4) {
                                d(Message.obtain(this.b, 301, str));
                            }
                            break;
                        }
                        p6d.i("OneID disable or network unavailable");
                        this.f = 0L;
                        this.b.sendEmptyMessage(201);
                        return false;
                    case 302:
                        p6d.i("-->WHAT_POST_ID_CHANGE");
                        this.b.removeMessages(302);
                        String str2 = (String) message.obj;
                        ArrayList arrayList = new ArrayList();
                        for (IdChangeInfo idChangeInfo : this.i) {
                            if (!TextUtils.isEmpty(idChangeInfo.pre_id)) {
                                arrayList.add(idChangeInfo);
                            }
                        }
                        if (arrayList.size() > 0) {
                            try {
                                uid uidVarA2 = new xgd(arrayList).a();
                                p6d.i("code = " + uidVarA2.a + " data = " + ((String) uidVarA2.b));
                                int i4 = uidVarA2.a;
                                if (i4 == 0) {
                                    this.f = 0L;
                                    try {
                                        if (new JSONObject((String) uidVarA2.b).optInt(TrackingKey.CODE, 0) == 0) {
                                            p6d.h(this.k, this.i);
                                            this.i.clear();
                                            f(str2);
                                        }
                                    } catch (Exception e4) {
                                        p6d.m(Log.getStackTraceString(e4));
                                    }
                                } else if (i4 != 4) {
                                    d(Message.obtain(this.b, 302, str2));
                                }
                            } catch (Exception e5) {
                                p6d.m(Log.getStackTraceString(e5));
                            }
                        } else {
                            if (this.i.size() > 0) {
                                p6d.h(this.k, this.i);
                                this.i.clear();
                            }
                            f(str2);
                        }
                        break;
                    case 303:
                        p6d.i("-->WHAT_REQUEST_ODID");
                        int i5 = message.arg1;
                        AppIdInfo appIdInfo = (AppIdInfo) message.obj;
                        this.b.removeMessages(303, appIdInfo);
                        if (OneID.c && p6d.p(this.k)) {
                            OdIdInfo odIdInfo = this.l;
                            if (odIdInfo != null) {
                                odIdInfo.appid = i5;
                                p6d.i("--> mOdidInfo set appID :" + this.l.toString());
                                uid uidVarA3 = new tjd(this.l).a();
                                p6d.i("code = " + uidVarA3.a + " data = " + ((String) uidVarA3.b));
                                int i6 = uidVarA3.a;
                                if (i6 == 0) {
                                    g((String) uidVarA3.b, i5, appIdInfo);
                                } else if (i6 == 3) {
                                    p6d.i("onOdidRequestGatewayError");
                                    Message messageObtain = Message.obtain(this.b, 303);
                                    messageObtain.obj = appIdInfo;
                                    messageObtain.arg1 = i5;
                                    this.b.sendMessageDelayed(messageObtain, 1000L);
                                } else if (i6 != 4) {
                                    c(i5, appIdInfo);
                                }
                            }
                            break;
                        }
                        p6d.i("OneID disable or network unavailable");
                        this.b.sendEmptyMessage(201);
                        return false;
                    case 304:
                        Integer num = (Integer) message.obj;
                        int iIntValue2 = num.intValue();
                        this.b.removeMessages(304, num);
                        if (OneID.c && p6d.p(this.k)) {
                            k();
                            AppIdInfo appIdInfo2 = (AppIdInfo) this.m.get(num);
                            if (appIdInfo2 == null) {
                                appIdInfo2 = new AppIdInfo();
                                this.m.put(num, appIdInfo2);
                                OdIdInfo odIdInfo2 = this.l;
                                if (odIdInfo2 != null) {
                                    odIdInfo2.appid = iIntValue2;
                                }
                            }
                            Message messageObtain2 = Message.obtain(this.b, 303);
                            messageObtain2.arg1 = iIntValue2;
                            messageObtain2.obj = appIdInfo2;
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            long jMax = GslbSdk.isInitSuccess(zld.d().c()) ? C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS : 6000L;
                            long j3 = appIdInfo2.lastRequestTime;
                            if (jCurrentTimeMillis2 >= j3) {
                                long j4 = jCurrentTimeMillis2 - j3;
                                long j5 = appIdInfo2.waitTime;
                                if (j4 < j5) {
                                    jMax = Math.max((j3 + j5) - jCurrentTimeMillis2, jMax);
                                }
                            }
                            if (!this.b.hasMessages(303, appIdInfo2)) {
                                this.b.sendMessageDelayed(messageObtain2, jMax);
                                p6d.i("Appid : " + iIntValue2 + " delay " + jMax + " ms refresh odid ");
                            }
                            break;
                        }
                        p6d.i("OneID disable or network unavailable");
                        this.b.sendEmptyMessage(201);
                        return false;
                }
            } else {
                p6d.i("-->WHAT_QUIT");
                if (this.j.tryLock()) {
                    try {
                        HandlerThread handlerThread = this.c;
                        if (handlerThread != null) {
                            handlerThread.quit();
                            this.c = null;
                        }
                    } finally {
                        this.j.unlock();
                    }
                }
            }
        } catch (Exception e6) {
            p6d.m(Log.getStackTraceString(e6));
        }
        return false;
    }

    public String i(int i) {
        AppIdInfo appIdInfo;
        String str;
        ConcurrentHashMap concurrentHashMap = this.m;
        return (concurrentHashMap == null || (appIdInfo = (AppIdInfo) concurrentHashMap.get(Integer.valueOf(i))) == null || (str = appIdInfo.odid) == null) ? "" : str;
    }

    public final void j() {
        if (this.j.tryLock()) {
            try {
                try {
                    Handler handler = this.b;
                    if (handler == null || this.c == null) {
                        HandlerThread handlerThread = new HandlerThread("OneID Worker", 10);
                        this.c = handlerThread;
                        handlerThread.start();
                        this.b = new Handler(this.c.getLooper(), this);
                    } else if (handler.hasMessages(201)) {
                        this.b.removeMessages(201);
                    }
                } catch (Exception e) {
                    p6d.m(Log.getStackTraceString(e));
                }
            } finally {
                this.j.unlock();
            }
        }
    }

    public final void k() {
        ConcurrentHashMap concurrentHashMap = this.m;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            String strH = r6d.b(this.k).h("appid_info_list");
            if (!TextUtils.isEmpty(strH)) {
                p6d.i("AppId Records : " + strH);
                try {
                    this.m = (ConcurrentHashMap) new Gson().fromJson(strH, new a(this).getType());
                } catch (Exception e) {
                    p6d.m(Log.getStackTraceString(e));
                }
            }
            if (this.m == null) {
                this.m = new ConcurrentHashMap();
            }
        }
    }

    public void l() {
        if (p6d.q(this.k)) {
            p6d.i("retry");
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z = OneID.c;
            if (z) {
                long j = this.g;
                if (jCurrentTimeMillis < j || jCurrentTimeMillis - j >= 86400000) {
                    if (this.j.tryLock()) {
                        try {
                            if (this.c == null) {
                                j();
                            }
                            this.j.unlock();
                        } catch (Throwable th) {
                            this.j.unlock();
                            throw th;
                        }
                    }
                    Handler handler = this.b;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                        this.b.sendEmptyMessage(200);
                        return;
                    }
                    return;
                }
            }
            p6d.i(z ? "Post time not yet reached" : "OneID disable");
        }
    }
}

package com.mgtv.data.aphone.a;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.gson.JsonObject;
import com.google.gson.internal.LinkedTreeMap;
import com.hunantv.imgo.util.PreferencesUtil;
import com.mgtv.data.aphone.a.c.b;
import com.mgtv.data.aphone.core.bean.EventOnOffBean;
import com.mgtv.data.aphone.core.bean.TraceTaskBean;
import com.mgtv.data.aphone.core.bean.TraceTaskDetailBean;
import com.mgtv.data.aphone.core.constants.EventContants;
import com.mgtv.data.aphone.core.e.d;
import com.mgtv.data.aphone.core.e.e;
import com.mgtv.data.aphone.core.j.c;
import com.mgtv.data.aphone.core.j.f;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import com.transsion.push.PushConstants;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class a {
    private static String b = "PlayerStatisticReporter";
    private static a c;
    private b a;
    private Context d;
    private EventOnOffBean h;
    private boolean e = true;
    private boolean f = false;
    private int g = 1;
    private com.mgtv.data.aphone.core.g.b i = new com.mgtv.data.aphone.core.g.b();

    public a() {
        c.a("big_data_sdk", "####################  PlayerStatisticReporter()");
    }

    private void f() {
        com.mgtv.data.aphone.core.e.b.a(this.d).a();
    }

    private void g() {
        if (this.d == null || !c()) {
            return;
        }
        c.b("big_data_sdk", "############### init 初始化 ");
        m();
        h();
        d();
        e();
        i();
        j();
        k();
        com.mgtv.data.aphone.core.f.a.c().a(new com.mgtv.data.aphone.core.d.a());
        d.a(this.d);
    }

    private void h() {
        Context context = this.d;
        if (context != null) {
            com.mgtv.data.aphone.b.a.a(context);
            com.mgtv.data.aphone.a.c.a aVar = new com.mgtv.data.aphone.a.c.a();
            this.a = aVar;
            aVar.a(this.d);
        }
    }

    private void i() {
        try {
            this.d.startService(new Intent(this.d, (Class<?>) com.mgtv.data.aphone.core.h.a.class));
        } catch (Exception unused) {
        }
    }

    private void j() {
        c.b("big_data_sdk", "############### initAppStart ");
        e.a();
        e.a((Application) this.d);
    }

    private void k() {
        l();
    }

    private void l() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("mgtv.player.action.PLAYER_REPORT_EVENT");
        LocalBroadcastManager.getInstance(this.d).registerReceiver(this.i, intentFilter);
    }

    private void m() {
        if (com.hunantv.imgo.util.b.f()) {
            n();
        } else {
            o();
        }
    }

    private void n() {
        String strC = PreferencesUtil.c("hd_local_interface_on_off_data", "");
        if (!TextUtils.isEmpty(strC)) {
            this.h = (EventOnOffBean) com.mgtv.json.a.a(strC, (Type) EventOnOffBean.class);
        }
        EventOnOffBean eventOnOffBean = this.h;
        if (eventOnOffBean == null || (eventOnOffBean != null && ((LinkedTreeMap) eventOnOffBean.data).size() == 0)) {
            this.h = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}", (Type) EventOnOffBean.class);
        }
        c.b("big_data_sdk", "#################### 海外版本数据 local on off :" + strC);
    }

    private void o() {
        String strC = PreferencesUtil.c("local_interface_on_off_data", "");
        if (!TextUtils.isEmpty(strC)) {
            this.h = (EventOnOffBean) com.mgtv.json.a.a(strC, (Type) EventOnOffBean.class);
        }
        EventOnOffBean eventOnOffBean = this.h;
        if (eventOnOffBean == null || (eventOnOffBean != null && ((LinkedTreeMap) eventOnOffBean.data).size() == 0)) {
            this.h = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}", (Type) EventOnOffBean.class);
        }
        c.b("big_data_sdk", "#################### 大陆版本数据 local on off :" + strC);
    }

    public a b(boolean z) {
        this.f = z;
        return this;
    }

    public boolean c() {
        return TextUtils.equals(f.a(this.d), this.d.getApplicationInfo().processName);
    }

    public void d() {
        String str;
        String str2;
        c.b("big_data_sdk", "########################  initOnOff");
        if (this.d == null) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        String str3 = "android_" + com.hunantv.imgo.util.b.e();
        HttpParams httpParams = new HttpParams();
        if (com.hunantv.imgo.util.b.f()) {
            str = "4";
            str2 = "E4PQERDBCED8COL1WE23";
        } else {
            str = "5";
            str2 = "19KIAYQPMYD0LDNN7H21";
        }
        jsonObject.addProperty(PushConstants.PROVIDER_FIELD_APP_ID, str);
        jsonObject.addProperty("appkey", str2);
        jsonObject.addProperty(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        jsonObject.addProperty("sign", "");
        jsonObject.addProperty("version", str3);
        HttpParams.Type type = HttpParams.Type.HEADER;
        httpParams.put("Content-Type", "application/json", type);
        httpParams.put("User-Agent", com.hunantv.imgo.util.b.G(), type);
        httpParams.setBodyJson(jsonObject.toString());
        c.b("big_data_sdk", "######################## 加:");
        new m(null).a(true).a(com.mgtv.data.aphone.core.constants.a.b, httpParams, new com.mgtv.task.http.c<EventOnOffBean>() {
            @Override
            public void b(EventOnOffBean eventOnOffBean) {
            }

            @Override
            public void a(EventOnOffBean eventOnOffBean) {
                Object obj;
                if (eventOnOffBean == null || (obj = eventOnOffBean.data) == null || ((LinkedTreeMap) obj).size() == 0) {
                    if (com.hunantv.imgo.util.b.f()) {
                        a.this.h = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}", (Type) EventOnOffBean.class);
                        return;
                    } else {
                        a.this.h = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}", (Type) EventOnOffBean.class);
                        return;
                    }
                }
                c.b("big_data_sdk", "####################  开关接口 请求成功 :" + eventOnOffBean.toString());
                a.this.h = eventOnOffBean;
                if (com.hunantv.imgo.util.b.f()) {
                    PreferencesUtil.a("hd_local_interface_on_off_data", eventOnOffBean.toString());
                } else {
                    PreferencesUtil.a("local_interface_on_off_data", eventOnOffBean.toString());
                }
            }
        });
    }

    public void e() {
        com.mgtv.data.aphone.core.i.b.a = false;
        if (this.d == null) {
            return;
        }
        HttpParams httpParams = new HttpParams();
        httpParams.put(DownloadFacadeEnum.USER_DID, URLEncoder.encode(com.hunantv.imgo.util.b.t()));
        httpParams.put("version", "android_" + com.hunantv.imgo.util.b.e());
        httpParams.put("termid", "9");
        new m(null).a(true).a(com.mgtv.data.aphone.core.constants.a.a, httpParams, new com.mgtv.task.http.c<TraceTaskBean>() {
            @Override
            public void b(TraceTaskBean traceTaskBean) {
            }

            @Override
            public void a(TraceTaskBean traceTaskBean) {
                List<TraceTaskDetailBean> list;
                if (traceTaskBean != null && traceTaskBean.localLog == 0) {
                    c.b("big_data_sdk", "####################  initTrace()  bean.localLog :" + traceTaskBean.localLog);
                    com.mgtv.data.aphone.core.i.b.a = false;
                } else if (traceTaskBean == null || traceTaskBean.localLog != 1) {
                    int i = traceTaskBean.localLog;
                } else {
                    com.mgtv.data.aphone.core.i.b.a = true;
                }
                if (com.mgtv.data.aphone.core.i.b.a) {
                    if (traceTaskBean != null && (list = traceTaskBean.upTask) != null && list.size() > 0) {
                        c.b("big_data_sdk", "####################  initTrace() :" + traceTaskBean.toString());
                        if (traceTaskBean.localLog != 0) {
                            com.mgtv.data.aphone.core.i.b.a().a(traceTaskBean);
                        }
                    }
                    com.mgtv.data.aphone.core.i.b.a().b();
                }
            }
        });
    }

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                try {
                    if (c == null) {
                        c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public com.mgtv.data.aphone.a.a.a b() {
        com.mgtv.data.aphone.a.a.a aVar = new com.mgtv.data.aphone.a.a.a();
        aVar.b = this.f;
        aVar.c = this.g;
        return aVar;
    }

    public void a(Context context) {
        this.d = context;
        g();
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (this.d != null) {
            c.b("big_data_sdk", "###############   AppSwitchManager.mIsCreate: " + e.b);
            com.mgtv.data.aphone.b.a.a(this.d).a(str, str2, str3, str4, str5, str6, str7);
            if (e.b) {
                return;
            }
            com.mgtv.data.aphone.core.e.c.a(this.d).a(true);
            int iA = PreferencesUtil.a("big_data_sdk_pref_key_intraday_report_counter", 0);
            if (!com.hunantv.imgo.util.f.a(new Date(System.currentTimeMillis()), new Date(PreferencesUtil.b("big_data_sdk_pref_key_report_time", 0L)))) {
                PreferencesUtil.putInt("big_data_sdk_pref_key_intraday_report_counter", 0);
                f();
            } else if (iA == 0) {
                f();
            }
        }
    }

    public a a(boolean z) {
        this.e = z;
        return this;
    }

    public synchronized void a(EventContants.EventType eventType, Map<String, String> map, com.mgtv.data.aphone.a.b.b bVar) {
        try {
            b bVar2 = this.a;
            if (bVar2 != null) {
                if (bVar != null) {
                    bVar2.a(eventType, this.h, map, b(), bVar);
                } else {
                    bVar2.a(eventType, this.h, map, b(), new com.mgtv.data.aphone.a.b.a());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(String str, Map<String, String> map, com.mgtv.data.aphone.a.b.b bVar) {
        try {
            b bVar2 = this.a;
            if (bVar2 != null) {
                if (bVar != null) {
                    bVar2.a(str, this.h, map, b(), bVar);
                } else {
                    bVar2.a(str, this.h, map, b(), new com.mgtv.data.aphone.a.b.a());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(String str, com.mgtv.data.aphone.a.b.b bVar) {
        try {
            b bVar2 = this.a;
            if (bVar2 != null) {
                if (bVar != null) {
                    bVar2.a(this.h, str, b(), bVar);
                } else {
                    bVar2.a(this.h, str, b(), new com.mgtv.data.aphone.a.b.a());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}

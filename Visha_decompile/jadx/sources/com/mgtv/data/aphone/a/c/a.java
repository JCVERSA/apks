package com.mgtv.data.aphone.a.c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.internal.LinkedTreeMap;
import com.mgtv.data.aphone.core.bean.EventOnOffBean;
import com.mgtv.data.aphone.core.c.c;
import com.mgtv.data.aphone.core.constants.EventContants;
import com.mgtv.data.aphone.core.exception.CheckParamsException;
import com.mgtv.data.aphone.core.j.g;
import com.mgtv.data.aphone.core.j.h;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.data.aphone.core.webview.BigDataSDKJSParameter;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a implements b {
    private static String b = "a";
    HashMap<String, String> a = new HashMap<>();
    private Context c;
    private String d;
    private String e;
    private String f;

    private void b(BigDataSDKJSParameter bigDataSDKJSParameter) {
        if (TextUtils.isEmpty(bigDataSDKJSParameter.logtype) || TextUtils.isEmpty(bigDataSDKJSParameter.cntp)) {
            return;
        }
        new com.mgtv.data.aphone.core.c.a().a(this.c, bigDataSDKJSParameter.logtype, bigDataSDKJSParameter);
    }

    private void c(BigDataSDKJSParameter bigDataSDKJSParameter) {
        if (TextUtils.isEmpty(bigDataSDKJSParameter.logtype) || TextUtils.isEmpty(bigDataSDKJSParameter.cntp)) {
            return;
        }
        new c().a(this.c, bigDataSDKJSParameter.logtype, bigDataSDKJSParameter);
    }

    @Override
    public void a(Context context) {
        this.c = context;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[Catch: all -> 0x000e, CheckParamsException -> 0x0011, TryCatch #0 {CheckParamsException -> 0x0011, blocks: (B:4:0x0003, B:15:0x002f, B:19:0x003f, B:21:0x0079, B:23:0x007d, B:26:0x0091, B:11:0x0014, B:13:0x001a, B:14:0x0025), top: B:34:0x0003, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0025 A[Catch: all -> 0x000e, CheckParamsException -> 0x0011, TryCatch #0 {CheckParamsException -> 0x0011, blocks: (B:4:0x0003, B:15:0x002f, B:19:0x003f, B:21:0x0079, B:23:0x007d, B:26:0x0091, B:11:0x0014, B:13:0x001a, B:14:0x0025), top: B:34:0x0003, outer: #1 }] */
    @Override
    public synchronized void a(EventContants.EventType eventType, EventOnOffBean eventOnOffBean, Map<String, String> map, com.mgtv.data.aphone.a.a.a aVar, final com.mgtv.data.aphone.a.b.b bVar) {
        try {
            if (eventOnOffBean != null) {
                try {
                    if (((LinkedTreeMap) eventOnOffBean.data).size() == 0) {
                        if (com.hunantv.imgo.util.b.f()) {
                            eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}", (Type) EventOnOffBean.class);
                        } else {
                            eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}", (Type) EventOnOffBean.class);
                        }
                    }
                } catch (CheckParamsException e) {
                    Log.e(b, e.getMessage());
                    e.printStackTrace();
                    return;
                }
            } else if (com.hunantv.imgo.util.b.f()) {
                eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}", (Type) EventOnOffBean.class);
            } else {
                eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}", (Type) EventOnOffBean.class);
            }
            if (a(eventType.name().toLowerCase(), eventOnOffBean)) {
                a();
                a(eventType, map, eventOnOffBean);
                com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "##############  onEvent()   act =  " + eventType.name() + "  params:  " + map + "   url: " + this.d);
                if (!g.a(this.c) && aVar.b) {
                    h.a(eventType.getEventId(), null, this.a, this.d, this.e, com.mgtv.data.aphone.core.db.a.a, this.c);
                    return;
                }
                com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "##############  onEvent()    httpParams: " + this.a);
                new com.mgtv.data.aphone.b.a.a(this.c, eventType.getEventId(), this.f, this.e, this.a, new com.mgtv.data.aphone.b.c.a<com.mgtv.data.aphone.b.b.a>() {
                    @Override
                    public void a(com.mgtv.data.aphone.b.b.a aVar2) {
                        if (aVar2 != null) {
                            int i = aVar2.b;
                            if (i == 0) {
                                com.mgtv.data.aphone.a.b.b bVar2 = bVar;
                                if (bVar2 != null) {
                                    bVar2.a(aVar2);
                                    return;
                                }
                                return;
                            }
                            com.mgtv.data.aphone.a.b.b bVar3 = bVar;
                            if (bVar3 != null) {
                                bVar3.a(aVar2.a, i, aVar2.c);
                            }
                        }
                    }
                }).a(this.d, this.a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[Catch: all -> 0x000e, Exception -> 0x0011, TryCatch #1 {Exception -> 0x0011, blocks: (B:4:0x0003, B:15:0x002f, B:19:0x0037, B:21:0x0045, B:23:0x0049, B:26:0x005b, B:11:0x0014, B:13:0x001a, B:14:0x0025), top: B:35:0x0003, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0025 A[Catch: all -> 0x000e, Exception -> 0x0011, TryCatch #1 {Exception -> 0x0011, blocks: (B:4:0x0003, B:15:0x002f, B:19:0x0037, B:21:0x0045, B:23:0x0049, B:26:0x005b, B:11:0x0014, B:13:0x001a, B:14:0x0025), top: B:35:0x0003, outer: #0 }] */
    @Override
    public synchronized void a(String str, EventOnOffBean eventOnOffBean, Map<String, String> map, com.mgtv.data.aphone.a.a.a aVar, final com.mgtv.data.aphone.a.b.b bVar) {
        try {
            if (eventOnOffBean != null) {
                try {
                    if (((LinkedTreeMap) eventOnOffBean.data).size() == 0) {
                        if (com.hunantv.imgo.util.b.f()) {
                            eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}", (Type) EventOnOffBean.class);
                        } else {
                            eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}", (Type) EventOnOffBean.class);
                        }
                    }
                } catch (Exception e) {
                    Log.e(b, e.getMessage());
                    e.printStackTrace();
                    return;
                }
            } else if (com.hunantv.imgo.util.b.f()) {
                eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_appls\":{\"httpMethod\":0,\"params\":[\"act\",\"list\"],\"url\":\"https://moblie-ex.log.mgtv.com/appls.php\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0}},\"data\":{\"event_phonewifi\":\"0\",\"event_buffer\":\"0\",\"event_pv\":\"0\",\"event_appls\":\"0\",\"event_hb\":\"0\",\"event_st\":\"0\",\"event_vv\":\"0\"},\"flag\":{},\"version\":\"android_6.1.1.01\"}", (Type) EventOnOffBean.class);
            } else {
                eventOnOffBean = (EventOnOffBean) com.mgtv.json.a.a("{\"appId\":\"5\",\"config\":{\"event_perr\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"common_param\":{\"httpMethod\":0,\"params\":[\"time\",\"guid\",\"did\",\"uuid\",\"sid\",\"net\",\"isdebug\",\"mf\",\"mod\",\"sver\",\"aver\",\"gps\",\"ch\",\"imei\",\"mac\",\"bdsv\",\"uvip\",\"rdc\",\"rch\",\"abroad\",\"p2p\",\"runsid\",\"src\"],\"url\":\"\",\"isSave\":0},\"event_hls_dlrs\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlrs.php\",\"isSave\":0},\"event_hls_dlproc\":{\"httpMethod\":0,\"params\":[\"act\"],\"url\":\"https://moblie-ex.log.mgtv.com/dlproc.php\",\"isSave\":0},\"event_appls\":{\"httpMethod\":1,\"params\":[\"act\",\"list\"],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_ppv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_vv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/aplay.php\",\"isSave\":0},\"event_pv\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/pv.php\",\"isSave\":0},\"event_pend\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0},\"event_hb\":{\"httpMethod\":0,\"params\":[],\"url\":\"https://moblie-ex.log.mgtv.com/hb.php\",\"isSave\":0},\"event_pvv\":{\"httpMethod\":1,\"params\":[],\"url\":\"https://aphone.v1.mgtv.com/dispatcher.do\",\"isSave\":0}},\"data\":{\"event_perr\":\"1\",\"event_phonewifi\":\"1\",\"event_buffer\":\"0\",\"event_hls_dlrs\":\"0\",\"event_hls_dlproc\":\"0\",\"event_appls\":\"0\",\"event_st\":\"0\",\"event_ppv\":\"1\",\"event_vv\":\"0\",\"event_pv\":\"0\",\"event_hb\":\"0\",\"event_pend\":\"1\",\"event_pvv\":\"1\"},\"flag\":{},\"version\":\"android_6.1.1.0.7\"}", (Type) EventOnOffBean.class);
            }
            if (a(str, eventOnOffBean)) {
                a();
                a(str, map, eventOnOffBean, aVar);
                if (!g.a(this.c) && aVar.b) {
                    h.a(str, this.f, this.a, this.d, this.e, com.mgtv.data.aphone.core.db.a.a, this.c);
                    return;
                }
                com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "##############  onEvent()    httpParams: " + this.a);
                new com.mgtv.data.aphone.b.a.a(this.c, "", this.f, this.e, this.a, new com.mgtv.data.aphone.b.c.a<com.mgtv.data.aphone.b.b.a>() {
                    @Override
                    public void a(com.mgtv.data.aphone.b.b.a aVar2) {
                        if (aVar2 != null) {
                            int i = aVar2.b;
                            if (i == 0) {
                                com.mgtv.data.aphone.a.b.b bVar2 = bVar;
                                if (bVar2 != null) {
                                    bVar2.a(aVar2);
                                    return;
                                }
                                return;
                            }
                            com.mgtv.data.aphone.a.b.b bVar3 = bVar;
                            if (bVar3 != null) {
                                bVar3.a(aVar2.a, i, aVar2.c);
                            }
                        }
                    }
                }).a(this.d, this.a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized void a(EventOnOffBean eventOnOffBean, String str, com.mgtv.data.aphone.a.a.a aVar, com.mgtv.data.aphone.a.b.b bVar) {
        try {
            try {
                com.mgtv.data.aphone.core.j.c.a("big_data_sdk", "H5  json: " + str);
                BigDataSDKJSParameter bigDataSDKJSParameter = (BigDataSDKJSParameter) com.mgtv.json.a.a(str, BigDataSDKJSParameter.class);
                if (bigDataSDKJSParameter == null) {
                    return;
                }
                if (TextUtils.isEmpty(bigDataSDKJSParameter.logtype)) {
                    return;
                }
                String str2 = "event_webview_" + bigDataSDKJSParameter.logtype;
                if ("event_webview_pv".equals(str2)) {
                    a(bigDataSDKJSParameter);
                } else if ("event_webview_click".equals(str2)) {
                    b(bigDataSDKJSParameter);
                } else if ("event_webview_cv".equals(str2)) {
                    c(bigDataSDKJSParameter);
                }
            } catch (Exception e) {
                Log.e(b, e.getMessage());
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(BigDataSDKJSParameter bigDataSDKJSParameter) {
        if (TextUtils.isEmpty(bigDataSDKJSParameter.logtype) || TextUtils.isEmpty(bigDataSDKJSParameter.cntp)) {
            return;
        }
        new com.mgtv.data.aphone.core.c.b().a(this.c, bigDataSDKJSParameter.logtype, bigDataSDKJSParameter.cntp, bigDataSDKJSParameter);
    }

    private synchronized void a(EventContants.EventType eventType, Map<String, String> map, EventOnOffBean eventOnOffBean) throws CheckParamsException {
        a(map, eventType, eventOnOffBean);
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "##############  getAndroidUrlAndParams()   act =  " + eventType.name() + "  params:  " + map + "   url: " + this.d);
    }

    public synchronized void a(Map<String, String> map, EventContants.EventType eventType, EventOnOffBean eventOnOffBean) {
        try {
            try {
                map.putAll(com.mgtv.data.aphone.b.a.a());
                map.putAll(com.mgtv.data.aphone.b.a.a(map));
                if (eventOnOffBean != null && eventOnOffBean.config != null) {
                    JSONObject jSONObject = new JSONObject(eventOnOffBean.toString()).getJSONObject("config");
                    JSONObject jSONObject2 = jSONObject.getJSONObject(eventType.name().toLowerCase());
                    JSONArray jSONArray = jSONObject2.getJSONArray("params");
                    JSONArray jSONArray2 = jSONObject.getJSONObject("common_param").getJSONArray("params");
                    String string = jSONObject2.getString("url");
                    int i = jSONObject2.getInt("httpMethod");
                    jSONObject2.getInt("isSave");
                    HashSet hashSet = new HashSet();
                    HashSet hashSet2 = new HashSet();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        String string2 = jSONArray.get(i2).toString();
                        if (string2.indexOf("del_") > -1) {
                            hashSet2.add(string2.substring(4));
                        } else {
                            hashSet.add(string2);
                        }
                    }
                    for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                        hashSet.add((String) jSONArray2.get(i3));
                    }
                    if (hashSet2.size() > 0) {
                        Iterator it = hashSet2.iterator();
                        while (it.hasNext()) {
                            hashSet.remove(it.next().toString());
                        }
                    }
                    HashMap map2 = new HashMap();
                    Iterator it2 = hashSet.iterator();
                    while (it2.hasNext()) {
                        String strValueOf = String.valueOf(it2.next());
                        map2.put(strValueOf, i.b(String.valueOf(map.get(strValueOf))));
                    }
                    if (i == 0) {
                        this.e = ShareTarget.METHOD_GET;
                    } else {
                        this.e = "POST";
                    }
                    this.d = string;
                    this.a.putAll(map2);
                    this.f = String.valueOf(map.get("bid")).toString().equals("null") ? "" : String.valueOf(map.get("bid")).toString();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(String str, Map<String, String> map, EventOnOffBean eventOnOffBean, com.mgtv.data.aphone.a.a.a aVar) throws CheckParamsException {
        a(map, str, eventOnOffBean, aVar);
    }

    public synchronized void a(Map<String, String> map, String str, EventOnOffBean eventOnOffBean, com.mgtv.data.aphone.a.a.a aVar) throws CheckParamsException {
        try {
            if (eventOnOffBean != null) {
                try {
                    if (eventOnOffBean.config != null) {
                        if (aVar != null && aVar.a) {
                            map.putAll(com.mgtv.data.aphone.b.a.a());
                        }
                        if (!TextUtils.isEmpty(eventOnOffBean.toString())) {
                            JSONObject jSONObject = (JSONObject) new JSONObject(eventOnOffBean.toString()).get("config");
                            if (!TextUtils.isEmpty(jSONObject.optString(str))) {
                                JSONObject jSONObject2 = new JSONObject(jSONObject.optString(str));
                                jSONObject2.getJSONArray("params");
                                String string = jSONObject2.getString("url");
                                int i = jSONObject2.getInt("httpMethod");
                                jSONObject2.getInt("isSave");
                                if (i == 0) {
                                    this.e = ShareTarget.METHOD_GET;
                                } else {
                                    this.e = "POST";
                                }
                                this.d = string;
                            }
                        }
                        this.a.putAll(map);
                        this.f = String.valueOf(map.get("bid")).toString().equals("null") ? "" : String.valueOf(map.get("bid")).toString();
                    }
                } catch (JSONException e) {
                    Log.e(b, e.getMessage());
                    e.printStackTrace();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean a(String str, EventOnOffBean eventOnOffBean) {
        try {
            JSONObject jSONObject = new JSONObject(eventOnOffBean.toString()).getJSONObject("data");
            String strOptString = jSONObject.optString(str);
            String strOptString2 = jSONObject.optString(TtmlNode.COMBINE_ALL);
            if (TextUtils.isEmpty(strOptString2) || !EventContants.OnOffType.OFF.getValue().equals(strOptString2)) {
                return TextUtils.isEmpty(strOptString) || !EventContants.OnOffType.OFF.getValue().equals(strOptString);
            }
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return true;
        }
    }

    private void a() {
        this.d = "";
        this.f = "";
        this.e = "";
        HashMap<String, String> map = this.a;
        if (map != null) {
            map.clear();
        }
    }
}

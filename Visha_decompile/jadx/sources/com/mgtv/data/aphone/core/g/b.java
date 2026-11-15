package com.mgtv.data.aphone.core.g;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.mgtv.data.aphone.core.c.d;
import com.mgtv.data.aphone.core.c.e;
import com.mgtv.data.aphone.core.c.g;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.e.f;
import com.mgtv.data.aphone.core.j.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class b extends BroadcastReceiver {
    private static final String a = "b";
    private int b;
    private int c;
    private int d;

    private void b(HashMap map, Context context) {
        String str;
        String str2;
        String str3 = "";
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    str2 = "";
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (KeysContants.PlayerCommonParams.VIDEO_TYPE.name().toLowerCase().equals(entry.getKey())) {
                    str2 = (String) entry.getValue();
                    break;
                }
            }
            for (Map.Entry entry2 : map.entrySet()) {
                if (KeysContants.PlayerCommonParams.VIDEO_SESSION.name().toLowerCase().equals(entry2.getKey())) {
                    str3 = (String) entry2.getValue();
                    break;
                }
            }
            c.b("big_data_sdk", "#############################>>>>>>>>>>>>> vv ##################### vtp: " + str2 + "  video_session:" + str3);
            String str4 = str2;
            str = str3;
            str3 = str4;
        } else {
            str = "";
        }
        if (!KeysContants.PlayerVideoType.ON_DEMAND.getValue().equals(str3) || str.equals(f.a().a)) {
            return;
        }
        new com.mgtv.data.aphone.core.c.f().e(context, map);
        f.a().a = str;
    }

    private void c(HashMap map, Context context) {
        if (map != null) {
            c.b("big_data_sdk", "DRM #####################  act = drm ##################### params: " + map);
            new e().a(context, map);
        }
    }

    private void d(HashMap map, Context context) {
        String str;
        String str2;
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = "";
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (KeysContants.PlayerCommonParams.VIDEO_TYPE.name().toLowerCase().equals(entry.getKey())) {
                    str = (String) entry.getValue();
                    break;
                }
            }
            Iterator it2 = map.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    str2 = "";
                    break;
                }
                Map.Entry entry2 = (Map.Entry) it2.next();
                if (KeysContants.PlayerCommonParams.VIDEO_SESSION.name().toLowerCase().equals(entry2.getKey())) {
                    str2 = (String) entry2.getValue();
                    break;
                }
            }
        } else {
            str = "";
            str2 = str;
        }
        if (KeysContants.PlayerVideoType.ON_DEMAND.getValue().equals(str) && str2.equals(f.a().a)) {
            this.b++;
        }
        c.b("big_data_sdk", "#############################>>>>>>>>>>>>> hb ##################### vtp: " + str + "  video_session:" + str2 + "   hb_number: " + this.b);
        int i = this.b;
        if (i == 15) {
            new com.mgtv.data.aphone.core.c.f().a(context, map, "3", this.d + "");
            this.d = this.d + 1;
            return;
        }
        if (i == 45) {
            new com.mgtv.data.aphone.core.c.f().a(context, map, "4", this.d + "");
            this.d = this.d + 1;
            return;
        }
        if (i == 60) {
            new com.mgtv.data.aphone.core.c.f().a(context, map, "5", this.d + "");
            this.d = this.d + 1;
            return;
        }
        if ((i - 60) % 120 == 0) {
            new com.mgtv.data.aphone.core.c.f().a(context, map, "6", this.d + "");
            this.d = this.d + 1;
        }
    }

    public void e(HashMap map, Context context) {
        String str;
        String str2;
        String str3;
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = "";
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (KeysContants.PlayerCommonParams.VIDEO_TYPE.name().toLowerCase().equals(entry.getKey())) {
                    str = (String) entry.getValue();
                    break;
                }
            }
            Iterator it2 = map.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    str2 = "";
                    break;
                }
                Map.Entry entry2 = (Map.Entry) it2.next();
                if (KeysContants.PlayerCommonParams.VIDEO_SESSION.name().toLowerCase().equals(entry2.getKey())) {
                    str2 = (String) entry2.getValue();
                    break;
                }
            }
            Iterator it3 = map.entrySet().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    str3 = "";
                    break;
                }
                Map.Entry entry3 = (Map.Entry) it3.next();
                if (KeysContants.PlayerCommonParams.RESOLUTION_CHANGE.name().toLowerCase().equals(entry3.getKey())) {
                    str3 = (String) entry3.getValue();
                    break;
                }
            }
            c.b("big_data_sdk", "#############################>>>>>>>>>>>>> endhb ##################### vtp: " + str + "  video_session:" + str2);
        } else {
            str = "";
            str2 = str;
            str3 = str2;
        }
        if (KeysContants.PlayerVideoType.ON_DEMAND.getValue().equals(str) && str2.equals(f.a().a) && "0".equals(str3)) {
            new com.mgtv.data.aphone.core.c.f().a(context, map, "2", this.d + "");
            this.d = this.d + 1;
            f.a().a = str2;
            this.b = 0;
            this.c = 0;
            this.d = 0;
        }
    }

    private void f(HashMap map, Context context) {
        if (map != null) {
            c.b("big_data_sdk", "SO Crash #####################  act = crash ##################### params: " + map);
            new g().a(context, map);
        }
    }

    private void g(HashMap map, Context context) {
        if (map != null) {
            c.b("big_data_sdk", "Click #####################  act = click ##################### params: " + map);
            new d().a(context, map);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals("mgtv.player.action.PLAYER_REPORT_EVENT")) {
            a((HashMap) intent.getSerializableExtra("EXTRA_REPORT_PARAMS"), context);
            return;
        }
        if (action.equals("com.mgtv.bigdata.action.DRM_EVENT")) {
            c((HashMap) intent.getSerializableExtra("EVENT_DRM_PARAMS"), context);
        } else if (action.equals("com.mgtv.bigdata.action.SO_CRASH_EVENT")) {
            f((HashMap) intent.getSerializableExtra("EVENT_SO_CRASH_PARAMS"), context);
        } else if (action.equals("com.mgtv.bigdata.action.CLICK_EVENT")) {
            g((HashMap) intent.getSerializableExtra("EVENT_CLICK_PARAMS"), context);
        }
    }

    @TargetApi(9)
    private void a(final HashMap map, final Context context) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (KeysContants.PlayerCommonParams.ACT.getValue().equals(entry.getKey())) {
                    if (!((String) entry.getValue()).isEmpty()) {
                        c.b("big_data_sdk", "Player ##################### act = " + ((String) entry.getValue()) + " ##################### params: " + map);
                    }
                    if (KeysContants.PlayerAct.PV.getValue().equals(entry.getValue())) {
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                new com.mgtv.data.aphone.core.c.f().a(context, map);
                            }
                        }, 100L);
                    } else if (KeysContants.PlayerAct.VV.getValue().equals(entry.getValue())) {
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                new com.mgtv.data.aphone.core.c.f().b(context, map);
                            }
                        }, 200L);
                        b(map, context);
                    } else if (KeysContants.PlayerAct.ERR.getValue().equals(entry.getValue())) {
                        new com.mgtv.data.aphone.core.c.f().c(context, map);
                    } else if (KeysContants.PlayerAct.END.getValue().equals(entry.getValue())) {
                        new com.mgtv.data.aphone.core.c.f().d(context, map);
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                b.this.e(map, context);
                            }
                        }, 200L);
                    } else if (KeysContants.PlayerAct.BUFFER.getValue().equals(entry.getValue())) {
                        a(map, context, this.c + "");
                    } else if (!KeysContants.PlayerAct.SEEK.getValue().equals(entry.getValue()) && KeysContants.PlayerAct.HEARTBEAT.getValue().equals(entry.getValue())) {
                        d(map, context);
                    }
                }
            }
        }
    }

    private void a(HashMap map, Context context, String str) {
        String str2;
        String str3;
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (true) {
                str2 = "";
                if (!it.hasNext()) {
                    str3 = "";
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (KeysContants.PlayerCommonParams.VIDEO_TYPE.name().toLowerCase().equals(entry.getKey())) {
                    str3 = (String) entry.getValue();
                    break;
                }
            }
            for (Map.Entry entry2 : map.entrySet()) {
                if (KeysContants.PlayerBufferParams.BUFFER_TYPE.name().toLowerCase().equals(entry2.getKey())) {
                    str2 = (String) entry2.getValue();
                }
                if ("1".equals(str2)) {
                    break;
                }
            }
            c.b("big_data_sdk", "#############################>>>>>>>>>>>>> buffer ##################### buffer_type: " + str2 + "  vtp: " + str3);
            if (KeysContants.PlayerVideoType.ON_DEMAND.getValue().equals(str3) && "1".equals(str2)) {
                new com.mgtv.data.aphone.core.c.f().a(context, map, str);
                this.c++;
            }
        }
    }
}

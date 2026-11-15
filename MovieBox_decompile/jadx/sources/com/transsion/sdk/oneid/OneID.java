package com.transsion.sdk.oneid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.sdk.oneid.data.AppIdInfo;
import java.util.concurrent.ConcurrentHashMap;

public class OneID {

    static transient boolean f49900c = true;

    static int f49901d;

    private static volatile OneID f49902e;

    private final e f49903a;

    private final Context f49904b;

    class a extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        a(OneID oneID) {
        }
    }

    private OneID(Context context) {
        this.f49904b = context;
        this.f49903a = e.a(context.getApplicationContext());
        ll.a.b(context.getApplicationContext());
    }

    public static void c(Context context, int i10) {
        e eVar;
        if (context != null && f49902e == null) {
            synchronized (OneID.class) {
                try {
                    if (f49902e == null) {
                        f49902e = new OneID(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        OneID oneID = f49902e;
        if (oneID.f49904b == null || (eVar = oneID.f49903a) == null) {
            return;
        }
        eVar.b(i10);
    }

    public static void d(Context context, int i10, int i11) {
        if (f49901d == 0) {
            f49901d = i11;
        }
        c(context, i10);
    }

    public static OneID e() {
        if (f49902e != null) {
            return f49902e;
        }
        throw new IllegalStateException("You should call OneID.init first!");
    }

    public static boolean f() {
        return f49900c;
    }

    public String a(int i10) {
        AppIdInfo appIdInfo;
        if (this.f49904b == null) {
            throw new OneIDException("OneID not init yet");
        }
        e eVar = this.f49903a;
        String str = "";
        String strI = eVar != null ? eVar.i(i10) : "";
        if (!TextUtils.isEmpty(strI)) {
            return strI;
        }
        try {
            String strH = bz.b.b(this.f49904b).h("appid_info_list");
            if (!TextUtils.isEmpty(strH) && (appIdInfo = (AppIdInfo) ((ConcurrentHashMap) new Gson().fromJson(strH, new a(this).getType())).get(Integer.valueOf(i10))) != null) {
                strI = appIdInfo.odid;
                str = appIdInfo.msg;
            }
        } catch (Exception e10) {
            b.m(Log.getStackTraceString(e10));
        }
        if (!TextUtils.isEmpty(strI)) {
            return strI;
        }
        if (TextUtils.isEmpty(str)) {
            str = "Please try later";
        }
        throw new OneIDException(str);
    }

    public String b() {
        e eVar = this.f49903a;
        return eVar != null ? eVar.h() : "";
    }
}

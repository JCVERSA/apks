package com.transsion.sdk.oneid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.sdk.oneid.data.AppIdInfo;
import defpackage.fd4;
import defpackage.p6d;
import defpackage.r6d;
import java.util.concurrent.ConcurrentHashMap;

public class OneID {
    public static transient boolean c = true;
    public static int d;
    public static volatile OneID e;
    public final e a;
    public final Context b;

    public class a extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        public a(OneID oneID) {
        }
    }

    public OneID(Context context) {
        this.b = context;
        this.a = e.a(context.getApplicationContext());
        fd4.b(context.getApplicationContext());
    }

    public static void c(Context context, int i) {
        e eVar;
        if (context != null && e == null) {
            synchronized (OneID.class) {
                try {
                    if (e == null) {
                        e = new OneID(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        OneID oneID = e;
        if (oneID.b == null || (eVar = oneID.a) == null) {
            return;
        }
        eVar.b(i);
    }

    public static void d(Context context, int i, int i2) {
        if (d == 0) {
            d = i2;
        }
        c(context, i);
    }

    public static OneID e() {
        if (e != null) {
            return e;
        }
        throw new IllegalStateException("You should call OneID.init first!");
    }

    public static boolean f() {
        return c;
    }

    public String a(int i) {
        AppIdInfo appIdInfo;
        if (this.b == null) {
            throw new OneIDException("OneID not init yet");
        }
        e eVar = this.a;
        String str = "";
        String strI = eVar != null ? eVar.i(i) : "";
        if (!TextUtils.isEmpty(strI)) {
            return strI;
        }
        try {
            String strH = r6d.b(this.b).h("appid_info_list");
            if (!TextUtils.isEmpty(strH) && (appIdInfo = (AppIdInfo) ((ConcurrentHashMap) new Gson().fromJson(strH, new a(this).getType())).get(Integer.valueOf(i))) != null) {
                strI = appIdInfo.odid;
                str = appIdInfo.msg;
            }
        } catch (Exception e2) {
            p6d.m(Log.getStackTraceString(e2));
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
        e eVar = this.a;
        return eVar != null ? eVar.h() : "";
    }
}

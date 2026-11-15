package com.transsion.cloudcore.cloudapi.impl;

import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.cloudapi.impl.a;
import com.transsion.gslb.GslbSdk;
import defpackage.jpa;
import defpackage.oz0;
import defpackage.r0a;
import defpackage.rz0;
import defpackage.s74;
import defpackage.vz0;
import defpackage.y45;
import defpackage.yfb;
import defpackage.yj4;
import defpackage.zfb;

public final class a {
    public static rz0 b;
    public static vz0 c;
    public static final a a = new a();
    public static String d = "";

    public static final class C0213a implements jpa {
        public final vz0 a;

        public C0213a(vz0 vz0Var) {
            this.a = vz0Var;
        }

        @Override
        public String a() {
            return this.a.h().a();
        }
    }

    public static final class b implements yfb {
        public final vz0 a;

        public b(vz0 vz0Var) {
            this.a = vz0Var;
        }

        @Override
        public String a() {
            return this.a.i().a();
        }
    }

    public static final class c implements yj4 {
        @Override
        public String a(String str) {
            y45.j(str, SerializableCookie.HOST);
            try {
                String domain = GslbSdk.getDomain(str, true);
                Log.e("CloudDriveClientHolder", "GslbInterceptorCallback host " + str + "newHost " + domain);
                if (r0a.g(domain)) {
                    a.a.k(str);
                    return str;
                }
                a.a.k(domain);
                return domain;
            } catch (Exception e) {
                Log.e("CloudDriveClientHolder", "GslbInterceptorCallback error" + e.getMessage());
                a.a.k(str);
                return str;
            }
        }
    }

    public static final void f(Context context) {
        CloudManagerImpl.g.a(context).n(new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return a.g(((Boolean) obj).booleanValue(), (Integer) obj2);
            }
        });
    }

    public static final zfb g(final boolean z, final Integer num) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                a.h(z, num);
            }
        });
        return zfb.a;
    }

    public static final void h(boolean z, Integer num) {
        if (z) {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
            if (y45.e(cloudTaskFinishCacheManager.n().getValue(), Boolean.TRUE)) {
                cloudTaskFinishCacheManager.n().setValue(Boolean.FALSE);
                return;
            }
            return;
        }
        if (num == null || num.intValue() != 20087) {
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager2 = CloudTaskFinishCacheManager.a;
            if (y45.e(cloudTaskFinishCacheManager2.n().getValue(), Boolean.TRUE)) {
                cloudTaskFinishCacheManager2.n().setValue(Boolean.FALSE);
                return;
            }
            return;
        }
        CloudTaskFinishCacheManager cloudTaskFinishCacheManager3 = CloudTaskFinishCacheManager.a;
        T value = cloudTaskFinishCacheManager3.n().getValue();
        Boolean bool = Boolean.TRUE;
        if (y45.e(value, bool)) {
            return;
        }
        cloudTaskFinishCacheManager3.n().setValue(bool);
    }

    public final rz0 d() {
        rz0 rz0Var = b;
        if (rz0Var == null) {
            throw new IllegalStateException("CloudDriveClient not initialized, please call init() first");
        }
        y45.g(rz0Var);
        return rz0Var;
    }

    public final void e(final Context context) {
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                a.f(context);
            }
        });
    }

    public final String i() {
        return d;
    }

    public final synchronized rz0 j(Context context, vz0 vz0Var) {
        rz0 rz0Var;
        try {
            y45.j(context, "context");
            y45.j(vz0Var, "config");
            c = vz0Var;
            Log.d("visha_cloud_CloudDriveClientHolder", "init: " + vz0Var);
            if (b == null) {
                oz0 oz0Var = new oz0(context);
                String strB = vz0Var.b();
                if (strB == null) {
                    strB = "visha";
                }
                oz0 oz0VarV = oz0Var.S(strB).R(vz0Var.a()).Q(new C0213a(vz0Var)).b0(vz0Var.k()).W(3).X("visha_cloud_drive_sdk").d0(new b(vz0Var)).V(new c());
                if (vz0Var.k()) {
                    oz0VarV.c0(true);
                }
                oz0VarV.Y(vz0Var.e());
                oz0VarV.a0(vz0Var.g());
                oz0VarV.U(vz0Var.d());
                oz0VarV.e0(vz0Var.j());
                oz0VarV.Z(vz0Var.f());
                oz0VarV.T(vz0Var.c());
                b = oz0VarV.a();
                e(context);
            }
            rz0Var = b;
            y45.h(rz0Var, "null cannot be cast to non-null type com.transsion.clouddrive.sdk.api.CloudDriveClient");
        } catch (Throwable th) {
            throw th;
        }
        return rz0Var;
    }

    public final void k(String str) {
        y45.j(str, "<set-?>");
        d = str;
    }
}

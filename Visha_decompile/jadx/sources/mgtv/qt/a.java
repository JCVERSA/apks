package mgtv.qt;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import defpackage.m3d;
import defpackage.mvd;

public abstract class a {
    public static boolean a = false;

    public static void a(Application application, String str, String str2, m3d m3dVar) {
        b(application, str, str2, application.getPackageName(), true, true, m3dVar);
    }

    public static void b(Application application, String str, String str2, String str3, boolean z, boolean z2, m3d m3dVar) {
        if (application == null) {
            c.f("传入的上下文为null");
            return;
        }
        a = !z2;
        c.j = application.getApplicationContext();
        c.k = application;
        c.c = z;
        if (!z) {
            Log.e("QuestMobile", "QuestMobile SDK 设置为不允许使用网络");
            return;
        }
        if (m3dVar == null) {
            m3dVar = new mvd();
        }
        c.b = m3dVar;
        j.a(new w(str, str2, str3, z));
    }

    public static void c(Context context, String str) {
        h.b(context, str, "");
    }
}

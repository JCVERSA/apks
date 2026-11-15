package mgtv.qt;

import android.content.Context;
import android.util.Log;

public final class h {
    public Object a;
    public boolean b;

    public static void b(Context context, String str, String str2) {
        if (context == null) {
            Log.e("QuestMobile", "onEvent context is null");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        c.j = applicationContext;
        j.a(new g(applicationContext, str, str2, "", "-1"));
    }

    public final Object a() {
        return this.a;
    }

    public final void c(Object obj) {
        this.a = obj;
    }

    public final void d(boolean z) {
        this.b = z;
    }

    public final boolean e() {
        return this.b;
    }
}

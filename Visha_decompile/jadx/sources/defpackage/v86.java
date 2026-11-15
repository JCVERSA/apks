package defpackage;

import android.app.Application;
import android.content.Context;

public class v86 extends vec {
    @Override
    public boolean b() {
        return true;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public Void create(Context context) {
        try {
            Class.forName("com.transsion.vishperformancelib.VishMonitor").getMethod("init", Application.class).invoke(null, context);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

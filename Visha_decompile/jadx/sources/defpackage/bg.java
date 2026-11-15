package defpackage;

import android.app.Application;
import android.content.Context;
import com.alibaba.android.arouter.launcher.ARouter;

public class bg extends vec {
    public boolean b;
    public boolean c;

    public bg(boolean z, boolean z2) {
        this.b = z;
        this.c = z2;
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public Void create(Context context) {
        if (this.b || this.c) {
            ARouter.openLog();
            ARouter.openDebug();
        }
        if (!(context instanceof Application)) {
            return null;
        }
        ARouter.init((Application) context);
        return null;
    }
}

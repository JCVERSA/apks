package defpackage;

import android.app.Application;
import android.content.Context;
import com.transsion.playercommon.core.MainApp;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.utils.BaseConstant;

public class v06 extends vec {
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
        MarkPointUtil.i(context, BaseConstant.h ? "channel_gp" : "channel_preload", 9324, 0, MainApp.o(context), true);
        MarkPointUtil.k(context.getApplicationContext());
        MainApp.c cVar = new MainApp.c();
        cVar.h();
        MarkPointUtil.o(cVar);
        if (!(context instanceof Application)) {
            return null;
        }
        bcc.b((Application) context);
        return null;
    }
}

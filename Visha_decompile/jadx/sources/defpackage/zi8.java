package defpackage;

import android.content.Context;
import com.transsion.playercommon.core.MainApp;

public class zi8 extends vec {
    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public Void create(Context context) {
        ydc.h(maa.a("ro.os_dragdrop_support", false) || maa.a("ro.tr_dragdrop.feature.support", false));
        MainApp.y(context, context.getPackageName());
        MainApp.e();
        return null;
    }
}

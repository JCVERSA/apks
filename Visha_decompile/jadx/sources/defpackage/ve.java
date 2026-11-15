package defpackage;

import android.content.Context;
import com.transsion.playercommon.vishaapis.appconfig.helper.AppLayoutConfigHelper;
import java.util.ArrayList;
import java.util.List;

public class ve extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(ec2.class);
        b.add(lw5.class);
        b.add(zz4.class);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return b;
    }

    @Override
    public Void create(Context context) throws Throwable {
        AppLayoutConfigHelper.getInstance().restoreAppLayoutConfigFromCache();
        h27.c().e(1151, new Object[0]);
        return null;
    }
}

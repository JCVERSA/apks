package defpackage;

import android.app.Application;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.b;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.playercommon.core.MainApp;
import java.util.ArrayList;
import java.util.List;

public class te1 extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(zz4.class);
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
    public Void create(Context context) {
        try {
            if (context instanceof Application) {
                zdc.j((Application) context);
            }
            int iA = w6c.a(context);
            PlayListData.getInstance().setRepeat(iA == 1);
            hsb.e(iA);
            MainApp.m(context);
            MainApp.i(context);
            rt6.b(context);
            sv3.d(context);
            String str = "Visha Version Name is " + b.d();
            String str2 = "Version Code is " + b.b();
            StringBuilder sb = new StringBuilder();
            sb.append("Is GP Version:");
            sb.append(!pp3.b);
            LogUtils.w("ConfigTask", str, str2, sb.toString());
            return null;
        } catch (Exception e) {
            LogUtils.m("ConfigTask", "app config exception :" + e.getMessage());
            return null;
        }
    }
}

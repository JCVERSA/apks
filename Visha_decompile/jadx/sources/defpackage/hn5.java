package defpackage;

import android.content.Context;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import java.util.ArrayList;
import java.util.List;

public class hn5 extends vec {
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
        ConvertingTaskManager.j().r();
        return null;
    }
}

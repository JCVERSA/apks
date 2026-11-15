package defpackage;

import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import java.util.ArrayList;
import java.util.List;

public class aq5 extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(zz4.class);
    }

    public static void i() {
        vmb.f();
        LogUtils.r().x(false);
        if (ge.e()) {
            return;
        }
        LogUtils.r().y(4);
        LogUtils.r().z(4);
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
        i();
        return null;
    }
}

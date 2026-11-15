package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.privateroom.privateroom.a;

public class mg8 {
    public boolean a() {
        String strC = a.c();
        if (r0a.g(strC)) {
            LogUtils.P("PrivateRoom_PrivateFolder", "external storage is not enabled");
            return false;
        }
        if (!zu3.d(strC)) {
            LogUtils.j("PrivateRoom_PrivateFolder", "create private directory failed");
            return false;
        }
        LogUtils.j("PrivateRoom_PrivateFolder", "create private directory successfully: " + strC);
        return true;
    }
}

package defpackage;

import android.util.Log;
import com.transsion.utils.BaseConstant;
import java.io.File;

public abstract class ox8 {
    public static boolean a(String str) {
        if (!b(str)) {
            return false;
        }
        Log.d("SAFHelper", ":::::::" + av3.u(str) + ":::::::::::\n" + BaseConstant.f + " :::::::::::\n" + BaseConstant.g);
        String strU = av3.u(str);
        return strU.equals(BaseConstant.f) || strU.equals(BaseConstant.g);
    }

    public static boolean b(String str) {
        return ("/storage".equals(str) || str.startsWith("/storage/emulated/") || !new File(str).exists()) ? false : true;
    }
}

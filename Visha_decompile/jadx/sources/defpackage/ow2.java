package defpackage;

import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.gslb.NetResponse;

public class ow2 {
    public int a;

    public static ow2 a() {
        String strM = MMKV.p().m("dolby_video_eq_value", NetResponse.EMPTY_RESPONSE);
        Log.i("visha_video_dolby_EqValue", "init:" + strM);
        return (ow2) fi1.b(strM, ow2.class);
    }

    public static void b(ow2 ow2Var) {
        MMKV.p().w("dolby_video_eq_value", fi1.e(ow2Var));
    }
}

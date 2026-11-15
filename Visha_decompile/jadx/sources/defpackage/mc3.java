package defpackage;

import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.gslb.NetResponse;

public class mc3 {
    public boolean a = false;
    public short b = 1;
    public short[] c = new short[5];
    public short d;
    public short e;
    public short f;

    public static mc3 a() {
        String strM = MMKV.p().m("eq_value", NetResponse.EMPTY_RESPONSE);
        Log.i("visha_EqValue", "init:" + strM);
        return (mc3) fi1.b(strM, mc3.class);
    }

    public static int b(short s) {
        return s;
    }

    public static void c(mc3 mc3Var) {
        MMKV.p().w("eq_value", fi1.e(mc3Var));
    }
}

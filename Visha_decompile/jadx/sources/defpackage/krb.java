package defpackage;

import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.gslb.NetResponse;

public class krb {
    public boolean a = false;
    public short b = 1;
    public short[] c = new short[5];
    public short d;
    public short e;
    public short f;

    public static krb a() {
        String strM = MMKV.p().m("video_eq_value", NetResponse.EMPTY_RESPONSE);
        Log.i("visha_EqValue_video", "init:" + strM);
        return (krb) fi1.b(strM, krb.class);
    }

    public static int b(short s) {
        return s;
    }

    public static void c(krb krbVar) {
        MMKV.p().w("video_eq_value", fi1.e(krbVar));
    }
}

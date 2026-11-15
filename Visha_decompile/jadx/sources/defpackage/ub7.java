package defpackage;

import android.content.Context;
import com.mgmi.ssp.MGTVAdFactory;

public abstract class ub7 {
    public static String a(Context context) {
        String oaid = MGTVAdFactory.getInstance().getOaid();
        return oaid == null ? "" : oaid;
    }
}

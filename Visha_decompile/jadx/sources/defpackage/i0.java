package defpackage;

import android.content.Context;
import com.transsion.kolun.oxygenbus.common.KolunOxygenBusRegister;

public class i0 extends vec {
    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public Void create(Context context) {
        if (!w.k()) {
            return null;
        }
        KolunOxygenBusRegister.initClientAsync(context);
        return null;
    }
}

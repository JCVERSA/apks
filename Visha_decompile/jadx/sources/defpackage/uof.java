package defpackage;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzdtz;
import java.util.Map;

public final class uof implements oof {
    public final zog a;

    public uof(zog zogVar) {
        this.a = zogVar;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    @Override
    public final void a(Map map) {
        byte b;
        String str = (String) map.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 97520651) {
            if (iHashCode == 109399814 && str.equals("shake")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (str.equals("flick")) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            this.a.n(zzdtz.SHAKE);
        } else if (b != 1) {
            this.a.n(zzdtz.NONE);
        } else {
            this.a.n(zzdtz.FLICK);
        }
    }
}

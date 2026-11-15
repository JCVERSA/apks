package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.l6;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class mpf implements oof {
    public final CookieManager a;

    public mpf(Context context) {
        this.a = zzv.zzr().zza(context);
    }

    @Override
    public final void a(Map map) {
        CookieManager cookieManager = this.a;
        if (cookieManager == null) {
            return;
        }
        if (((String) map.get("clear")) == null) {
            String str = (String) map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            cookieManager.setCookie((String) zzbd.zzc().b(cye.c1), str);
            return;
        }
        String str2 = (String) zzbd.zzc().b(cye.c1);
        String cookie = cookieManager.getCookie(str2);
        if (cookie != null) {
            List listF = l6.b(i2i.b(';')).f(cookie);
            for (int i = 0; i < listF.size(); i++) {
                Iterator it = l6.b(i2i.b('=')).d((String) listF.get(i)).iterator();
                it.getClass();
                if (!it.hasNext()) {
                    throw new IndexOutOfBoundsException("position (0) must be less than the number of elements that remained (0)");
                }
                cookieManager.setCookie(str2, String.valueOf((String) it.next()).concat(String.valueOf((String) zzbd.zzc().b(cye.O0))));
            }
        }
    }
}

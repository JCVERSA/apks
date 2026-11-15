package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.c4;
import java.util.Map;

public final class qjf implements n3f {
    public final c4 a;

    public qjf(c4 c4Var) {
        this.a = c4Var;
    }

    @Override
    public final void a(Object obj, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i = Integer.parseInt(str);
                c4 c4Var = this.a;
                synchronized (c4Var) {
                    try {
                        if (c4Var.I != i) {
                            c4Var.I = i;
                            c4Var.requestLayout();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception e) {
                int i2 = zze.zza;
                zzo.zzk("Exception occurred while getting webview content height", e);
            }
        }
    }
}

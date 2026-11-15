package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.Map;
import java.util.function.Consumer;

public final class nhf implements n3f {
    public final Consumer a;

    public nhf(Consumer consumer) {
        this.a = consumer;
    }

    @Override
    public final void a(Object obj, Map map) {
        String str = (String) map.get("action");
        if (str == null) {
            int i = zze.zza;
            zzo.zzj("Action missing from video GMSG.");
        } else if (str.equals("src")) {
            String str2 = (String) map.get("src");
            if (str2 != null) {
                this.a.accept(str2);
            } else {
                int i2 = zze.zza;
                zzo.zzj("src missing from video GMSG.");
            }
        }
    }
}

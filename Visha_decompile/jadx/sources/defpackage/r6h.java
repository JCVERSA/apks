package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.concurrent.Callable;

public final class r6h implements eeh {
    public final Context a;
    public final g8i b;

    public r6h(g8i g8iVar, Context context) {
        this.b = g8iVar;
        this.a = context;
    }

    @Override
    public final int zza() {
        return 61;
    }

    @Override
    public final im5 zzb() {
        final ContentResolver contentResolver;
        if (((Boolean) zzbd.zzc().b(cye.Uc)).booleanValue() && (contentResolver = this.a.getContentResolver()) != null) {
            return this.b.m(new Callable() {
                @Override
                public final Object call() {
                    ContentResolver contentResolver2 = contentResolver;
                    return new s6h(Settings.Secure.getString(contentResolver2, "advertising_id"), Settings.Secure.getInt(contentResolver2, CommonUrlParts.LIMIT_AD_TRACKING, 0) == 1);
                }
            });
        }
        return j8.h(new s6h(null, false));
    }
}

package defpackage;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.google.android.gms.internal.ads.j8;

public final class g5h implements eeh {
    public final Context a;

    public g5h(Context context) {
        this.a = context;
    }

    @Override
    public final int zza() {
        return 2;
    }

    @Override
    public final im5 zzb() {
        return j8.h(new h5h(ContextCompat.checkSelfPermission(this.a, "com.google.android.gms.permission.AD_ID") == 0));
    }
}

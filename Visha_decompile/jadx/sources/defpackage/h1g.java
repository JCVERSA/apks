package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import java.util.Set;

public final class h1g extends a6g implements r1f {
    public final Bundle c;

    public h1g(Set set) {
        super(set);
        this.c = new Bundle();
    }

    public final synchronized Bundle F() {
        return new Bundle(this.c);
    }

    @Override
    public final synchronized void h(String str, Bundle bundle) {
        this.c.putAll(bundle);
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((OnAdMetadataChangedListener) obj).onAdMetadataChanged();
            }
        });
    }
}

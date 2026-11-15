package defpackage;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import com.google.android.gms.internal.ads.zzbdh;

public final class vye extends CustomTabsCallback {
    public final zzbdh a;

    public vye(zzbdh zzbdhVar) {
        this.a = zzbdhVar;
    }

    @Override
    public final void onNavigationEvent(int i, Bundle bundle) {
        this.a.e(i);
    }
}

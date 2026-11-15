package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.ga.AthenaAnalytics;

public class wj {
    public final TrackData a = new TrackData();
    public String b;
    public long c;

    public wj(String str, int i) {
        this.c = i;
        this.b = str;
    }

    public final void a(String str, Bundle bundle) {
        if (bundle != null) {
            this.a.add(str, bundle);
        }
    }

    public void b() {
        AthenaAnalytics.K(this.c).d0(this.b, this.a, this.c);
    }

    public wj c(Bundle bundle, Bundle bundle2) {
        a("eparam", bundle);
        a("ext", bundle2);
        return this;
    }
}

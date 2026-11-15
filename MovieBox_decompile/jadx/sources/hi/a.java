package hi;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.athena;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;

public class a {

    private final TrackData f61366a;

    private String f61367b;

    private long f61368c;

    public a(String str) {
        long jB = athena.b();
        this.f61368c = jB;
        if (jB == 0) {
            aethna.b("FAILED! You should init Athena first before track the event " + str);
        }
        this.f61367b = str;
        this.f61366a = new TrackData();
    }

    private void a(String str, Bundle bundle) {
        if (bundle != null) {
            this.f61366a.add(str, bundle);
        }
    }

    public void b() {
        AthenaAnalytics.L(this.f61368c).h0(this.f61367b, this.f61366a, this.f61368c);
    }

    public a c(Bundle bundle, Bundle bundle2) {
        a("eparam", bundle);
        a("ext", bundle2);
        return this;
    }

    public a(String str, int i10) {
        this.f61368c = i10;
        this.f61367b = str;
        this.f61366a = new TrackData();
    }
}

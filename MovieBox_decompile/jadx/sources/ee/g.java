package ee;

import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class g {

    public static final String f59599b = "g";

    public final ConcurrentHashMap f59600a;

    public static class b {

        public static final g f59601a = new g();
    }

    public static g d() {
        return b.f59601a;
    }

    public CloudControlConfig.CodeSeat a(String str) {
        try {
            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) this.f59600a.get(str);
            if (codeSeat != null) {
                return codeSeat;
            }
            AdLogUtil.Log().d(f59599b, "getCodeSeat value is null");
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public void b() {
        AdLogUtil.Log().d(f59599b, "clearCache");
        this.f59600a.clear();
    }

    public void c(List list) {
        if (list == null) {
            return;
        }
        try {
            b();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
                this.f59600a.put(codeSeat.getCodeSeatId(), codeSeat);
            }
        } catch (Exception unused) {
            AdLogUtil.Log().d(f59599b, "update code seat error");
        }
    }

    public g() {
        this.f59600a = new ConcurrentHashMap();
    }
}

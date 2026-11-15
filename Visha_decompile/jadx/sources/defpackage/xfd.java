package defpackage;

import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class xfd {
    public static final String b = "g";
    public final ConcurrentHashMap a;

    public static class b {
        public static final xfd a = new xfd();
    }

    public static xfd d() {
        return b.a;
    }

    public CloudControlConfig.CodeSeat a(String str) {
        try {
            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) this.a.get(str);
            if (codeSeat != null) {
                return codeSeat;
            }
            AdLogUtil.Log().d(b, "getCodeSeat value is null");
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public void b() {
        AdLogUtil.Log().d(b, "clearCache");
        this.a.clear();
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
                this.a.put(codeSeat.getCodeSeatId(), codeSeat);
            }
        } catch (Exception unused) {
            AdLogUtil.Log().d(b, "update code seat error");
        }
    }

    public xfd() {
        this.a = new ConcurrentHashMap();
    }
}

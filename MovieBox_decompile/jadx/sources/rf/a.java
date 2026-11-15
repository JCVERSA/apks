package rf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Map;
import java.util.TimeZone;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f71176a = new a();

    private static String f71177b = "";

    private a() {
    }

    public final String a() {
        if (!b(f71177b)) {
            String str = f71177b;
            Intrinsics.e(str);
            return str;
        }
        TimeZone timeZone = TimeZone.getDefault();
        String id2 = timeZone.getID();
        if (b(id2)) {
            String displayName = timeZone.getDisplayName(false, 0);
            if (b(displayName)) {
                f71177b = "";
                displayName = TmcConstants.ROUTE_UNKNOWN;
            } else {
                f71177b = displayName;
            }
            id2 = displayName;
            Intrinsics.g(id2, "{\n            val name =…e\n            }\n        }");
        } else {
            f71177b = id2;
            Intrinsics.g(id2, "{\n            zoneStr = …\n            id\n        }");
        }
        return id2;
    }

    public final boolean b(String str) {
        return str == null || str.length() == 0;
    }

    public final boolean c(Map map) {
        return (map == null || map.isEmpty()) ? false : true;
    }
}

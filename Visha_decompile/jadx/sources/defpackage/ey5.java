package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import org.apache.commons.text.StringSubstitutor;

public abstract class ey5 {
    public static void a(StringBuilder sb, HashMap map) {
        sb.append("{");
        boolean z = true;
        for (String str : map.keySet()) {
            if (!z) {
                sb.append(StringUtils.COMMA);
            }
            String str2 = (String) map.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
            z = false;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }
}

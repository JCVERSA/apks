package defpackage;

import com.transsion.core.log.ObjectLogUtils;

public abstract class oj7 {
    public static void a(Exception exc, StringBuilder sb, ObjectLogUtils objectLogUtils) {
        sb.append(exc.getMessage());
        objectLogUtils.i(sb.toString());
    }
}

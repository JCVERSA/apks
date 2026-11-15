package defpackage;

import java.security.AccessControlException;
import java.security.AccessController;

public abstract class ha9 {
    public static final pq5 a = pq5.k("freemarker.security");

    public static Integer a(String str, int i) {
        try {
            return (Integer) AccessController.doPrivileged(new ga9(str, i));
        } catch (AccessControlException unused) {
            pq5 pq5Var = a;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Insufficient permissions to read system property ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(", using default value ");
            stringBuffer.append(i);
            pq5Var.z(stringBuffer.toString());
            return new Integer(i);
        }
    }

    public static String b(String str) {
        return (String) AccessController.doPrivileged(new ea9(str));
    }

    public static String c(String str, String str2) {
        try {
            return (String) AccessController.doPrivileged(new fa9(str, str2));
        } catch (AccessControlException unused) {
            pq5 pq5Var = a;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Insufficient permissions to read system property ");
            stringBuffer.append(n0a.F(str));
            stringBuffer.append(", using default value ");
            stringBuffer.append(n0a.F(str2));
            pq5Var.z(stringBuffer.toString());
            return str2;
        }
    }
}

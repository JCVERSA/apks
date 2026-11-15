package org.bouncycastle.pkix;

import defpackage.u0a;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Security;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;

class SubjectPublicKeyInfoChecker$Properties {
    private static final ThreadLocal threadProperties = new ThreadLocal();

    public static class a implements PrivilegedAction {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        @Override
        public Object run() {
            return Security.getProperty(this.a);
        }
    }

    public static class b implements PrivilegedAction {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override
        public Object run() {
            return System.getProperty(this.a);
        }
    }

    private SubjectPublicKeyInfoChecker$Properties() {
    }

    public static int asInteger(String str, int i) {
        String propertyValue = getPropertyValue(str);
        return propertyValue != null ? Integer.parseInt(propertyValue) : i;
    }

    public static String getPropertyValue(String str) {
        String str2;
        String str3 = (String) AccessController.doPrivileged(new a(str));
        if (str3 != null) {
            return str3;
        }
        Map map = (Map) threadProperties.get();
        return (map == null || (str2 = (String) map.get(str)) == null) ? (String) AccessController.doPrivileged(new b(str)) : str2;
    }

    public static boolean isOverrideSet(String str) {
        try {
            return isSetTrue(getPropertyValue(str));
        } catch (AccessControlException unused) {
            return false;
        }
    }

    private static boolean isSetTrue(String str) {
        if (str == null || str.length() != 4) {
            return false;
        }
        if (str.charAt(0) != 't' && str.charAt(0) != 'T') {
            return false;
        }
        if (str.charAt(1) != 'r' && str.charAt(1) != 'R') {
            return false;
        }
        if (str.charAt(2) == 'u' || str.charAt(2) == 'U') {
            return str.charAt(3) == 'e' || str.charAt(3) == 'E';
        }
        return false;
    }

    public static boolean removeThreadOverride(String str) {
        String str2;
        ThreadLocal threadLocal = threadProperties;
        Map map = (Map) threadLocal.get();
        if (map == null || (str2 = (String) map.remove(str)) == null) {
            return false;
        }
        if (map.isEmpty()) {
            threadLocal.remove();
        }
        return BooleanUtils.TRUE.equals(u0a.f(str2));
    }

    public static boolean setThreadOverride(String str, boolean z) {
        boolean zIsOverrideSet = isOverrideSet(str);
        ThreadLocal threadLocal = threadProperties;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
        }
        map.put(str, z ? BooleanUtils.TRUE : BooleanUtils.FALSE);
        return zIsOverrideSet;
    }
}

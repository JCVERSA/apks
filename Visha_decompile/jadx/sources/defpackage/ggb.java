package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.ext.beans.c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;

public abstract class ggb {
    public static final Set a = c();
    public static Class b;

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static Map b() {
        HashMap map = new HashMap();
        map.put(TypedValues.Custom.S_BOOLEAN, Boolean.TYPE);
        map.put("byte", Byte.TYPE);
        map.put("char", Character.TYPE);
        map.put("short", Short.TYPE);
        map.put("int", Integer.TYPE);
        map.put("long", Long.TYPE);
        map.put(TypedValues.Custom.S_FLOAT, Float.TYPE);
        map.put("double", Double.TYPE);
        return map;
    }

    public static final Set c() throws Throwable {
        Properties properties = new Properties();
        Class clsA = b;
        if (clsA == null) {
            clsA = a("freemarker.ext.beans.BeansWrapper");
            b = clsA;
        }
        InputStream resourceAsStream = clsA.getResourceAsStream("unsafeMethods.txt");
        if (resourceAsStream == null) {
            return Collections.EMPTY_SET;
        }
        String str = null;
        try {
            try {
                properties.load(resourceAsStream);
                resourceAsStream.close();
                HashSet hashSet = new HashSet((properties.size() * 4) / 3, 1.0f);
                Map mapB = b();
                for (String str2 : properties.keySet()) {
                    try {
                        try {
                            try {
                                hashSet.add(e(str2, mapB));
                            } catch (ClassNotFoundException e) {
                                if (c.p) {
                                    throw e;
                                }
                            }
                        } catch (NoSuchMethodException e2) {
                            if (c.p) {
                                throw e2;
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        str = str2;
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Could not load unsafe method ");
                        stringBuffer.append(str);
                        stringBuffer.append(" ");
                        stringBuffer.append(e.getClass().getName());
                        stringBuffer.append(" ");
                        stringBuffer.append(e.getMessage());
                        throw new RuntimeException(stringBuffer.toString());
                    }
                }
                return hashSet;
            } catch (Throwable th) {
                resourceAsStream.close();
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    public static boolean d(Method method) {
        return a.contains(method);
    }

    public static Method e(String str, Map map) {
        int iIndexOf = str.indexOf(40);
        int iLastIndexOf = str.lastIndexOf(46, iIndexOf);
        Class clsD = hx0.d(str.substring(0, iLastIndexOf));
        String strSubstring = str.substring(iLastIndexOf + 1, iIndexOf);
        StringTokenizer stringTokenizer = new StringTokenizer(str.substring(iIndexOf + 1, str.length() - 1), StringUtils.COMMA);
        int iCountTokens = stringTokenizer.countTokens();
        Class<?>[] clsArr = new Class[iCountTokens];
        for (int i = 0; i < iCountTokens; i++) {
            String strNextToken = stringTokenizer.nextToken();
            Class<?> cls = (Class) map.get(strNextToken);
            clsArr[i] = cls;
            if (cls == null) {
                clsArr[i] = hx0.d(strNextToken);
            }
        }
        return clsD.getMethod(strSubstring, clsArr);
    }
}

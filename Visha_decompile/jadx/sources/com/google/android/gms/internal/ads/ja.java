package com.google.android.gms.internal.ads;

import defpackage.oui;
import defpackage.qui;
import defpackage.rti;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.javascript.ES6Iterator;

public abstract class ja {
    public static final char[] a;

    static {
        char[] cArr = new char[80];
        a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static String a(rti rtiVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        d(rtiVar, sb, 0);
        return sb.toString();
    }

    public static void b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        c(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(oui.a(zzgwn.zzw((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzgwn) {
            sb.append(": \"");
            sb.append(oui.a((zzgwn) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof ia) {
            sb.append(" {");
            d((ia) obj, sb, i + 2);
            sb.append("\n");
            c(i, sb);
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i3 = i + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        b(sb, i3, "key", entry.getKey());
        b(sb, i3, ES6Iterator.VALUE_PROPERTY, entry.getValue());
        sb.append("\n");
        c(i, sb);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
    }

    public static void c(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(a, 0, i2);
            i -= i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01fa  */
    public static void d(rti rtiVar, StringBuilder sb, int i) {
        int i2;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = rtiVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i3 = 0;
        while (true) {
            i2 = 3;
            if (i3 >= length) {
                break;
            }
            Method method3 = declaredMethods[i3];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i3++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i2);
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                b(sb, i, strSubstring.substring(0, strSubstring.length() - 4), ia.y(method2, rtiVar, new Object[0]));
            } else if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb, i, strSubstring.substring(0, strSubstring.length() - 3), ia.y(method, rtiVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objY = ia.y(method4, rtiVar, new Object[0]);
                    if (method5 == null) {
                        if (objY instanceof Boolean) {
                            if (((Boolean) objY).booleanValue()) {
                                b(sb, i, strSubstring, objY);
                            }
                        } else if (objY instanceof Integer) {
                            if (((Integer) objY).intValue() != 0) {
                                b(sb, i, strSubstring, objY);
                            }
                        } else if (objY instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objY).floatValue()) != 0) {
                                b(sb, i, strSubstring, objY);
                            }
                        } else if (!(objY instanceof Double)) {
                            if (objY instanceof String) {
                                zEquals = objY.equals("");
                            } else if (objY instanceof zzgwn) {
                                zEquals = objY.equals(zzgwn.zzb);
                            } else if (objY instanceof rti) {
                                if (objY != ((rti) objY).d()) {
                                    b(sb, i, strSubstring, objY);
                                }
                            } else if (!(objY instanceof Enum) || ((Enum) objY).ordinal() != 0) {
                                b(sb, i, strSubstring, objY);
                            }
                            if (!zEquals) {
                                b(sb, i, strSubstring, objY);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objY).doubleValue()) != 0) {
                            b(sb, i, strSubstring, objY);
                        }
                    } else if (((Boolean) ia.y(method5, rtiVar, new Object[0])).booleanValue()) {
                        b(sb, i, strSubstring, objY);
                    }
                }
            }
            i2 = 3;
        }
        qui quiVar = ((ia) rtiVar).zzt;
        if (quiVar != null) {
            quiVar.i(sb, i);
        }
    }
}

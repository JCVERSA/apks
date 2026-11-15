package org.slf4j.impl;

import defpackage.iv4;
import defpackage.qq5;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class a implements iv4 {
    public final ConcurrentMap a = new ConcurrentHashMap();

    public static String b(String str) {
        int length = str.length();
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf != -1) {
            int i = iLastIndexOf + 1;
            if (length - i <= 23) {
                return str.substring(i);
            }
        }
        return '*' + str.substring(length - 22);
    }

    public static String c(String str) {
        if (str == null) {
            return "null";
        }
        int length = str.length();
        if (length <= 23) {
            return str;
        }
        StringBuilder sb = new StringBuilder(26);
        int i = 0;
        int length2 = 0;
        do {
            int iIndexOf = str.indexOf(46, i);
            if (iIndexOf == -1) {
                int i2 = length - i;
                if (length2 == 0 || length2 + i2 > 23) {
                    return b(str);
                }
                sb.append((CharSequence) str, i, length);
                return sb.toString();
            }
            sb.append(str.charAt(i));
            if (iIndexOf - i > 1) {
                sb.append('*');
            }
            sb.append('.');
            i = iIndexOf + 1;
            length2 = sb.length();
        } while (length2 <= 23);
        return b(str);
    }

    @Override
    public qq5 a(String str) {
        String strC = c(str);
        qq5 qq5Var = (qq5) this.a.get(strC);
        if (qq5Var != null) {
            return qq5Var;
        }
        AndroidLoggerAdapter androidLoggerAdapter = new AndroidLoggerAdapter(strC);
        qq5 qq5Var2 = (qq5) this.a.putIfAbsent(strC, androidLoggerAdapter);
        return qq5Var2 == null ? androidLoggerAdapter : qq5Var2;
    }
}

package com.doman.core.b;

import android.text.TextUtils;
import java.util.HashMap;

public final class e {
    private f b;
    private HashMap<String, String> c = new HashMap<>();
    public HashMap<String, String> a = new HashMap<>();

    public e(f fVar) {
        this.b = fVar;
    }

    private String b() {
        String string;
        if (this.c.isEmpty()) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : this.c.keySet()) {
            String str2 = this.c.get(str);
            StringBuffer stringBuffer2 = new StringBuffer();
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                string = "";
            } else {
                stringBuffer2.append(str);
                stringBuffer2.append("=");
                stringBuffer2.append(str2);
                string = stringBuffer2.toString();
            }
            if (!TextUtils.isEmpty(string)) {
                stringBuffer.append(string);
                stringBuffer.append("&");
            }
        }
        return stringBuffer.deleteCharAt(stringBuffer.length() - 1).toString();
    }

    public final String a() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        if (a.a == null) {
            a.a = new a();
        }
        String strA = a.a();
        if (TextUtils.isEmpty(strA)) {
            strA = d.a;
        }
        String str = this.b.l;
        stringBuffer.append(strA);
        stringBuffer.append(str);
        String strB = b();
        if (TextUtils.isEmpty(strB)) {
            string = "";
        } else {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("?");
            stringBuffer2.append(strB);
            string = stringBuffer2.toString();
        }
        stringBuffer.append(string);
        return stringBuffer.toString().replace(" ", "");
    }

    public final void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.put(str, str2);
    }
}

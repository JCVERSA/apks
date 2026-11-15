package org.apache.tools.ant;

import java.io.File;
import java.util.StringTokenizer;

public class p {

    private StringTokenizer f68150a;

    private String f68151b = null;

    private boolean f68152c;

    private boolean f68153d;

    public p(String str) {
        boolean zA = lz.a.a("netware");
        this.f68152c = zA;
        if (zA) {
            this.f68150a = new StringTokenizer(str, ":;", true);
        } else {
            this.f68150a = new StringTokenizer(str, ":;", false);
        }
        this.f68153d = File.pathSeparatorChar == ';';
    }

    public boolean a() {
        if (this.f68151b != null) {
            return true;
        }
        return this.f68150a.hasMoreTokens();
    }

    public String b() {
        String strTrim = this.f68151b;
        if (strTrim != null) {
            this.f68151b = null;
        } else {
            strTrim = this.f68150a.nextToken().trim();
        }
        if (!this.f68152c) {
            if (strTrim.length() != 1 || !Character.isLetter(strTrim.charAt(0)) || !this.f68153d || !this.f68150a.hasMoreTokens()) {
                return strTrim;
            }
            String strTrim2 = this.f68150a.nextToken().trim();
            if (!strTrim2.startsWith("\\") && !strTrim2.startsWith("/")) {
                this.f68151b = strTrim2;
                return strTrim;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strTrim);
            stringBuffer.append(":");
            stringBuffer.append(strTrim2);
            return stringBuffer.toString();
        }
        String str = File.pathSeparator;
        if (strTrim.equals(str) || strTrim.equals(":")) {
            strTrim = this.f68150a.nextToken().trim();
        }
        if (!this.f68150a.hasMoreTokens()) {
            return strTrim;
        }
        String strTrim3 = this.f68150a.nextToken().trim();
        if (strTrim3.equals(str)) {
            return strTrim;
        }
        if (!strTrim3.equals(":")) {
            this.f68151b = strTrim3;
            return strTrim;
        }
        if (strTrim.startsWith("/") || strTrim.startsWith("\\") || strTrim.startsWith(".") || strTrim.startsWith("..")) {
            return strTrim;
        }
        String strTrim4 = this.f68150a.nextToken().trim();
        if (!strTrim4.equals(str)) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(strTrim);
            stringBuffer2.append(":");
            stringBuffer2.append(strTrim4);
            return stringBuffer2.toString();
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(strTrim);
        stringBuffer3.append(":");
        String string = stringBuffer3.toString();
        this.f68151b = strTrim4;
        return string;
    }
}

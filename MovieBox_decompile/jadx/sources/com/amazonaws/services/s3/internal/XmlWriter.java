package com.amazonaws.services.s3.internal;

import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class XmlWriter {

    List f18056a = new ArrayList();

    StringBuilder f18057b = new StringBuilder();

    private void a(String str, StringBuilder sb2) {
        String str2;
        if (str == null) {
            str = "";
        }
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\t') {
                str2 = "&#9;";
            } else if (cCharAt == '\n') {
                str2 = "&#10;";
            } else if (cCharAt == '\r') {
                str2 = "&#13;";
            } else if (cCharAt == '\"') {
                str2 = "&quot;";
            } else if (cCharAt == '&') {
                str2 = "&amp;";
            } else if (cCharAt != '<') {
                str2 = cCharAt != '>' ? null : "&gt;";
            } else {
                str2 = "&lt;";
            }
            if (str2 != null) {
                if (i11 < i10) {
                    sb2.append((CharSequence) str, i11, i10);
                }
                this.f18057b.append(str2);
                i11 = i10 + 1;
            }
            i10++;
        }
        if (i11 < i10) {
            this.f18057b.append((CharSequence) str, i11, i10);
        }
    }

    public XmlWriter b() {
        List list = this.f18056a;
        String str = (String) list.remove(list.size() - 1);
        StringBuilder sb2 = this.f18057b;
        sb2.append("</");
        sb2.append(str);
        sb2.append(">");
        return this;
    }

    public byte[] c() {
        return toString().getBytes(StringUtils.f18387a);
    }

    public XmlWriter d(String str) {
        StringBuilder sb2 = this.f18057b;
        sb2.append("<");
        sb2.append(str);
        sb2.append(">");
        this.f18056a.add(str);
        return this;
    }

    public XmlWriter e(String str) {
        a(str, this.f18057b);
        return this;
    }

    public String toString() {
        return this.f18057b.toString();
    }
}

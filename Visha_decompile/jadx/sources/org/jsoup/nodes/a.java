package org.jsoup.nodes;

import defpackage.dnb;
import defpackage.m0a;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.greenrobot.greendao.generator.Schema;
import org.jsoup.SerializationException;

public class a implements Map.Entry, Cloneable {
    public static final String[] e = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", Schema.DEFAULT_NAME, "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public String b;
    public String c;
    public b d;

    public a(String str, String str2, b bVar) {
        dnb.i(str);
        String strTrim = str.trim();
        dnb.g(strTrim);
        this.b = strTrim;
        this.c = str2;
        this.d = bVar;
    }

    public static void g(String str, String str2, Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(str);
        if (j(str, str2, outputSettings)) {
            return;
        }
        appendable.append("=\"");
        Entities.g(appendable, b.n(str2), outputSettings, true, false, false);
        appendable.append('\"');
    }

    public static boolean h(String str) {
        return Arrays.binarySearch(e, str) >= 0;
    }

    public static boolean j(String str, String str2, Document.OutputSettings outputSettings) {
        return outputSettings.k() == Document.OutputSettings.Syntax.html && (str2 == null || ((str2.isEmpty() || str2.equalsIgnoreCase(str)) && h(str)));
    }

    public a clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override
    public String getKey() {
        return this.b;
    }

    @Override
    public String getValue() {
        return b.n(this.c);
    }

    public String e() {
        StringBuilder sbB = m0a.b();
        try {
            f(sbB, new Document("").x1());
            return m0a.m(sbB);
        } catch (IOException e2) {
            throw new SerializationException(e2);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.b;
        if (str == null ? aVar.b != null : !str.equals(aVar.b)) {
            return false;
        }
        String str2 = this.c;
        if (str2 != null) {
            return str2.equals(aVar.c);
        }
        return aVar.c == null;
    }

    public void f(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        g(this.b, this.c, appendable, outputSettings);
    }

    @Override
    public int hashCode() {
        String str = this.b;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.c;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override
    public String setValue(String str) {
        int iW;
        String strQ = this.c;
        b bVar = this.d;
        if (bVar != null && (iW = bVar.w(this.b)) != -1) {
            strQ = this.d.q(this.b);
            this.d.d[iW] = str;
        }
        this.c = str;
        return b.n(strQ);
    }

    public String toString() {
        return e();
    }
}

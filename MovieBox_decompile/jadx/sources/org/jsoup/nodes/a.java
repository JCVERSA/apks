package org.jsoup.nodes;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.jsoup.SerializationException;

public class a implements Map.Entry, Cloneable {

    private static final String[] f68588d = {"allowfullscreen", TmcConstants.KEY_ASYNC, "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", MRAIDPresenter.OPEN, "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    private String f68589a;

    private String f68590b;

    b f68591c;

    public a(String str, String str2) {
        this(str, str2, null);
    }

    protected static void h(String str, String str2, Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(str);
        if (k(str, str2, outputSettings)) {
            return;
        }
        appendable.append("=\"");
        Entities.e(appendable, b.j(str2), outputSettings, true, false, false);
        appendable.append('\"');
    }

    protected static boolean i(String str) {
        return Arrays.binarySearch(f68588d, str) >= 0;
    }

    protected static boolean k(String str, String str2, Document.OutputSettings outputSettings) {
        return outputSettings.n() == Document.OutputSettings.Syntax.html && (str2 == null || (("".equals(str2) || str2.equalsIgnoreCase(str)) && i(str)));
    }

    public a clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    public String getKey() {
        return this.f68589a;
    }

    @Override
    public String getValue() {
        return this.f68590b;
    }

    public String e() {
        StringBuilder sb2 = new StringBuilder();
        try {
            g(sb2, new Document("").g1());
            return sb2.toString();
        } catch (IOException e10) {
            throw new SerializationException(e10);
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
        String str = this.f68589a;
        if (str == null ? aVar.f68589a != null : !str.equals(aVar.f68589a)) {
            return false;
        }
        String str2 = this.f68590b;
        String str3 = aVar.f68590b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        return str3 == null;
    }

    protected void g(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        h(this.f68589a, this.f68590b, appendable, outputSettings);
    }

    @Override
    public int hashCode() {
        String str = this.f68589a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f68590b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override
    public String setValue(String str) {
        int iT;
        String strN = this.f68591c.n(this.f68589a);
        b bVar = this.f68591c;
        if (bVar != null && (iT = bVar.t(this.f68589a)) != -1) {
            this.f68591c.f68595c[iT] = str;
        }
        this.f68590b = str;
        return strN;
    }

    public String toString() {
        return e();
    }

    public a(String str, String str2, b bVar) {
        org.jsoup.helper.d.j(str);
        this.f68589a = str.trim();
        org.jsoup.helper.d.h(str);
        this.f68590b = str2;
        this.f68591c = bVar;
    }
}

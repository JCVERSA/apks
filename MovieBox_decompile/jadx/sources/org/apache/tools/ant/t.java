package org.apache.tools.ant;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class t implements v {

    private String f68160a;

    private String f68161b;

    private String f68162c;

    private List f68163d;

    private List f68164e;

    private Location f68165f;

    private Project f68166g;

    private String f68167h;

    public t() {
        this.f68161b = "";
        this.f68162c = "";
        this.f68163d = null;
        this.f68164e = new ArrayList();
        this.f68165f = Location.UNKNOWN_LOCATION;
        this.f68167h = null;
    }

    public void a(String str) {
        if (this.f68163d == null) {
            this.f68163d = new ArrayList(2);
        }
        this.f68163d.add(str);
    }

    @Override
    public void b(u uVar) {
        this.f68164e.add(uVar);
    }

    public Location c() {
        return this.f68165f;
    }

    public String d() {
        return this.f68160a;
    }

    public Project e() {
        return this.f68166g;
    }

    public u[] f() {
        ArrayList arrayList = new ArrayList(this.f68164e.size());
        for (Object obj : this.f68164e) {
            if (obj instanceof u) {
                arrayList.add(obj);
            }
        }
        return (u[]) arrayList.toArray(new u[arrayList.size()]);
    }

    void g(u uVar, u uVar2) {
        while (true) {
            int iIndexOf = this.f68164e.indexOf(uVar);
            if (iIndexOf < 0) {
                return;
            } else {
                this.f68164e.set(iIndexOf, uVar2);
            }
        }
    }

    public void h(String str) {
        if (str.length() > 0) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",", true);
            while (stringTokenizer.hasMoreTokens()) {
                String strTrim = stringTokenizer.nextToken().trim();
                if ("".equals(strTrim) || ",".equals(strTrim)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Syntax Error: depends attribute of target \"");
                    stringBuffer.append(d());
                    stringBuffer.append("\" has an empty string as dependency.");
                    throw new BuildException(stringBuffer.toString());
                }
                a(strTrim);
                if (stringTokenizer.hasMoreTokens()) {
                    String strNextToken = stringTokenizer.nextToken();
                    if (!stringTokenizer.hasMoreTokens() || !",".equals(strNextToken)) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Syntax Error: Depend attribute for target \"");
                        stringBuffer2.append(d());
                        stringBuffer2.append("\" ends with a , character");
                        throw new BuildException(stringBuffer2.toString());
                    }
                }
            }
        }
    }

    public void i(String str) {
        this.f68167h = str;
    }

    public void j(String str) {
        if (str == null) {
            str = "";
        }
        this.f68161b = str;
    }

    public void k(Location location) {
        this.f68165f = location;
    }

    public void l(String str) {
        this.f68160a = str;
    }

    public void m(Project project) {
        this.f68166g = project;
    }

    public void n(String str) {
        if (str == null) {
            str = "";
        }
        this.f68162c = str;
    }

    public String toString() {
        return this.f68160a;
    }

    public t(t tVar) {
        this.f68161b = "";
        this.f68162c = "";
        this.f68163d = null;
        this.f68164e = new ArrayList();
        this.f68165f = Location.UNKNOWN_LOCATION;
        this.f68167h = null;
        this.f68160a = tVar.f68160a;
        this.f68161b = tVar.f68161b;
        this.f68162c = tVar.f68162c;
        this.f68163d = tVar.f68163d;
        this.f68165f = tVar.f68165f;
        this.f68166g = tVar.f68166g;
        this.f68167h = tVar.f68167h;
        this.f68164e = tVar.f68164e;
    }
}

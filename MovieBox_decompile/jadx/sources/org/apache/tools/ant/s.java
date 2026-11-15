package org.apache.tools.ant;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class s {

    private Project f68155a;

    private s f68156b;

    private Hashtable f68157c = new Hashtable();

    private Hashtable f68158d = new Hashtable();

    private Hashtable f68159e = new Hashtable();

    protected s() {
    }

    public static synchronized s d(Project project) {
        s sVar = (s) project.t("ant.PropertyHelper");
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s();
        sVar2.k(project);
        project.d("ant.PropertyHelper", sVar2);
        return sVar2;
    }

    static void h(String str, Vector vector, Vector vector2) {
        int i10 = 0;
        while (true) {
            int iIndexOf = str.indexOf("$", i10);
            if (iIndexOf < 0) {
                if (i10 < str.length()) {
                    vector.addElement(str.substring(i10));
                    return;
                }
                return;
            }
            if (iIndexOf > 0) {
                vector.addElement(str.substring(i10, iIndexOf));
            }
            if (iIndexOf == str.length() - 1) {
                vector.addElement("$");
                i10 = iIndexOf + 1;
            } else {
                int i11 = iIndexOf + 1;
                if (str.charAt(i11) == '{') {
                    int iIndexOf2 = str.indexOf(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, iIndexOf);
                    if (iIndexOf2 < 0) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Syntax error in property: ");
                        stringBuffer.append(str);
                        throw new BuildException(stringBuffer.toString());
                    }
                    String strSubstring = str.substring(iIndexOf + 2, iIndexOf2);
                    vector.addElement(null);
                    vector2.addElement(strSubstring);
                    i10 = iIndexOf2 + 1;
                } else if (str.charAt(i11) == '$') {
                    vector.addElement("$");
                    i10 = iIndexOf + 2;
                } else {
                    i10 = iIndexOf + 2;
                    vector.addElement(str.substring(iIndexOf, i10));
                }
            }
        }
    }

    public s a() {
        return this.f68156b;
    }

    public Hashtable b() {
        Hashtable hashtable;
        synchronized (this.f68157c) {
            hashtable = new Hashtable(this.f68157c);
        }
        return hashtable;
    }

    public synchronized Object c(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        Object objE = e(str, str2, false);
        if (objE != null) {
            return objE;
        }
        return this.f68157c.get(str2);
    }

    public Object e(String str, String str2, boolean z10) {
        Object objE;
        if (a() != null && (objE = a().e(str, str2, z10)) != null) {
            return objE;
        }
        if (!str2.startsWith("toString:")) {
            return null;
        }
        Object objT = this.f68155a.t(str2.substring(9));
        if (objT == null) {
            return null;
        }
        return objT.toString();
    }

    public Hashtable f() {
        Hashtable hashtable;
        synchronized (this.f68158d) {
            hashtable = new Hashtable(this.f68158d);
        }
        return hashtable;
    }

    public void g(String str, Vector vector, Vector vector2) {
        h(str, vector, vector2);
    }

    public String i(String str, String str2, Hashtable hashtable) {
        if (str2 == null || str2.indexOf(36) == -1) {
            return str2;
        }
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        g(str2, vector, vector2);
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration enumerationElements = vector.elements();
        Enumeration enumerationElements2 = vector2.elements();
        while (enumerationElements.hasMoreElements()) {
            String string = (String) enumerationElements.nextElement();
            if (string == null) {
                String str3 = (String) enumerationElements2.nextElement();
                Object objC = hashtable != null ? hashtable.get(str3) : null;
                if (objC == null) {
                    objC = c(str, str3);
                }
                if (objC == null) {
                    Project project = this.f68155a;
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Property \"");
                    stringBuffer2.append(str3);
                    stringBuffer2.append("\" has not been set");
                    project.x(stringBuffer2.toString(), 3);
                }
                if (objC != null) {
                    string = objC.toString();
                } else {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("${");
                    stringBuffer3.append(str3);
                    stringBuffer3.append("}");
                    string = stringBuffer3.toString();
                }
            }
            stringBuffer.append(string);
        }
        return stringBuffer.toString();
    }

    public synchronized void j(String str, String str2, Object obj) {
        if (this.f68157c.get(str2) != null) {
            Project project = this.f68155a;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Override ignored for property \"");
            stringBuffer.append(str2);
            stringBuffer.append("\"");
            project.x(stringBuffer.toString(), 3);
            return;
        }
        if (m(str, str2, obj, false, false, true)) {
            return;
        }
        Project project2 = this.f68155a;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Setting project property: ");
        stringBuffer2.append(str2);
        stringBuffer2.append(" -> ");
        stringBuffer2.append(obj);
        project2.x(stringBuffer2.toString(), 4);
        if (str2 != null && obj != null) {
            this.f68157c.put(str2, obj);
        }
    }

    public void k(Project project) {
        this.f68155a = project;
    }

    public synchronized boolean l(String str, String str2, Object obj, boolean z10) {
        if (this.f68158d.get(str2) != null) {
            if (z10) {
                Project project = this.f68155a;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Override ignored for user property \"");
                stringBuffer.append(str2);
                stringBuffer.append("\"");
                project.x(stringBuffer.toString(), 3);
            }
            return false;
        }
        if (m(str, str2, obj, false, false, false)) {
            return true;
        }
        if (this.f68157c.get(str2) != null && z10) {
            Project project2 = this.f68155a;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Overriding previous definition of property \"");
            stringBuffer2.append(str2);
            stringBuffer2.append("\"");
            project2.x(stringBuffer2.toString(), 3);
        }
        if (z10) {
            Project project3 = this.f68155a;
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Setting project property: ");
            stringBuffer3.append(str2);
            stringBuffer3.append(" -> ");
            stringBuffer3.append(obj);
            project3.x(stringBuffer3.toString(), 4);
        }
        if (str2 != null && obj != null) {
            this.f68157c.put(str2, obj);
        }
        return true;
    }

    public boolean m(String str, String str2, Object obj, boolean z10, boolean z11, boolean z12) {
        return a() != null && a().m(str, str2, obj, z10, z11, z12);
    }

    public synchronized void n(String str, String str2, Object obj) {
        Project project = this.f68155a;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Setting ro project property: ");
        stringBuffer.append(str2);
        stringBuffer.append(" -> ");
        stringBuffer.append(obj);
        project.x(stringBuffer.toString(), 4);
        this.f68158d.put(str2, obj);
        if (m(str, str2, obj, false, true, false)) {
            return;
        }
        this.f68157c.put(str2, obj);
    }
}

package org.apache.tools.ant.types;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Vector;
import org.apache.tools.ant.BuildException;

public class c implements Cloneable {

    private static final boolean f68288c = lz.a.a("win9x");

    protected static final String f68289d;

    private Vector f68290a = new Vector();

    private String f68291b = null;

    public static class a extends org.apache.tools.ant.q {

        private String[] f68292a;

        public String[] e() {
            return this.f68292a;
        }

        public void g(String str) {
            this.f68292a = new String[]{str};
        }
    }

    static {
        StringBuffer stringBuffer = new StringBuffer();
        String str = org.apache.tools.ant.util.p.f68442a;
        stringBuffer.append(str);
        stringBuffer.append("The ' characters around the executable and arguments are");
        stringBuffer.append(str);
        stringBuffer.append("not part of the command.");
        stringBuffer.append(str);
        f68289d = stringBuffer.toString();
    }

    protected static String e(String[] strArr, int i10) {
        if (strArr == null || strArr.length <= i10) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer("argument");
        if (strArr.length > i10) {
            stringBuffer.append("s");
        }
        stringBuffer.append(":");
        stringBuffer.append(org.apache.tools.ant.util.p.f68442a);
        while (i10 < strArr.length) {
            stringBuffer.append("'");
            stringBuffer.append(strArr[i10]);
            stringBuffer.append("'");
            stringBuffer.append(org.apache.tools.ant.util.p.f68442a);
            i10++;
        }
        stringBuffer.append(f68289d);
        return stringBuffer.toString();
    }

    public static String g(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer("Executing '");
        stringBuffer.append(strArr[0]);
        stringBuffer.append("'");
        if (strArr.length > 1) {
            stringBuffer.append(" with ");
            stringBuffer.append(e(strArr, 1));
        } else {
            stringBuffer.append(f68289d);
        }
        return stringBuffer.toString();
    }

    public static String l(String str) {
        if (str.indexOf("\"") > -1) {
            if (str.indexOf("'") > -1) {
                throw new BuildException("Can't handle single and double quotes in same argument");
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('\'');
            stringBuffer.append(str);
            stringBuffer.append('\'');
            return stringBuffer.toString();
        }
        if (str.indexOf("'") <= -1 && str.indexOf(" ") <= -1 && (!f68288c || str.indexOf(59) == -1)) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append('\"');
        stringBuffer2.append(str);
        stringBuffer2.append('\"');
        return stringBuffer2.toString();
    }

    public static String n(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append(l(strArr[i10]));
        }
        return stringBuffer.toString();
    }

    public void a(ListIterator listIterator) {
        for (int i10 = 0; i10 < this.f68290a.size(); i10++) {
            String[] strArrE = ((a) this.f68290a.elementAt(i10)).e();
            if (strArrE != null) {
                for (String str : strArrE) {
                    listIterator.add(str);
                }
            }
        }
    }

    public void b(ListIterator listIterator) {
        String str = this.f68291b;
        if (str != null) {
            listIterator.add(str);
        }
        a(listIterator);
    }

    public a c() {
        return d(false);
    }

    public Object clone() {
        try {
            c cVar = (c) super.clone();
            cVar.f68290a = (Vector) this.f68290a.clone();
            return cVar;
        } catch (CloneNotSupportedException e10) {
            throw new BuildException(e10);
        }
    }

    public a d(boolean z10) {
        a aVar = new a();
        if (z10) {
            this.f68290a.insertElementAt(aVar, 0);
        } else {
            this.f68290a.addElement(aVar);
        }
        return aVar;
    }

    public String[] i() {
        ArrayList arrayList = new ArrayList(this.f68290a.size() * 2);
        a(arrayList.listIterator());
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public String[] j() {
        LinkedList linkedList = new LinkedList();
        b(linkedList.listIterator());
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    public String k() {
        return this.f68291b;
    }

    public void m(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        char c10 = File.separatorChar;
        this.f68291b = str.replace('/', c10).replace('\\', c10);
    }

    public String toString() {
        return n(j());
    }
}

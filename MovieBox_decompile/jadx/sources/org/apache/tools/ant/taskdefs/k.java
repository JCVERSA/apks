package org.apache.tools.ant.taskdefs;

import com.aliyun.player.BuildConfig;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.tools.ant.BuildException;

public class k {

    private String f68235a;

    private b f68236b = new b();

    private Hashtable f68237c = new Hashtable();

    private Vector f68238d = new Vector();

    public static class b {

        private Vector f68242a = new Vector();

        private String f68243b = null;

        private Hashtable f68244c = new Hashtable();

        private Vector f68245d = new Vector();

        private void j(a aVar) {
            if (aVar == null) {
                return;
            }
            String strC = aVar.c();
            this.f68244c.put(strC, aVar);
            if (this.f68245d.contains(strC)) {
                return;
            }
            this.f68245d.addElement(strC);
        }

        public String a(a aVar) throws ManifestException {
            if (aVar.d() == null || aVar.e() == null) {
                throw new BuildException("Attributes must have name and value");
            }
            if (aVar.c().equalsIgnoreCase("Name")) {
                Vector vector = this.f68242a;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("\"Name\" attributes should not occur in the main section and must be the first element in all other sections: \"");
                stringBuffer.append(aVar.d());
                stringBuffer.append(": ");
                stringBuffer.append(aVar.e());
                stringBuffer.append("\"");
                vector.addElement(stringBuffer.toString());
                return aVar.e();
            }
            if (aVar.c().startsWith("From".toLowerCase())) {
                Vector vector2 = this.f68242a;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Manifest attributes should not start with \"From\" in \"");
                stringBuffer2.append(aVar.d());
                stringBuffer2.append(": ");
                stringBuffer2.append(aVar.e());
                stringBuffer2.append("\"");
                vector2.addElement(stringBuffer2.toString());
                return null;
            }
            String strC = aVar.c();
            if (strC.equalsIgnoreCase("Class-Path")) {
                a aVar2 = (a) this.f68244c.get(strC);
                if (aVar2 == null) {
                    j(aVar);
                    return null;
                }
                this.f68242a.addElement("Multiple Class-Path attributes are supported but violate the Jar specification and may not be correctly processed in all environments");
                Enumeration enumerationF = aVar.f();
                while (enumerationF.hasMoreElements()) {
                    aVar2.b((String) enumerationF.nextElement());
                }
                return null;
            }
            if (!this.f68244c.containsKey(strC)) {
                j(aVar);
                return null;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("The attribute \"");
            stringBuffer3.append(aVar.d());
            stringBuffer3.append("\" may not occur more ");
            stringBuffer3.append("than once in the same section");
            throw new ManifestException(stringBuffer3.toString());
        }

        public void b(a aVar) {
            if (a(aVar) != null) {
                throw new BuildException("Specify the section name using the \"name\" attribute of the <section> element rather than using a \"Name\" manifest attribute");
            }
        }

        public a c(String str) {
            return (a) this.f68244c.get(str.toLowerCase());
        }

        public Object clone() {
            b bVar = new b();
            bVar.i(this.f68243b);
            Enumeration enumerationD = d();
            while (enumerationD.hasMoreElements()) {
                a aVarC = c((String) enumerationD.nextElement());
                bVar.j(new a(aVarC.d(), aVarC.e()));
            }
            return bVar;
        }

        public Enumeration d() {
            return this.f68245d.elements();
        }

        public String e(String str) {
            a aVarC = c(str.toLowerCase());
            if (aVarC == null) {
                return null;
            }
            return aVarC.e();
        }

        public boolean equals(Object obj) {
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            return this.f68244c.equals(((b) obj).f68244c);
        }

        public String f() {
            return this.f68243b;
        }

        public String g(BufferedReader bufferedReader) throws IOException, ManifestException {
            a aVarC = null;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null || line.length() == 0) {
                    break;
                }
                if (line.charAt(0) != ' ') {
                    a aVar = new a(line);
                    String strA = a(aVar);
                    aVarC = c(aVar.c());
                    if (strA != null) {
                        return strA;
                    }
                } else if (aVarC != null) {
                    aVarC.a(line);
                } else {
                    if (this.f68243b == null) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Can't start an attribute with a continuation line ");
                        stringBuffer.append(line);
                        throw new ManifestException(stringBuffer.toString());
                    }
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(this.f68243b);
                    stringBuffer2.append(line.substring(1));
                    this.f68243b = stringBuffer2.toString();
                }
            }
            return null;
        }

        public void h(String str) {
            String lowerCase = str.toLowerCase();
            this.f68244c.remove(lowerCase);
            this.f68245d.removeElement(lowerCase);
        }

        public int hashCode() {
            return this.f68244c.hashCode();
        }

        public void i(String str) {
            this.f68243b = str;
        }

        public void k(PrintWriter printWriter) throws IOException {
            String str = this.f68243b;
            if (str != null) {
                new a("Name", str).i(printWriter);
            }
            Enumeration enumerationD = d();
            while (enumerationD.hasMoreElements()) {
                c((String) enumerationD.nextElement()).i(printWriter);
            }
            printWriter.print("\r\n");
        }
    }

    public k() {
        this.f68235a = BuildConfig.VERSION_NAME;
        this.f68235a = null;
    }

    public void a(b bVar) {
        String strF = bVar.f();
        if (strF == null) {
            throw new BuildException("Sections must have a name");
        }
        this.f68237c.put(strF, bVar);
        if (this.f68238d.contains(strF)) {
            return;
        }
        this.f68238d.addElement(strF);
    }

    public b b() {
        return this.f68236b;
    }

    public b c(String str) {
        return (b) this.f68237c.get(str);
    }

    public void d(PrintWriter printWriter) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Manifest-Version: ");
        stringBuffer.append(this.f68235a);
        stringBuffer.append("\r\n");
        printWriter.print(stringBuffer.toString());
        String strE = this.f68236b.e("Signature-Version");
        if (strE != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Signature-Version: ");
            stringBuffer2.append(strE);
            stringBuffer2.append("\r\n");
            printWriter.print(stringBuffer2.toString());
            this.f68236b.h("Signature-Version");
        }
        this.f68236b.k(printWriter);
        if (strE != null) {
            try {
                this.f68236b.b(new a("Signature-Version", strE));
            } catch (ManifestException unused) {
            }
        }
        Enumeration enumerationElements = this.f68238d.elements();
        while (enumerationElements.hasMoreElements()) {
            c((String) enumerationElements.nextElement()).k(printWriter);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        String str = this.f68235a;
        if (str == null) {
            if (kVar.f68235a != null) {
                return false;
            }
        } else if (!str.equals(kVar.f68235a)) {
            return false;
        }
        if (this.f68236b.equals(kVar.f68236b)) {
            return this.f68237c.equals(kVar.f68237c);
        }
        return false;
    }

    public int hashCode() {
        String str = this.f68235a;
        return (str != null ? str.hashCode() : 0) + this.f68236b.hashCode() + this.f68237c.hashCode();
    }

    public String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            d(new PrintWriter(stringWriter));
            return stringWriter.toString();
        } catch (IOException unused) {
            return null;
        }
    }

    public static class a {

        private String f68239a;

        private Vector f68240b;

        private int f68241c;

        public a() {
            this.f68239a = null;
            this.f68240b = new Vector();
            this.f68241c = 0;
        }

        private void j(PrintWriter printWriter, String str) throws IOException {
            String string;
            int length = this.f68239a.getBytes("UTF-8").length;
            if (length <= 68) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(this.f68239a);
                stringBuffer.append(": ");
                stringBuffer.append(str);
                string = stringBuffer.toString();
            } else {
                if (length > 70) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Unable to write manifest line ");
                    stringBuffer2.append(this.f68239a);
                    stringBuffer2.append(": ");
                    stringBuffer2.append(str);
                    throw new IOException(stringBuffer2.toString());
                }
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(this.f68239a);
                stringBuffer3.append(": ");
                stringBuffer3.append("\r\n");
                printWriter.print(stringBuffer3.toString());
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(" ");
                stringBuffer4.append(str);
                string = stringBuffer4.toString();
            }
            while (string.getBytes("UTF-8").length > 70) {
                int length2 = 70 >= string.length() ? string.length() - 1 : 70;
                String strSubstring = string.substring(0, length2);
                while (strSubstring.getBytes("UTF-8").length > 70 && length2 > 0) {
                    length2--;
                    strSubstring = string.substring(0, length2);
                }
                if (length2 == 0) {
                    StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append("Unable to write manifest line ");
                    stringBuffer5.append(this.f68239a);
                    stringBuffer5.append(": ");
                    stringBuffer5.append(str);
                    throw new IOException(stringBuffer5.toString());
                }
                StringBuffer stringBuffer6 = new StringBuffer();
                stringBuffer6.append(strSubstring);
                stringBuffer6.append("\r\n");
                printWriter.print(stringBuffer6.toString());
                StringBuffer stringBuffer7 = new StringBuffer();
                stringBuffer7.append(" ");
                stringBuffer7.append(string.substring(length2));
                string = stringBuffer7.toString();
            }
            StringBuffer stringBuffer8 = new StringBuffer();
            stringBuffer8.append(string);
            stringBuffer8.append("\r\n");
            printWriter.print(stringBuffer8.toString());
        }

        public void a(String str) {
            String str2 = (String) this.f68240b.elementAt(this.f68241c);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str2);
            stringBuffer.append(str.substring(1));
            h(stringBuffer.toString());
        }

        public void b(String str) {
            this.f68241c++;
            h(str);
        }

        public String c() {
            String str = this.f68239a;
            if (str == null) {
                return null;
            }
            return str.toLowerCase();
        }

        public String d() {
            return this.f68239a;
        }

        public String e() {
            if (this.f68240b.size() == 0) {
                return null;
            }
            Enumeration enumerationF = f();
            String string = "";
            while (enumerationF.hasMoreElements()) {
                String str = (String) enumerationF.nextElement();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(string);
                stringBuffer.append(str);
                stringBuffer.append(" ");
                string = stringBuffer.toString();
            }
            return string.trim();
        }

        public boolean equals(Object obj) {
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            a aVar = (a) obj;
            String strC = c();
            String strC2 = aVar.c();
            if ((strC != null || strC2 == null) && (strC == null || strC.equals(strC2))) {
                return this.f68240b.equals(aVar.f68240b);
            }
            return false;
        }

        public Enumeration f() {
            return this.f68240b.elements();
        }

        public void g(String str) throws ManifestException {
            int iIndexOf = str.indexOf(": ");
            if (iIndexOf != -1) {
                this.f68239a = str.substring(0, iIndexOf);
                h(str.substring(iIndexOf + 2));
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Manifest line \"");
            stringBuffer.append(str);
            stringBuffer.append("\" is not valid as it does not ");
            stringBuffer.append("contain a name and a value separated by ': ' ");
            throw new ManifestException(stringBuffer.toString());
        }

        public void h(String str) {
            if (this.f68241c < this.f68240b.size()) {
                this.f68240b.setElementAt(str, this.f68241c);
            } else {
                this.f68240b.addElement(str);
                this.f68241c = this.f68240b.size() - 1;
            }
        }

        public int hashCode() {
            return (this.f68239a != null ? c().hashCode() : 0) + this.f68240b.hashCode();
        }

        public void i(PrintWriter printWriter) throws IOException {
            Enumeration enumerationF = f();
            while (enumerationF.hasMoreElements()) {
                j(printWriter, (String) enumerationF.nextElement());
            }
        }

        public a(String str) throws ManifestException {
            this.f68239a = null;
            this.f68240b = new Vector();
            this.f68241c = 0;
            g(str);
        }

        public a(String str, String str2) {
            this.f68239a = null;
            this.f68240b = new Vector();
            this.f68241c = 0;
            this.f68239a = str;
            h(str2);
        }
    }

    public k(Reader reader) throws IOException, ManifestException {
        this.f68235a = BuildConfig.VERSION_NAME;
        BufferedReader bufferedReader = new BufferedReader(reader);
        String strG = this.f68236b.g(bufferedReader);
        String strE = this.f68236b.e("Manifest-Version");
        if (strE != null) {
            this.f68235a = strE;
            this.f68236b.h("Manifest-Version");
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            if (line.length() != 0) {
                b bVar = new b();
                if (strG == null) {
                    a aVar = new a(line);
                    if (aVar.d().equalsIgnoreCase("Name")) {
                        strG = aVar.e();
                    } else {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Manifest sections should start with a \"Name\" attribute and not \"");
                        stringBuffer.append(aVar.d());
                        stringBuffer.append("\"");
                        throw new ManifestException(stringBuffer.toString());
                    }
                } else {
                    bVar.a(new a(line));
                }
                bVar.i(strG);
                strG = bVar.g(bufferedReader);
                a(bVar);
            }
        }
    }
}

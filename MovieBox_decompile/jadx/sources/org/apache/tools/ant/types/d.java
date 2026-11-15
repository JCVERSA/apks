package org.apache.tools.ant.types;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Enumeration;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Properties;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;

public class d implements Cloneable {

    private String f68298f;

    private c f68293a = new c();

    private c f68294b = new c();

    private a f68295c = new a();

    private m f68296d = null;

    private m f68297e = null;

    private String f68299g = null;

    private b f68300h = null;

    private boolean f68301i = false;

    private boolean f68302j = false;

    public static class a extends g implements Cloneable {

        Properties f68303b = null;

        private Vector f68304c = new Vector();

        private Properties e() {
            Properties properties = new Properties();
            Enumeration enumerationElements = this.f68304c.elements();
            while (enumerationElements.hasMoreElements()) {
                properties.putAll(((q) enumerationElements.nextElement()).n());
            }
            return properties;
        }

        public void b(ListIterator listIterator) {
            String[] strArrA = super.a();
            if (strArrA != null) {
                for (String str : strArrA) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("-D");
                    stringBuffer.append(str);
                    listIterator.add(stringBuffer.toString());
                }
            }
            Properties propertiesE = e();
            Enumeration enumerationKeys = propertiesE.keys();
            while (enumerationKeys.hasMoreElements()) {
                String str2 = (String) enumerationKeys.nextElement();
                String property = propertiesE.getProperty(str2);
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("-D");
                stringBuffer2.append(str2);
                stringBuffer2.append(UrlUtils.EQUAL_MARK);
                stringBuffer2.append(property);
                listIterator.add(stringBuffer2.toString());
            }
        }

        public void c(a aVar) {
            this.f68307a.addAll(aVar.f68307a);
            this.f68304c.addAll(aVar.f68304c);
        }

        public Object clone() {
            try {
                a aVar = (a) super.clone();
                aVar.f68307a = (Vector) this.f68307a.clone();
                aVar.f68304c = (Vector) this.f68304c.clone();
                return aVar;
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        public void d(q qVar) {
            this.f68304c.addElement(qVar);
        }

        public void g() {
            Properties properties = this.f68303b;
            if (properties == null) {
                throw new BuildException("Unbalanced nesting of SysProperties");
            }
            try {
                System.setProperties(properties);
                this.f68303b = null;
            } catch (SecurityException e10) {
                throw new BuildException("Cannot modify system properties", e10);
            }
        }

        public void i() {
            try {
                this.f68303b = System.getProperties();
                Properties properties = new Properties();
                Enumeration<?> enumerationPropertyNames = this.f68303b.propertyNames();
                while (enumerationPropertyNames.hasMoreElements()) {
                    String str = (String) enumerationPropertyNames.nextElement();
                    properties.put(str, this.f68303b.getProperty(str));
                }
                properties.putAll(e());
                Enumeration enumerationElements = this.f68307a.elements();
                while (enumerationElements.hasMoreElements()) {
                    g.a aVar = (g.a) enumerationElements.nextElement();
                    aVar.d();
                    properties.put(aVar.b(), aVar.c());
                }
                System.setProperties(properties);
            } catch (SecurityException e10) {
                throw new BuildException("Cannot modify system properties", e10);
            }
        }
    }

    public d() {
        o(org.apache.tools.ant.util.f.g("java"));
        p(org.apache.tools.ant.util.f.e());
    }

    private void a(ListIterator listIterator) {
        i().b(listIterator);
        this.f68295c.b(listIterator);
        if (m()) {
            a aVar = new a();
            q qVar = new q();
            q.a aVar2 = new q.a();
            aVar2.e("system");
            qVar.g(aVar2);
            aVar.d(qVar);
            aVar.b(listIterator);
        }
        m mVarC = c(true);
        if (mVarC.size() > 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("-Xbootclasspath:");
            stringBuffer.append(mVarC.toString());
            listIterator.add(stringBuffer.toString());
        }
        if (l()) {
            listIterator.add("-classpath");
            listIterator.add(this.f68296d.n("ignore").toString());
        }
        if (j() != null) {
            j().d(listIterator);
        }
        if (this.f68301i) {
            listIterator.add("-jar");
        }
        this.f68294b.b(listIterator);
    }

    private m c(boolean z10) {
        if (this.f68298f.startsWith("1.1")) {
            m mVar = this.f68297e;
            if (mVar != null && z10) {
                mVar.log("Ignoring bootclasspath as the target VM doesn't support it.");
            }
        } else {
            m mVar2 = this.f68297e;
            if (mVar2 != null) {
                return mVar2.m(m() ? "last" : "ignore");
            }
            if (m()) {
                return m.f68333d;
            }
        }
        return new m(null);
    }

    private boolean m() {
        return this.f68302j || "true".equals(System.getProperty("ant.build.clonevm"));
    }

    public void b(a aVar) {
        this.f68295c.c(aVar);
    }

    public Object clone() {
        try {
            d dVar = (d) super.clone();
            dVar.f68293a = (c) this.f68293a.clone();
            dVar.f68294b = (c) this.f68294b.clone();
            dVar.f68295c = (a) this.f68295c.clone();
            m mVar = this.f68296d;
            if (mVar != null) {
                dVar.f68296d = (m) mVar.clone();
            }
            m mVar2 = this.f68297e;
            if (mVar2 != null) {
                dVar.f68297e = (m) mVar2.clone();
            }
            b bVar = this.f68300h;
            if (bVar != null) {
                dVar.f68300h = (b) bVar.clone();
            }
            return dVar;
        } catch (CloneNotSupportedException e10) {
            throw new BuildException(e10);
        }
    }

    public c.a e() {
        return this.f68294b.c();
    }

    public m g(Project project) {
        if (this.f68296d == null) {
            this.f68296d = new m(project);
        }
        return this.f68296d;
    }

    protected c i() {
        c cVar = (c) this.f68293a.clone();
        if (this.f68299g != null) {
            if (this.f68298f.startsWith("1.1")) {
                c.a aVarC = cVar.c();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("-mx");
                stringBuffer.append(this.f68299g);
                aVarC.g(stringBuffer.toString());
            } else {
                c.a aVarC2 = cVar.c();
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("-Xmx");
                stringBuffer2.append(this.f68299g);
                aVarC2.g(stringBuffer2.toString());
            }
        }
        return cVar;
    }

    public b j() {
        return this.f68300h;
    }

    public String[] k() {
        LinkedList linkedList = new LinkedList();
        a(linkedList.listIterator());
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    public boolean l() {
        m mVar = this.f68296d;
        m mVarN = mVar != null ? mVar.n("ignore") : null;
        return mVarN != null && mVarN.toString().trim().length() > 0;
    }

    public void n(String str) {
        this.f68294b.m(str);
        this.f68301i = false;
    }

    public void o(String str) {
        this.f68293a.m(str);
    }

    public void p(String str) {
        this.f68298f = str;
    }

    public String toString() {
        return c.n(k());
    }
}

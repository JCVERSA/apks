package org.apache.tools.ant.types;

import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;

public class q extends e implements u {

    static Class f68355g;

    private Set f68358c;

    private boolean f68356a = true;

    private boolean f68357b = false;

    private Vector f68359d = new Vector();

    private Vector f68360e = new Vector();

    private boolean f68361f = true;

    public static class a extends f {
        @Override
        public String[] c() {
            return new String[]{IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, "system", "commandline"};
        }
    }

    public static class b {

        private int f68362a;

        private String f68363b;

        private String f68364c;

        private String f68365d;

        private String f68366e;

        private void e(String str, String str2) {
            if (str2 == null || str2.length() < 1) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Invalid attribute: ");
                stringBuffer.append(str);
                throw new BuildException(stringBuffer.toString());
            }
            int i10 = this.f68362a + 1;
            this.f68362a = i10;
            if (i10 != 1) {
                throw new BuildException("Attributes name, regex, and prefix are mutually exclusive");
            }
        }

        public void f(a aVar) {
            String strB = aVar.b();
            e("builtin", strB);
            this.f68366e = strB;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("name=");
            stringBuffer.append(this.f68363b);
            stringBuffer.append(", regex=");
            stringBuffer.append(this.f68364c);
            stringBuffer.append(", prefix=");
            stringBuffer.append(this.f68365d);
            stringBuffer.append(", builtin=");
            stringBuffer.append(this.f68366e);
            return stringBuffer.toString();
        }
    }

    private void d(Set set, Hashtable hashtable) {
        Enumeration enumerationElements = this.f68359d.elements();
        while (enumerationElements.hasMoreElements()) {
            b bVar = (b) enumerationElements.nextElement();
            if (bVar.f68363b != null) {
                if (hashtable.get(bVar.f68363b) != null) {
                    set.add(bVar.f68363b);
                }
            } else if (bVar.f68365d != null) {
                Enumeration enumerationKeys = hashtable.keys();
                while (enumerationKeys.hasMoreElements()) {
                    String str = (String) enumerationKeys.nextElement();
                    if (str.startsWith(bVar.f68365d)) {
                        set.add(str);
                    }
                }
            } else {
                if (bVar.f68364c != null) {
                    new oz.b().c();
                    String unused = bVar.f68364c;
                    throw null;
                }
                if (bVar.f68366e == null) {
                    throw new BuildException("Impossible: Invalid PropertyRef!");
                }
                if (bVar.f68366e.equals(IntegrationConstants.NAVIGATION_BAR_ALL_ACTION)) {
                    set.addAll(hashtable.keySet());
                } else if (bVar.f68366e.equals("system")) {
                    set.addAll(System.getProperties().keySet());
                } else {
                    if (!bVar.f68366e.equals("commandline")) {
                        throw new BuildException("Impossible: Invalid builtin attribute!");
                    }
                    set.addAll(getProject().w().keySet());
                }
            }
        }
    }

    static Class j(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private Hashtable k() {
        Hashtable hashtable = new Hashtable();
        Enumeration<?> enumerationPropertyNames = System.getProperties().propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            hashtable.put(str, System.getProperties().getProperty(str));
        }
        return hashtable;
    }

    @Override
    public boolean a() {
        return isReference() && o().a();
    }

    public void e(b bVar) {
        i();
        this.f68359d.addElement(bVar);
    }

    public void g(a aVar) {
        b bVar = new b();
        bVar.f(aVar);
        e(bVar);
    }

    protected final void i() {
        if (isReference()) {
            throw tooManyAttributes();
        }
        this.f68361f = false;
    }

    @Override
    public Iterator iterator() {
        return new p(this, n().propertyNames());
    }

    public boolean l() {
        return isReference() ? o().f68356a : this.f68356a;
    }

    public k m() {
        if (!isReference()) {
            return null;
        }
        o().getClass();
        return null;
    }

    public Properties n() {
        Set<String> set;
        Set set2;
        if (isReference()) {
            return o().n();
        }
        Project project = getProject();
        Hashtable hashtableK = project == null ? k() : project.r();
        Enumeration enumerationElements = this.f68360e.elements();
        while (enumerationElements.hasMoreElements()) {
            hashtableK.putAll(((q) enumerationElements.nextElement()).n());
        }
        if (l() || (set2 = this.f68358c) == null) {
            set = set2;
            Set hashSet = new HashSet();
            d(hashSet, hashtableK);
            Enumeration enumerationElements2 = this.f68360e.elements();
            while (enumerationElements2.hasMoreElements()) {
                hashSet.addAll(((q) enumerationElements2.nextElement()).n().keySet());
            }
            Set set3 = hashSet;
            if (this.f68357b) {
                HashSet hashSet2 = new HashSet(hashtableK.keySet());
                hashSet2.removeAll(hashSet);
                set3 = hashSet2;
            }
            set = set3;
            if (!l()) {
                this.f68358c = set3;
                set = set3;
            }
        }
        set = set2;
        m();
        Properties properties = new Properties();
        for (String str : set) {
            String str2 = (String) hashtableK.get(str);
            if (str2 != null) {
                properties.setProperty(str, str2);
            }
        }
        return properties;
    }

    protected q o() {
        Class clsJ = f68355g;
        if (clsJ == null) {
            clsJ = j("org.apache.tools.ant.types.PropertySet");
            f68355g = clsJ;
        }
        return (q) getCheckedRef(clsJ, "propertyset");
    }

    @Override
    public final void setRefid(r rVar) {
        if (!this.f68361f) {
            throw tooManyAttributes();
        }
        super.setRefid(rVar);
    }

    @Override
    public int size() {
        return isReference() ? o().size() : n().size();
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry entry : new TreeMap(n()).entrySet()) {
            if (stringBuffer.length() != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(entry.getKey().toString());
            stringBuffer.append(UrlUtils.EQUAL_MARK);
            stringBuffer.append(entry.getValue().toString());
        }
        return stringBuffer.toString();
    }
}

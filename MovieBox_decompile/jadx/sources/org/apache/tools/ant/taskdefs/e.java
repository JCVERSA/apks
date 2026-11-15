package org.apache.tools.ant.taskdefs;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.ComponentHelper;
import org.apache.tools.ant.r;

public abstract class e extends c {

    private static b f68192w = new b(null);

    private String f68193k;

    private String f68194l;

    private File f68195m;

    private String f68196n;

    private int f68197o = 0;

    private boolean f68198p = false;

    private int f68199q = 0;

    private String f68200r;

    private String f68201s;

    private Class f68202t;

    private Class f68203u;

    public static class a extends org.apache.tools.ant.types.f {
        public a() {
        }

        @Override
        public String[] c() {
            return new String[]{"fail", "report", "ignore", "failall"};
        }

        public a(String str) {
            e(str);
        }
    }

    private static class b extends ThreadLocal {
        private b() {
        }

        Map a() {
            return (Map) get();
        }

        @Override
        public Object initialValue() {
            return new HashMap();
        }

        b(d dVar) {
            this();
        }
    }

    private URL B() {
        String string;
        if (this.f68195m.exists()) {
            string = null;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("File ");
            stringBuffer.append(this.f68195m);
            stringBuffer.append(" does not exist");
            string = stringBuffer.toString();
        }
        if (string == null && !this.f68195m.isFile()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("File ");
            stringBuffer2.append(this.f68195m);
            stringBuffer2.append(" is not a file");
            string = stringBuffer2.toString();
        }
        if (string == null) {
            try {
                return this.f68195m.toURL();
            } catch (Exception e10) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("File ");
                stringBuffer3.append(this.f68195m);
                stringBuffer3.append(" cannot use as URL: ");
                stringBuffer3.append(e10.toString());
                string = stringBuffer3.toString();
            }
        }
        int i10 = this.f68199q;
        if (i10 == 0 || i10 == 1) {
            log(string, 1);
        } else if (i10 == 2) {
            log(string, 3);
        } else if (i10 == 3) {
            throw new BuildException(string);
        }
        return null;
    }

    private void C(ClassLoader classLoader, URL url) {
        try {
            org.apache.tools.ant.taskdefs.a aVarV = org.apache.tools.ant.taskdefs.a.v(getProject(), url, v());
            aVarV.x(classLoader);
            aVarV.y(v());
            aVarV.e();
        } catch (BuildException e10) {
            throw r.a(e10, getLocation());
        }
    }

    public static String E(String str) {
        String strSubstring = str.substring(7);
        if (!strSubstring.startsWith("//")) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strSubstring.replace('.', '/'));
            stringBuffer.append("/antlib.xml");
            return stringBuffer.toString();
        }
        String strSubstring2 = strSubstring.substring(2);
        if (strSubstring2.endsWith(".xml")) {
            return strSubstring2;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(strSubstring2);
        stringBuffer2.append("/antlib.xml");
        return stringBuffer2.toString();
    }

    private Enumeration F(ClassLoader classLoader) {
        try {
            Enumeration<URL> resources = classLoader.getResources(this.f68196n);
            if (!resources.hasMoreElements()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Could not load definitions from resource ");
                stringBuffer.append(this.f68196n);
                stringBuffer.append(". It could not be found.");
                String string = stringBuffer.toString();
                int i10 = this.f68199q;
                if (i10 == 0 || i10 == 1) {
                    log(string, 1);
                } else if (i10 == 2) {
                    log(string, 3);
                } else if (i10 == 3) {
                    throw new BuildException(string);
                }
            }
            return resources;
        } catch (IOException e10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Could not fetch resources named ");
            stringBuffer2.append(this.f68196n);
            throw new BuildException(stringBuffer2.toString(), e10, getLocation());
        }
    }

    private void I() {
        throw new BuildException("Only one of the attributes name, file and resource can be set", getLocation());
    }

    protected void A(ClassLoader classLoader, String str, String str2) {
        try {
            try {
                String strE = r.e(v(), str);
                Class<?> cls = this.f68199q != 2 ? Class.forName(str2, true, classLoader) : null;
                String str3 = this.f68200r;
                if (str3 != null) {
                    this.f68202t = Class.forName(str3, true, classLoader);
                }
                String str4 = this.f68201s;
                if (str4 != null) {
                    this.f68203u = Class.forName(str4, true, classLoader);
                }
                org.apache.tools.ant.b bVar = new org.apache.tools.ant.b();
                bVar.t(strE);
                bVar.s(str2);
                bVar.q(cls);
                bVar.p(this.f68202t);
                bVar.o(this.f68203u);
                bVar.r(classLoader);
                if (cls != null) {
                    bVar.a(getProject());
                }
                ComponentHelper.j(getProject()).a(bVar);
            } catch (ClassNotFoundException e10) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(j());
                stringBuffer.append(" class ");
                stringBuffer.append(str2);
                stringBuffer.append(" cannot be found");
                throw new BuildException(stringBuffer.toString(), e10, getLocation());
            } catch (NoClassDefFoundError e11) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(j());
                stringBuffer2.append(" A class needed by class ");
                stringBuffer2.append(str2);
                stringBuffer2.append(" cannot be found: ");
                stringBuffer2.append(e11.getMessage());
                throw new BuildException(stringBuffer2.toString(), e11, getLocation());
            }
        } catch (BuildException e12) {
            int i10 = this.f68199q;
            if (i10 != 0) {
                if (i10 == 1) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append(e12.getLocation());
                    stringBuffer3.append("Warning: ");
                    stringBuffer3.append(e12.getMessage());
                    log(stringBuffer3.toString(), 1);
                    return;
                }
                if (i10 != 3) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append(e12.getLocation());
                    stringBuffer4.append(e12.getMessage());
                    log(stringBuffer4.toString(), 4);
                    return;
                }
            }
            throw e12;
        }
    }

    protected void D(ClassLoader classLoader, URL url) {
        try {
            try {
                InputStream inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
                if (inputStreamOpenStream == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Could not load definitions from ");
                    stringBuffer.append(url);
                    log(stringBuffer.toString(), 1);
                    org.apache.tools.ant.util.d.b(inputStreamOpenStream);
                    return;
                }
                Properties properties = new Properties();
                properties.load(inputStreamOpenStream);
                Enumeration enumerationKeys = properties.keys();
                while (enumerationKeys.hasMoreElements()) {
                    String str = (String) enumerationKeys.nextElement();
                    this.f68193k = str;
                    String property = properties.getProperty(str);
                    this.f68194l = property;
                    A(classLoader, this.f68193k, property);
                }
                org.apache.tools.ant.util.d.b(inputStreamOpenStream);
            } catch (IOException e10) {
                throw new BuildException(e10, getLocation());
            }
        } catch (Throwable th2) {
            org.apache.tools.ant.util.d.b(null);
            throw th2;
        }
    }

    public void G(a aVar) {
        this.f68199q = aVar.a();
    }

    public void H(String str) {
        if (this.f68198p) {
            I();
        }
        this.f68198p = true;
        this.f68196n = str;
    }

    @Override
    public void e() {
        Enumeration enumerationF;
        ClassLoader classLoaderY = y();
        if (!this.f68198p) {
            if (v() == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("name, file or resource attribute of ");
                stringBuffer.append(j());
                stringBuffer.append(" is undefined");
                throw new BuildException(stringBuffer.toString(), getLocation());
            }
            if (!v().startsWith("antlib:")) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Only antlib URIs can be located from the URI alone,not the URI ");
                stringBuffer2.append(v());
                throw new BuildException(stringBuffer2.toString());
            }
            H(E(v()));
        }
        String str = this.f68193k;
        if (str != null) {
            String str2 = this.f68194l;
            if (str2 != null) {
                A(classLoaderY, str, str2);
                return;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("classname attribute of ");
            stringBuffer3.append(j());
            stringBuffer3.append(" element ");
            stringBuffer3.append("is undefined");
            throw new BuildException(stringBuffer3.toString(), getLocation());
        }
        if (this.f68194l != null) {
            throw new BuildException("You must not specify classname together with file or resource.", getLocation());
        }
        if (this.f68195m != null) {
            URL urlB = B();
            if (urlB == null) {
                return;
            } else {
                enumerationF = new d(this, urlB);
            }
        } else {
            enumerationF = F(classLoaderY);
        }
        while (enumerationF.hasMoreElements()) {
            URL url = (URL) enumerationF.nextElement();
            int i10 = this.f68197o;
            if (url.toString().toLowerCase(Locale.US).endsWith(".xml")) {
                i10 = 1;
            }
            if (i10 == 0) {
                D(classLoaderY, url);
                return;
            }
            if (f68192w.a().get(url) != null) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Warning: Recursive loading of ");
                stringBuffer4.append(url);
                stringBuffer4.append(" ignored");
                stringBuffer4.append(" at ");
                stringBuffer4.append(getLocation());
                stringBuffer4.append(" originally loaded at ");
                stringBuffer4.append(f68192w.a().get(url));
                log(stringBuffer4.toString(), 1);
            } else {
                try {
                    f68192w.a().put(url, getLocation());
                    C(classLoaderY, url);
                    f68192w.a().remove(url);
                } catch (Throwable th2) {
                    f68192w.a().remove(url);
                    throw th2;
                }
            }
        }
    }
}

package org.apache.tools.ant.types;

import java.io.File;
import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import org.apache.tools.ant.BuildException;

public class i extends e implements Cloneable {

    static Class f68311k;

    private String f68312a = "@";

    private String f68313b = "@";

    private boolean f68314c = false;

    private boolean f68315d = true;

    private Hashtable f68316e = null;

    private Vector f68317f = new Vector();

    private b f68318g = b.f68325d;

    private boolean f68319h = false;

    private int f68320i = 0;

    private Vector f68321j = new Vector();

    public static class b extends f {

        private static final String[] f68324c = {"fail", "warn", "ignore"};

        public static final b f68325d = new b("fail");

        public static final b f68326e = new b("warn");

        public static final b f68327f = new b("ignore");

        public b() {
        }

        @Override
        public String[] c() {
            return f68324c;
        }

        public b(String str) {
            e(str);
        }
    }

    static Class d(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private void h(String str) {
        int iA = this.f68318g.a();
        if (iA == 0) {
            throw new BuildException(str);
        }
        if (iA == 1) {
            log(str, 1);
        } else if (iA != 2) {
            throw new BuildException("Invalid value for onMissingFiltersFile");
        }
    }

    @Override
    public synchronized Object clone() {
        if (isReference()) {
            return g().clone();
        }
        try {
            i iVar = (i) super.clone();
            iVar.f68321j = (Vector) e().clone();
            iVar.setProject(getProject());
            return iVar;
        } catch (CloneNotSupportedException e10) {
            throw new BuildException(e10);
        }
    }

    protected synchronized Vector e() {
        if (isReference()) {
            return g().e();
        }
        if (!this.f68319h) {
            this.f68319h = true;
            int size = this.f68317f.size();
            for (int i10 = 0; i10 < size; i10++) {
                i((File) this.f68317f.get(i10));
            }
            this.f68317f.clear();
            this.f68319h = false;
        }
        return this.f68321j;
    }

    protected i g() {
        Class clsD = f68311k;
        if (clsD == null) {
            clsD = d("org.apache.tools.ant.types.FilterSet");
            f68311k = clsD;
        }
        return (i) getCheckedRef(clsD, "filterset");
    }

    public synchronized void i(File file) {
        try {
            if (isReference()) {
                throw tooManyAttributes();
            }
            if (!file.exists()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Could not read filters from file ");
                stringBuffer.append(file);
                stringBuffer.append(" as it doesn't exist.");
                h(stringBuffer.toString());
            }
            FileInputStream fileInputStream = null;
            if (file.isFile()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Reading filters from ");
                stringBuffer2.append(file);
                log(stringBuffer2.toString(), 3);
                try {
                    try {
                        Properties properties = new Properties();
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        try {
                            properties.load(fileInputStream2);
                            Enumeration<?> enumerationPropertyNames = properties.propertyNames();
                            Vector vectorE = e();
                            while (enumerationPropertyNames.hasMoreElements()) {
                                String str = (String) enumerationPropertyNames.nextElement();
                                vectorE.addElement(new a(str, properties.getProperty(str)));
                            }
                            org.apache.tools.ant.util.d.b(fileInputStream2);
                        } catch (Exception e10) {
                            e = e10;
                            fileInputStream = fileInputStream2;
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("Could not read filters from file: ");
                            stringBuffer3.append(file);
                            throw new BuildException(stringBuffer3.toString(), e);
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStream2;
                            org.apache.tools.ant.util.d.b(fileInputStream);
                            throw th;
                        }
                    } catch (Exception e11) {
                        e = e11;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Must specify a file rather than a directory in the filtersfile attribute:");
                stringBuffer4.append(file);
                h(stringBuffer4.toString());
            }
            this.f68316e = null;
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public static class a {

        String f68322a;

        String f68323b;

        public a(String str, String str2) {
            a(str);
            b(str2);
        }

        public void a(String str) {
            this.f68322a = str;
        }

        public void b(String str) {
            this.f68323b = str;
        }

        public a() {
        }
    }
}

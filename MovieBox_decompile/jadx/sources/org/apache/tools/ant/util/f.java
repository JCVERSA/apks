package org.apache.tools.ant.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Vector;

public abstract class f {

    private static final boolean f68411a = lz.a.a("dos");

    private static final boolean f68412b = lz.a.b("netware");

    private static final boolean f68413c = lz.a.b("aix");

    private static final String f68414d = System.getProperty("java.home");

    private static final d f68415e = d.k();

    private static String f68416f;

    private static int f68417g;

    private static boolean f68418h;

    private static Vector f68419i;

    static {
        try {
            f68416f = "1.1";
            f68417g = 10 + 1;
            Class.forName("java.lang.ThreadLocal");
            f68416f = "1.2";
            f68417g++;
            Class.forName("java.lang.StrictMath");
            int i10 = f68417g;
            f68416f = "1.4";
            f68417g = i10 + 2;
            Class.forName("java.net.Proxy");
            f68416f = "1.5";
            f68417g++;
            Class.forName("java.util.ServiceLoader");
            f68416f = "1.6";
            f68417g++;
        } catch (Throwable unused) {
        }
        f68418h = false;
        try {
            Class.forName("kaffe.util.NotImplemented");
            f68418h = true;
        } catch (Throwable unused2) {
        }
    }

    private static String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(f68411a ? ".exe" : "");
        return stringBuffer.toString();
    }

    private static void b() {
        Vector vector = new Vector();
        f68419i = vector;
        switch (f68417g) {
            case 15:
            case 16:
                vector.addElement("com.sun.org.apache");
            case 14:
                if (f68417g == 14) {
                    f68419i.addElement("org.apache.crimson");
                    f68419i.addElement("org.apache.xalan");
                    f68419i.addElement("org.apache.xml");
                    f68419i.addElement("org.apache.xpath");
                }
                f68419i.addElement("org.ietf.jgss");
                f68419i.addElement("org.w3c.dom");
                f68419i.addElement("org.xml.sax");
            case 13:
                f68419i.addElement("org.omg");
                f68419i.addElement("com.sun.corba");
                f68419i.addElement("com.sun.jndi");
                f68419i.addElement("com.sun.media");
                f68419i.addElement("com.sun.naming");
                f68419i.addElement("com.sun.org.omg");
                f68419i.addElement("com.sun.rmi");
                f68419i.addElement("sunw.io");
                f68419i.addElement("sunw.util");
            case 12:
                f68419i.addElement("com.sun.java");
                f68419i.addElement("com.sun.image");
                break;
        }
        f68419i.addElement("sun");
        f68419i.addElement("java");
        f68419i.addElement("javax");
    }

    public static File c(String[] strArr) throws Throwable {
        File fileF = f68415e.f("ANT", ".JAVA_OPTS", null, false, true);
        PrintWriter printWriter = null;
        try {
            PrintWriter printWriter2 = new PrintWriter(new BufferedWriter(new FileWriter(fileF)));
            for (String str : strArr) {
                try {
                    printWriter2.println(str);
                } catch (Throwable th2) {
                    th = th2;
                    printWriter = printWriter2;
                    d.e(printWriter);
                    throw th;
                }
            }
            d.e(printWriter2);
            return fileF;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static File d(String str, String str2) {
        File fileO = f68415e.o(str);
        if (!fileO.exists()) {
            return null;
        }
        File file = new File(fileO, a(str2));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public static String e() {
        return f68416f;
    }

    public static int f() {
        return f68417g;
    }

    public static String g(String str) {
        File fileD;
        if (f68412b) {
            return str;
        }
        if (f68413c) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(f68414d);
            stringBuffer.append("/sh");
            fileD = d(stringBuffer.toString(), str);
        } else {
            fileD = null;
        }
        if (fileD == null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(f68414d);
            stringBuffer2.append("/bin");
            fileD = d(stringBuffer2.toString(), str);
        }
        return fileD != null ? fileD.getAbsolutePath() : a(str);
    }

    public static Vector h() {
        if (f68419i == null) {
            b();
        }
        return f68419i;
    }
}

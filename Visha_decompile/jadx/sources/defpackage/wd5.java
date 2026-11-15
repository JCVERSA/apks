package defpackage;

public abstract class wd5 {
    public static Class a;
    public static Class b;

    static {
        try {
            Class clsB = a;
            if (clsB == null) {
                clsB = b("org.python.core.PySystemState");
                a = clsB;
            }
            int iB0 = n0a.b0(clsB.getField("version").get(null).toString());
            Class clsB2 = b;
            if (clsB2 == null) {
                clsB2 = b("freemarker.ext.jython.JythonVersionAdapter");
                b = clsB2;
            }
            ClassLoader classLoader = clsB2.getClassLoader();
            try {
                if (iB0 >= 2005000) {
                    ubc.a(classLoader.loadClass("freemarker.ext.jython._Jython25VersionAdapter").newInstance());
                } else if (iB0 >= 2002000) {
                    ubc.a(classLoader.loadClass("freemarker.ext.jython._Jython22VersionAdapter").newInstance());
                } else {
                    ubc.a(classLoader.loadClass("freemarker.ext.jython._Jython20And21VersionAdapter").newInstance());
                }
            } catch (ClassNotFoundException e) {
                throw a(e);
            } catch (IllegalAccessException e2) {
                throw a(e2);
            } catch (InstantiationException e3) {
                throw a(e3);
            }
        } catch (Exception e4) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Failed to get Jython version: ");
            stringBuffer.append(e4);
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    public static RuntimeException a(Exception exc) {
        return new RuntimeException("Unexpected exception when creating JythonVersionAdapter", exc);
    }

    public static Class b(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }
}

package org.apache.tools.ant.util;

public class k {

    private static final d f68429a = d.k();

    public static ClassLoader a() {
        return Thread.currentThread().getContextClassLoader();
    }

    public static boolean b() {
        return true;
    }

    public static void c(ClassLoader classLoader) {
        Thread.currentThread().setContextClassLoader(classLoader);
    }
}

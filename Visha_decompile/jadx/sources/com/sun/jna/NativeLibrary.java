package com.sun.jna;

import defpackage.t18;
import defpackage.ubc;
import defpackage.z7a;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.Reference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class NativeLibrary implements Closeable {
    public static final Logger b = Logger.getLogger(NativeLibrary.class.getName());
    public static final Level c;
    public static final z7a d;
    public static final Map e;
    public static final Map f;
    public static final LinkedHashSet g;
    public static Method h;

    public static final class NativeLibraryDisposer implements Runnable {
        private long handle;

        public NativeLibraryDisposer(long j) {
            this.handle = j;
        }

        @Override
        public synchronized void run() {
            try {
                long j = this.handle;
                if (j != 0) {
                    try {
                        Native.close(j);
                        this.handle = 0L;
                    } catch (Throwable th) {
                        this.handle = 0L;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static class a implements z7a {
    }

    static {
        String string;
        c = Native.d ? Level.INFO : Level.FINE;
        d = new a();
        e = new HashMap();
        f = new ConcurrentHashMap();
        g = new LinkedHashSet();
        if (Native.l == 0) {
            throw new Error("Native library not initialized");
        }
        h = null;
        try {
            h = Throwable.class.getMethod("addSuppressed", Throwable.class);
        } catch (NoSuchMethodException unused) {
        } catch (SecurityException e2) {
            Logger.getLogger(NativeLibrary.class.getName()).log(Level.SEVERE, "Failed to initialize 'addSuppressed' method", (Throwable) e2);
        }
        String strF = Native.f("jnidispatch");
        if (strF != null) {
            g.add(strF);
        }
        if (System.getProperty("jna.platform.library.path") == null && !t18.v()) {
            if (t18.l() || t18.u() || t18.i() || t18.w()) {
                StringBuilder sb = new StringBuilder();
                sb.append(t18.u() ? "/" : "");
                sb.append(Native.l * 8);
                string = sb.toString();
            } else {
                string = "";
            }
            String[] strArr = {"/usr/lib" + string, "/lib" + string, "/usr/lib", "/lib"};
            if (t18.l() || t18.w() || t18.j()) {
                String strE = e();
                strArr = new String[]{"/usr/lib/" + strE, "/lib/" + strE, "/usr/lib" + string, "/lib" + string, "/usr/lib", "/lib"};
            }
            if (t18.l()) {
                ArrayList arrayListD = d();
                for (int length = strArr.length - 1; length >= 0; length--) {
                    int iIndexOf = arrayListD.indexOf(strArr[length]);
                    if (iIndexOf != -1) {
                        arrayListD.remove(iIndexOf);
                    }
                    arrayListD.add(0, strArr[length]);
                }
                strArr = (String[]) arrayListD.toArray(new String[0]);
            }
            String str = "";
            String str2 = str;
            for (int i = 0; i < strArr.length; i++) {
                File file = new File(strArr[i]);
                if (file.exists() && file.isDirectory()) {
                    str = str + str2 + strArr[i];
                    str2 = File.pathSeparator;
                }
            }
            if (!"".equals(str)) {
                System.setProperty("jna.platform.library.path", str);
            }
        }
        g.addAll(g("jna.platform.library.path"));
    }

    public static void b() {
        LinkedHashSet linkedHashSet;
        Map map = e;
        synchronized (map) {
            linkedHashSet = new LinkedHashSet(map.values());
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            ubc.a(((Reference) it.next()).get());
        }
    }

    public static ArrayList d() throws Throwable {
        Process processExec;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            processExec = Runtime.getRuntime().exec("/sbin/ldconfig -p");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            int iIndexOf = line.indexOf(" => ");
                            int iLastIndexOf = line.lastIndexOf(47);
                            if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf < iLastIndexOf) {
                                String strSubstring = line.substring(iIndexOf + 4, iLastIndexOf);
                                if (arrayList.contains(strSubstring)) {
                                    continue;
                                } else {
                                    arrayList.add(strSubstring);
                                }
                            }
                        } else {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Exception unused2) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (processExec != null) {
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (processExec == null) {
                            throw th;
                        }
                        try {
                            processExec.waitFor();
                            throw th;
                        } catch (InterruptedException unused5) {
                            throw th;
                        }
                    }
                }
                bufferedReader2.close();
            } catch (Exception unused6) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused7) {
            processExec = null;
        } catch (Throwable th3) {
            th = th3;
            processExec = null;
        }
        try {
            processExec.waitFor();
        } catch (InterruptedException unused8) {
        }
        return arrayList;
    }

    public static String e() {
        String str;
        String str2 = t18.j;
        if (t18.w()) {
            str = "-kfreebsd";
        } else {
            str = t18.j() ? "" : "-linux";
        }
        String str3 = "-gnu";
        if (t18.k()) {
            str2 = t18.e() ? "x86_64" : "i386";
        } else if (t18.r()) {
            str2 = t18.e() ? "powerpc64" : "powerpc";
        } else if (t18.g()) {
            str2 = "arm";
            str3 = "-gnueabi";
        } else if (str2.equals("mips64el")) {
            str3 = "-gnuabi64";
        }
        return str2 + str + str3;
    }

    public static List g(String str) {
        String property = System.getProperty(str, "");
        if ("".equals(property)) {
            return Collections.emptyList();
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!"".equals(strNextToken)) {
                arrayList.add(strNextToken);
            }
        }
        return arrayList;
    }

    public static boolean h(String str) {
        int iLastIndexOf;
        int i;
        if (!str.startsWith("lib") || (iLastIndexOf = str.lastIndexOf(".so.")) == -1 || (i = iLastIndexOf + 4) >= str.length()) {
            return false;
        }
        for (i = iLastIndexOf + 4; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != '.') {
                return false;
            }
        }
        return true;
    }

    public static String k(String str) {
        if (t18.o()) {
            if (str.startsWith("lib") && (str.endsWith(".dylib") || str.endsWith(".jnilib"))) {
                return str;
            }
            String strMapLibraryName = System.mapLibraryName(str);
            if (!strMapLibraryName.endsWith(".jnilib")) {
                return strMapLibraryName;
            }
            return strMapLibraryName.substring(0, strMapLibraryName.lastIndexOf(".jnilib")) + ".dylib";
        }
        if (t18.l() || t18.i()) {
            if (h(str) || str.endsWith(".so")) {
                return str;
            }
        } else if (t18.f()) {
            if (h(str) || str.endsWith(".so") || str.startsWith("lib") || str.endsWith(".a")) {
                return str;
            }
        } else if (t18.v() && (str.endsWith(".drv") || str.endsWith(".dll") || str.endsWith(".ocx"))) {
            return str;
        }
        String strMapLibraryName2 = System.mapLibraryName(str);
        return (t18.f() && strMapLibraryName2.endsWith(".so")) ? strMapLibraryName2.replaceAll(".so$", ".a") : strMapLibraryName2;
    }
}

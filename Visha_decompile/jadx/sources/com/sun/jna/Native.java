package com.sun.jna;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.rq0;
import defpackage.t18;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.BooleanUtils;

public abstract class Native {
    public static final Logger a = Logger.getLogger(Native.class.getName());
    public static final Charset b;
    public static final String c;
    public static final boolean d;
    public static final boolean e;
    public static final Level f;
    public static String g;
    public static final Map h;
    public static final Map i;
    public static final rq0 j;
    public static rq0 k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final Object t;
    public static final Map u;
    public static final Map v;
    public static final ThreadLocal w;
    public static final Map x;

    public static class a implements rq0 {
    }

    public static class b {
        public void finalize() throws Throwable {
            Native.c();
            super.finalize();
        }
    }

    public static class c implements PrivilegedAction {
        @Override
        public Method run() {
            try {
                Method declaredMethod = ClassLoader.class.getDeclaredMethod("findLibrary", String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static class d implements FilenameFilter {
        @Override
        public boolean accept(File file, String str) {
            return str.endsWith(".x") && str.startsWith("jna");
        }
    }

    public static class e extends ThreadLocal {
        @Override
        public Memory initialValue() {
            Memory memory = new Memory(4L);
            memory.h();
            return memory;
        }
    }

    static {
        Charset charsetForName;
        String property;
        String property2 = System.getProperty("native.encoding");
        if (property2 != null) {
            try {
                charsetForName = Charset.forName(property2);
            } catch (Exception e2) {
                a.log(Level.WARNING, "Failed to get charset for native.encoding value : '" + property2 + "'", (Throwable) e2);
                charsetForName = null;
            }
        } else {
            charsetForName = null;
        }
        if (charsetForName == null) {
            charsetForName = Charset.defaultCharset();
        }
        b = charsetForName;
        c = charsetForName.name();
        d = Boolean.getBoolean("jna.debug_load");
        boolean z = Boolean.getBoolean("jna.debug_load.jna");
        e = z;
        f = z ? Level.INFO : Level.FINE;
        g = null;
        h = Collections.synchronizedMap(new WeakHashMap());
        i = Collections.synchronizedMap(new WeakHashMap());
        a aVar = new a();
        j = aVar;
        k = aVar;
        i();
        if (g("6.1.6", getNativeVersion())) {
            l = sizeof(0);
            int iSizeof = sizeof(1);
            m = iSizeof;
            n = sizeof(2);
            o = sizeof(3);
            p = sizeof(4);
            q = sizeof(5);
            initIDs();
            if (Boolean.getBoolean("jna.protected")) {
                setProtected(true);
            }
            if (t18.s() || t18.v() || ((t18.l() && (t18.g() || t18.r() || t18.n() || t18.m())) || t18.f() || (t18.h() && !t18.k()))) {
                iSizeof = 8;
            }
            r = iSizeof;
            s = (t18.o() && t18.r()) ? 8 : iSizeof;
            System.setProperty("jna.loaded", BooleanUtils.TRUE);
            t = new b();
            u = new WeakHashMap();
            v = new WeakHashMap();
            w = new e();
            x = Collections.synchronizedMap(new WeakHashMap());
            return;
        }
        String property3 = System.getProperty("line.separator");
        StringBuilder sb = new StringBuilder();
        sb.append(property3);
        sb.append(property3);
        sb.append("There is an incompatible JNA native library installed on this system");
        sb.append(property3);
        sb.append("Expected: ");
        sb.append("6.1.6");
        sb.append(property3);
        sb.append("Found:    ");
        sb.append(getNativeVersion());
        sb.append(property3);
        if (g != null) {
            property = "(at " + g + ")";
        } else {
            property = System.getProperty("java.library.path");
        }
        sb.append(property);
        sb.append(Consts.DOT);
        sb.append(property3);
        sb.append("To resolve this issue you may do one of the following:");
        sb.append(property3);
        sb.append(" - remove or uninstall the offending library");
        sb.append(property3);
        sb.append(" - set the system property jna.nosys=true");
        sb.append(property3);
        sb.append(" - set jna.boot.library.path to include the path to the version of the ");
        sb.append(property3);
        sb.append("   jnidispatch library included with the JNA jar file you are using");
        sb.append(property3);
        throw new Error(sb.toString());
    }

    public static boolean b(File file) {
        if (file.delete()) {
            return true;
        }
        k(file);
        return false;
    }

    public static void c() {
        CallbackReference.d();
        Memory.k();
        NativeLibrary.b();
        m();
        g = null;
        System.setProperty("jna.loaded", BooleanUtils.FALSE);
    }

    public static native void close(long j2);

    public static File d(String str, ClassLoader classLoader) throws Throwable {
        String strSubstring;
        File file;
        Level level = (d || (e && str.contains("jnidispatch"))) ? Level.INFO : Level.FINE;
        if (classLoader == null && (classLoader = Thread.currentThread().getContextClassLoader()) == null) {
            classLoader = Native.class.getClassLoader();
        }
        Logger logger = a;
        logger.log(level, "Looking in classpath from {0} for {1}", new Object[]{classLoader, str});
        String strK = str.startsWith("/") ? str : NativeLibrary.k(str);
        if (str.startsWith("/")) {
            strSubstring = str;
        } else {
            strSubstring = t18.h + "/" + strK;
        }
        if (strSubstring.startsWith("/")) {
            strSubstring = strSubstring.substring(1);
        }
        URL resource = classLoader.getResource(strSubstring);
        if (resource == null) {
            String str2 = t18.h;
            if (strSubstring.startsWith(str2)) {
                if (str2.startsWith("darwin")) {
                    resource = classLoader.getResource("darwin/" + strSubstring.substring(str2.length() + 1));
                }
                if (resource == null) {
                    resource = classLoader.getResource(strK);
                }
            } else {
                if (strSubstring.startsWith("com/sun/jna/" + str2 + "/")) {
                    if (str2.startsWith("com/sun/jna/darwin")) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("com/sun/jna/darwin");
                        sb.append(strSubstring.substring(("com/sun/jna/" + str2).length() + 1));
                        resource = classLoader.getResource(sb.toString());
                    }
                    if (resource == null) {
                        resource = classLoader.getResource(strK);
                    }
                }
            }
        }
        if (resource == null) {
            String property = System.getProperty("java.class.path");
            if (classLoader instanceof URLClassLoader) {
                property = Arrays.asList(((URLClassLoader) classLoader).getURLs()).toString();
            }
            throw new IOException("Native library (" + strSubstring + ") not found in resource path (" + property + ")");
        }
        logger.log(level, "Found library resource at {0}", resource);
        if (resource.getProtocol().toLowerCase().equals("file")) {
            try {
                file = new File(new URI(resource.toString()));
            } catch (URISyntaxException unused) {
                file = new File(resource.getPath());
            }
            a.log(level, "Looking in {0}", file.getAbsolutePath());
            if (file.exists()) {
                return file;
            }
            throw new IOException("File URL " + resource + " could not be properly decoded");
        }
        FileOutputStream fileOutputStream = null;
        if (Boolean.getBoolean("jna.nounpack")) {
            return null;
        }
        InputStream inputStreamOpenStream = resource.openStream();
        if (inputStreamOpenStream == null) {
            throw new IOException("Can't obtain InputStream for " + strSubstring);
        }
        try {
            try {
                File fileCreateTempFile = File.createTempFile("jna", t18.v() ? ".dll" : null, e());
                if (!Boolean.getBoolean("jnidispatch.preserve")) {
                    fileCreateTempFile.deleteOnExit();
                }
                logger.log(level, "Extracting library to {0}", fileCreateTempFile.getAbsolutePath());
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileCreateTempFile);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = inputStreamOpenStream.read(bArr, 0, 1024);
                        if (i2 > 0) {
                            fileOutputStream2.write(bArr, 0, i2);
                        } else {
                            try {
                                break;
                            } catch (IOException unused2) {
                            }
                        }
                    }
                    inputStreamOpenStream.close();
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                    return fileCreateTempFile;
                } catch (IOException e2) {
                    fileOutputStream = fileOutputStream2;
                    e = e2;
                    throw new IOException("Failed to create temporary file for " + str + " library: " + e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        inputStreamOpenStream.close();
                    } catch (IOException unused4) {
                    }
                    if (fileOutputStream == null) {
                        throw th;
                    }
                    try {
                        fileOutputStream.close();
                        throw th;
                    } catch (IOException unused5) {
                        throw th;
                    }
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static File e() throws IOException {
        File file;
        File file2;
        String property = System.getProperty("jna.tmpdir");
        if (property != null) {
            file = new File(property);
            file.mkdirs();
        } else {
            file = new File(System.getProperty("java.io.tmpdir"));
            if (t18.o()) {
                file2 = new File(System.getProperty("user.home"), "Library/Caches/JNA/temp");
            } else if (t18.l() || t18.u() || t18.f() || t18.i() || t18.p() || t18.q() || t18.w()) {
                String str = System.getenv("XDG_CACHE_HOME");
                file2 = new File((str == null || str.trim().isEmpty()) ? new File(System.getProperty("user.home"), ".cache") : new File(str), "JNA/temp");
            } else {
                file2 = new File(file, "jna-" + System.getProperty("user.name").hashCode());
            }
            file2.mkdirs();
            if (file2.exists() && file2.canWrite()) {
                file = file2;
            }
        }
        if (!file.exists()) {
            throw new IOException("JNA temporary directory '" + file + "' does not exist");
        }
        if (file.canWrite()) {
            return file;
        }
        throw new IOException("JNA temporary directory '" + file + "' is not writable");
    }

    public static String f(String str) {
        if (System.getProperty("javawebstart.version") == null) {
            return null;
        }
        try {
            String str2 = (String) ((Method) AccessController.doPrivileged(new c())).invoke(Native.class.getClassLoader(), str);
            if (str2 != null) {
                return new File(str2).getParent();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static native void free(long j2);

    public static native synchronized void freeNativeCallback(long j2);

    public static boolean g(String str, String str2) {
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        if (strArrSplit.length < 3 || strArrSplit2.length < 3) {
            return false;
        }
        return Integer.parseInt(strArrSplit[0]) == Integer.parseInt(strArrSplit2[0]) && Integer.parseInt(strArrSplit[1]) <= Integer.parseInt(strArrSplit2[1]);
    }

    private static native String getNativeVersion();

    public static boolean h(File file) {
        return file.getName().startsWith("jna");
    }

    public static void i() throws Throwable {
        if (!Boolean.getBoolean("jna.nounpack")) {
            try {
                l();
            } catch (IOException e2) {
                a.log(Level.WARNING, "JNA Warning: IOException removing temporary files", (Throwable) e2);
            }
        }
        String property = System.getProperty("jna.boot.library.name", "jnidispatch");
        String property2 = System.getProperty("jna.boot.library.path");
        if (property2 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property2, File.pathSeparator);
            while (stringTokenizer.hasMoreTokens()) {
                File file = new File(new File(stringTokenizer.nextToken()), System.mapLibraryName(property).replace(".dylib", ".jnilib"));
                String absolutePath = file.getAbsolutePath();
                Logger logger = a;
                Level level = f;
                logger.log(level, "Looking in {0}", absolutePath);
                if (file.exists()) {
                    try {
                        logger.log(level, "Trying {0}", absolutePath);
                        System.setProperty("jnidispatch.path", absolutePath);
                        System.load(absolutePath);
                        g = absolutePath;
                        logger.log(level, "Found jnidispatch at {0}", absolutePath);
                        return;
                    } catch (UnsatisfiedLinkError unused) {
                    }
                }
                if (t18.o()) {
                    String str = "dylib";
                    String str2 = "jnilib";
                    if (!absolutePath.endsWith("dylib")) {
                        str2 = "dylib";
                        str = "jnilib";
                    }
                    String str3 = absolutePath.substring(0, absolutePath.lastIndexOf(str)) + str2;
                    Logger logger2 = a;
                    Level level2 = f;
                    logger2.log(level2, "Looking in {0}", str3);
                    if (new File(str3).exists()) {
                        try {
                            logger2.log(level2, "Trying {0}", str3);
                            System.setProperty("jnidispatch.path", str3);
                            System.load(str3);
                            g = str3;
                            logger2.log(level2, "Found jnidispatch at {0}", str3);
                            return;
                        } catch (UnsatisfiedLinkError e3) {
                            a.log(Level.WARNING, "File found at " + str3 + " but not loadable: " + e3.getMessage(), (Throwable) e3);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        if (!Boolean.parseBoolean(System.getProperty("jna.nosys", BooleanUtils.TRUE)) || t18.h()) {
            try {
                Logger logger3 = a;
                Level level3 = f;
                logger3.log(level3, "Trying (via loadLibrary) {0}", property);
                System.loadLibrary(property);
                logger3.log(level3, "Found jnidispatch on system path");
                return;
            } catch (UnsatisfiedLinkError unused2) {
            }
        }
        if (Boolean.getBoolean("jna.noclasspath")) {
            throw new UnsatisfiedLinkError("Unable to locate JNA native support library");
        }
        j();
    }

    private static native void initIDs();

    public static void j() throws Throwable {
        try {
            String strReplace = System.mapLibraryName("jnidispatch").replace(".dylib", ".jnilib");
            if (t18.f()) {
                strReplace = "libjnidispatch.a";
            }
            File fileD = d("/com/sun/jna/" + t18.h + "/" + strReplace, Native.class.getClassLoader());
            if (fileD == null && fileD == null) {
                throw new UnsatisfiedLinkError("Could not find JNA native support");
            }
            Logger logger = a;
            Level level = f;
            logger.log(level, "Trying {0}", fileD.getAbsolutePath());
            System.setProperty("jnidispatch.path", fileD.getAbsolutePath());
            System.load(fileD.getAbsolutePath());
            String absolutePath = fileD.getAbsolutePath();
            g = absolutePath;
            logger.log(level, "Found jnidispatch at {0}", absolutePath);
            if (!h(fileD) || Boolean.getBoolean("jnidispatch.preserve")) {
                return;
            }
            b(fileD);
        } catch (IOException e2) {
            throw new UnsatisfiedLinkError(e2.getMessage());
        }
    }

    public static void k(File file) {
        try {
            new File(file.getParentFile(), file.getName() + ".x").createNewFile();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static void l() {
        File[] fileArrListFiles = e().listFiles(new d());
        for (int i2 = 0; fileArrListFiles != null && i2 < fileArrListFiles.length; i2++) {
            File file = fileArrListFiles[i2];
            String name = file.getName();
            File file2 = new File(file.getParentFile(), name.substring(0, name.length() - 2));
            if (!file2.exists() || file2.delete()) {
                file.delete();
            }
        }
    }

    public static void m() {
        Map map = u;
        synchronized (map) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    unregister((Class) entry.getKey(), (long[]) entry.getValue());
                }
                u.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static native long malloc(long j2);

    public static native void read(Pointer pointer, long j2, long j3, byte[] bArr, int i2, int i3);

    public static native void setMemory(Pointer pointer, long j2, long j3, long j4, byte b2);

    public static native synchronized void setProtected(boolean z);

    private static native int sizeof(int i2);

    private static native void unregister(Class<?> cls, long[] jArr);
}

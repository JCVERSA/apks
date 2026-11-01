package com.google;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandleInfo;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import sun.misc.Unsafe;

public class LaunchApp extends Application {
    public static final String URL = "https://github.com/L-JINBIN/ApkSignatureKillerEx";

    public class a {
        private boolean override;
    }

    public final class b {
        private transient int accessFlags;
        private transient int classFlags;
        private transient ClassLoader classLoader;
        private transient int classSize;
        private transient int clinitThreadId;
        private transient Class componentType;
        private transient short copiedMethodsOffset;
        private transient Object dexCache;
        private transient int dexClassDefIndex;
        private volatile transient int dexTypeIndex;
        private transient Object extData;
        private transient long iFields;
        private transient Object[] ifTable;
        private transient long methods;
        private transient String name;
        private transient int numReferenceInstanceFields;
        private transient int numReferenceStaticFields;
        private transient int objectSize;
        private transient int objectSizeAllocFastPath;
        private transient int primitiveType;
        private transient int referenceInstanceOffsets;
        private transient long sFields;
        private transient int status;
        private transient Class superClass;
        private transient short virtualMethodsOffset;
        private transient Object vtable;
    }

    public final class c extends a {
        private int accessFlags;
        private long artMethod;
        private b declaringClass;
        private b declaringClassOfOverriddenMethod;
        private Object[] parameters;
    }

    public final class d {
        private final Member member = null;
        private final f handle = null;
    }

    public final class e {
        private e(Object... objArr) {
            throw new IllegalStateException("Failed to new a instance");
        }

        private static Object invoke(Object... objArr) {
            throw new IllegalStateException("Failed to invoke the method");
        }
    }

    public class f {
        private f cachedSpreadInvoker;
        private MethodType nominalType;
        private final MethodType type = null;
        protected final int handleKind = 0;
        protected final long artFieldOrMethod = 0;
    }

    public final class g extends f {
        private final MethodHandleInfo info = null;
    }

    public final class h {
        private static int s;
        private static int t;
        private int i;
        private int j;

        private static void a() {
        }

        private static void b() {
        }
    }

    public final class i {
        public static MethodHandle a(MethodHandles.Lookup lookup, Field field) {
            return lookup.unreflectGetter(field);
        }

        public static MethodHandle b(MethodHandles.Lookup lookup, Method method) {
            return lookup.unreflect(method);
        }

        public static MethodHandles.Lookup c() {
            return MethodHandles.lookup();
        }
    }

    public final class j {
        public static final Unsafe a;
        public static final long b;
        public static final long c;
        public static final long d;
        public static final long e;
        public static final HashSet f = new HashSet();

        static {
            try {
                Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
                a = unsafe;
                b = unsafe.objectFieldOffset(c.class.getDeclaredField("artMethod"));
                unsafe.objectFieldOffset(c.class.getDeclaredField("declaringClass"));
                long jObjectFieldOffset = unsafe.objectFieldOffset(f.class.getDeclaredField("artFieldOrMethod"));
                unsafe.objectFieldOffset(g.class.getDeclaredField("info"));
                long jObjectFieldOffset2 = unsafe.objectFieldOffset(b.class.getDeclaredField("methods"));
                c = jObjectFieldOffset2;
                long jObjectFieldOffset3 = unsafe.objectFieldOffset(b.class.getDeclaredField("iFields"));
                unsafe.objectFieldOffset(b.class.getDeclaredField("sFields"));
                unsafe.objectFieldOffset(d.class.getDeclaredField("member"));
                Method declaredMethod = h.class.getDeclaredMethod("a", null);
                Method declaredMethod2 = h.class.getDeclaredMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, null);
                declaredMethod.setAccessible(true);
                declaredMethod2.setAccessible(true);
                MethodHandle methodHandleB = i.b(i.c(), declaredMethod);
                MethodHandle methodHandleB2 = i.b(i.c(), declaredMethod2);
                long j = unsafe.getLong(methodHandleB, jObjectFieldOffset);
                long j2 = unsafe.getLong(methodHandleB2, jObjectFieldOffset);
                long j3 = unsafe.getLong(h.class, jObjectFieldOffset2);
                long j4 = j2 - j;
                d = j4;
                e = (j - j3) - j4;
                Field declaredField = h.class.getDeclaredField("i");
                Field declaredField2 = h.class.getDeclaredField("j");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                MethodHandle methodHandleA = i.a(i.c(), declaredField);
                MethodHandle methodHandleA2 = i.a(i.c(), declaredField2);
                unsafe.getLong(methodHandleA, jObjectFieldOffset);
                unsafe.getLong(methodHandleA2, jObjectFieldOffset);
                unsafe.getLong(h.class, jObjectFieldOffset3);
            } catch (ReflectiveOperationException e2) {
                Log.e("HiddenApiBypass", "Initialize error", e2);
                throw new ExceptionInInitializerError(e2);
            }
        }

        public static Object a(Class cls, Object obj, String str, Object... objArr) throws NoSuchMethodException {
            if (obj != null && !cls.isInstance(obj)) {
                throw new IllegalArgumentException("this object is not an instance of the given class");
            }
            Method declaredMethod = e.class.getDeclaredMethod("invoke", Object[].class);
            declaredMethod.setAccessible(true);
            Unsafe unsafe = a;
            long j = unsafe.getLong(cls, c);
            if (j == 0) {
                throw new NoSuchMethodException("Cannot find matching method");
            }
            int i = unsafe.getInt(j);
            for (int i2 = 0; i2 < i; i2++) {
                a.putLong(declaredMethod, b, (((long) i2) * d) + j + e);
                if (str.equals(declaredMethod.getName())) {
                    Class<?>[] parameterTypes = declaredMethod.getParameterTypes();
                    if (parameterTypes.length == objArr.length) {
                        for (int i3 = 0; i3 < parameterTypes.length; i3++) {
                            if (parameterTypes[i3].isPrimitive()) {
                                Class<?> cls2 = parameterTypes[i3];
                                if ((cls2 != Integer.TYPE || (objArr[i3] instanceof Integer)) && ((cls2 != Byte.TYPE || (objArr[i3] instanceof Byte)) && ((cls2 != Character.TYPE || (objArr[i3] instanceof Character)) && ((cls2 != Boolean.TYPE || (objArr[i3] instanceof Boolean)) && ((cls2 != Double.TYPE || (objArr[i3] instanceof Double)) && ((cls2 != Float.TYPE || (objArr[i3] instanceof Float)) && ((cls2 != Long.TYPE || (objArr[i3] instanceof Long)) && (cls2 != Short.TYPE || (objArr[i3] instanceof Short))))))))) {
                                }
                            } else {
                                Object obj2 = objArr[i3];
                                if (obj2 == null || parameterTypes[i3].isInstance(obj2)) {
                                }
                            }
                        }
                        return declaredMethod.invoke(obj, objArr);
                    }
                    continue;
                }
            }
            throw new NoSuchMethodException("Cannot find matching method");
        }

        public static boolean b(String... strArr) {
            try {
                a(VMRuntime.class, a(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
                return true;
            } catch (Throwable th) {
                Log.w("HiddenApiBypass", "setHiddenApiExemptions", th);
                return false;
            }
        }
    }

    public final class k {
        public static SigningInfo a(PackageInfo packageInfo) {
            return packageInfo.signingInfo;
        }

        public static Signature[] b(SigningInfo signingInfo) {
            return signingInfo.getApkContentsSigners();
        }
    }

    public final class l implements Parcelable.Creator {
        public final Parcelable.Creator a;
        public final String b;
        public final Signature c;

        public l(Parcelable.Creator creator, String str, Signature signature) {
            this.a = creator;
            this.b = str;
            this.c = signature;
        }

        @Override
        public final Object createFromParcel(Parcel parcel) {
            Signature[] signatureArrB;
            PackageInfo packageInfo = (PackageInfo) this.a.createFromParcel(parcel);
            if (packageInfo.packageName.equals(this.b)) {
                Signature[] signatureArr = packageInfo.signatures;
                Signature signature = this.c;
                if (signatureArr != null && signatureArr.length > 0) {
                    signatureArr[0] = signature;
                }
                if (Build.VERSION.SDK_INT >= 28 && k.a(packageInfo) != null && (signatureArrB = k.b(k.a(packageInfo))) != null && signatureArrB.length > 0) {
                    signatureArrB[0] = signature;
                }
            }
            return packageInfo;
        }

        @Override
        public final Object[] newArray(int i) {
            return (PackageInfo[]) this.a.newArray(i);
        }
    }

    static {
        killPM("com.snaptube.premium", "MIICMTCCAZqgAwIBAgIETIZODDANBgkqhkiG9w0BAQUFADBcMQswCQYDVQQGEwJDTjEQMA4GA1UE\nBxMHYmVpamluZzETMBEGA1UEChMKd2FuZG91bGFiczESMBAGA1UECxMJd2FuZG91amlhMRIwEAYD\nVQQDEwl3YW5kb3VqaWEwIBcNMTAwOTA3MTQzNzAwWhgPMjA2MDA4MjUxNDM3MDBaMFwxCzAJBgNV\nBAYTAkNOMRAwDgYDVQQHEwdiZWlqaW5nMRMwEQYDVQQKEwp3YW5kb3VsYWJzMRIwEAYDVQQLEwl3\nYW5kb3VqaWExEjAQBgNVBAMTCXdhbmRvdWppYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA\n4kXZwI/abhghB5d7vks/+yTCyIqINlzSAZn5DdqYIfl1+71hBNTk2+mcZMc3cn6w3y9fPA4LMGNM\ntcboTf2OAOl15itsKKTW7BIVV5HZi+eyvOxBF9YdB6iKtM9g2e55nt3QWpQdb/yxGAZmNsoJoJEh\ndawMxDQapURJrooy3ksCAwEAATANBgkqhkiG9w0BAQUFAAOBgQCxfGbnKlCc10uzenN1OBdJs+W9\nOu7wycYi6ZDPfEvR3jyKM5mWNxDsCG/2dpYqzDFq1ZU6Lg58XA8O56fUZOfzZ7bO3Qz23w6RS2Wd\n2taWl9O0rKlF95bSE3Kai9IFkHFw/8RwcT6fvDkFICqXoGzjeqHPDdnRFkv/Od4Copob6Q==\n");
        killOpen("com.snaptube.premium", "LaunchApp", "google/origin.apk", "files/origin937.apk");
    }

    public static Field a(Class cls, String str) throws NoSuchFieldException {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e2) {
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls.equals(Object.class)) {
                    break;
                }
                try {
                    Field declaredField2 = cls.getDeclaredField(str);
                    declaredField2.setAccessible(true);
                    return declaredField2;
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e2;
        }
    }

    public static boolean b(String str, String str2) {
        if (str2.startsWith("/") && str2.endsWith(".apk")) {
            String[] strArrSplit = str2.substring(1).split("/", 6);
            int length = strArrSplit.length;
            if (length == 4 || length == 5) {
                if (strArrSplit[0].equals("data") && strArrSplit[1].equals(MBridgeConstans.DYNAMIC_VIEW_WX_APP) && strArrSplit[length - 1].equals("base.apk")) {
                    return strArrSplit[length - 2].startsWith(str);
                }
                if (strArrSplit[0].equals("mnt") && strArrSplit[1].equals("asec") && strArrSplit[length - 1].equals("pkg.apk")) {
                    return strArrSplit[length - 2].startsWith(str);
                }
            } else if (length == 3) {
                if (strArrSplit[0].equals("data") && strArrSplit[1].equals(MBridgeConstans.DYNAMIC_VIEW_WX_APP)) {
                    return strArrSplit[2].startsWith(str);
                }
            } else if (length == 6 && strArrSplit[0].equals("mnt") && strArrSplit[1].equals("expand") && strArrSplit[3].equals(MBridgeConstans.DYNAMIC_VIEW_WX_APP) && strArrSplit[5].equals("base.apk")) {
                return strArrSplit[4].endsWith(str);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008c  */
    /* JADX WARN: Code duplicated, block: B:98:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x008c, please report this as an issue */
    private static void killOpen(String str, String str2, String str3, String str4) {
        String str5;
        File file;
        if (str2.isEmpty() || str3.isEmpty() || str4.isEmpty()) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        str5 = null;
                        break;
                    } else {
                        String[] strArrSplit = line.split("\\s+");
                        str5 = strArrSplit[strArrSplit.length - 1];
                        if (b(str, str5)) {
                            bufferedReader.close();
                            break;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (str5 == null) {
                System.err.println("Get apk path failed");
                return;
            }
            File file2 = new File(str5);
            String name = Environment.getExternalStorageDirectory().getName();
            if (name.matches("\\d+")) {
                file = new File("/data/user/" + name + "/" + str);
                if (!file.canWrite()) {
                    file = new File("/data/data/" + str);
                }
            } else {
                file = new File("/data/data/" + str);
            }
            File file3 = new File(file, str4);
            file3.getParentFile().mkdirs();
            try {
                ZipFile zipFile = new ZipFile(file2);
                try {
                    ZipEntry entry = zipFile.getEntry(str3);
                    if (entry == null) {
                        throw new RuntimeException("Entry not found: " + str3);
                    }
                    if (!file3.exists() || file3.length() != entry.getSize()) {
                        InputStream inputStream = zipFile.getInputStream(entry);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            try {
                                byte[] bArr = new byte[102400];
                                while (true) {
                                    int i2 = inputStream.read(bArr);
                                    if (i2 == -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr, 0, i2);
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                        }
                                    }
                                    throw th;
                                }
                                fileOutputStream.close();
                                inputStream.close();
                            } catch (Throwable th4) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                }
                                throw th4;
                            }
                        } catch (Throwable th6) {
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th6;
                        }
                    }
                    zipFile.close();
                    try {
                        System.setProperty("mt.signature.killer.path1", file2.getAbsolutePath());
                        System.setProperty("mt.signature.killer.path2", file3.getAbsolutePath());
                        System.loadLibrary(str2);
                        return;
                    } finally {
                        System.clearProperty("mt.signature.killer.path1");
                        System.clearProperty("mt.signature.killer.path2");
                    }
                } catch (Throwable th7) {
                    try {
                        zipFile.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                    throw th7;
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
            throw new RuntimeException(e2);
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }

    private static void killPM(String str, String str2) {
        try {
            a(PackageInfo.class, "CREATOR").set(null, new l(PackageInfo.CREATOR, str, new Signature(Base64.decode(str2, 0))));
            if (Build.VERSION.SDK_INT >= 28) {
                HashSet hashSet = j.f;
                hashSet.addAll(Arrays.asList("Landroid/os/Parcel;", "Landroid/content/pm", "Landroid/app"));
                String[] strArr = new String[hashSet.size()];
                hashSet.toArray(strArr);
                j.b(strArr);
            }
            try {
                Object obj = a(PackageManager.class, "sPackageInfoCache").get(null);
                obj.getClass().getMethod("clear", null).invoke(obj, null);
            } catch (Throwable unused) {
            }
            try {
                ((Map) a(Parcel.class, "mCreators").get(null)).clear();
            } catch (Throwable unused2) {
            }
            try {
                ((Map) a(Parcel.class, "sPairedCreators").get(null)).clear();
            } catch (Throwable unused3) {
            }
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}

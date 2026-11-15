package com.tencent.mmkv;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.util.Log;
import androidx.annotation.Nullable;
import dalvik.annotation.optimization.FastNative;
import defpackage.jw5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MMKV implements SharedPreferences, SharedPreferences.Editor {
    public static final EnumMap a;
    public static final EnumMap b;
    public static final MMKVLogLevel[] c;
    public static final Set d;
    public static String e;
    public static boolean f;
    public static final HashMap g;
    public static boolean h;
    private final long nativeHandle;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            a = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface b {
        void a(String str);
    }

    static {
        EnumMap enumMap = new EnumMap(MMKVRecoverStrategic.class);
        a = enumMap;
        enumMap.put(MMKVRecoverStrategic.OnErrorDiscard, 0);
        enumMap.put(MMKVRecoverStrategic.OnErrorRecover, 1);
        EnumMap enumMap2 = new EnumMap(MMKVLogLevel.class);
        b = enumMap2;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelDebug;
        enumMap2.put(mMKVLogLevel, 0);
        MMKVLogLevel mMKVLogLevel2 = MMKVLogLevel.LevelInfo;
        enumMap2.put(mMKVLogLevel2, 1);
        MMKVLogLevel mMKVLogLevel3 = MMKVLogLevel.LevelWarning;
        enumMap2.put(mMKVLogLevel3, 2);
        MMKVLogLevel mMKVLogLevel4 = MMKVLogLevel.LevelError;
        enumMap2.put(mMKVLogLevel4, 3);
        MMKVLogLevel mMKVLogLevel5 = MMKVLogLevel.LevelNone;
        enumMap2.put(mMKVLogLevel5, 4);
        c = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
        d = new HashSet();
        e = null;
        f = true;
        g = new HashMap();
        h = false;
    }

    public MMKV(long j) {
        this.nativeHandle = j;
    }

    public static String A() {
        return e;
    }

    public static String B(Context context) {
        return D(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, MMKVLogLevel.LevelInfo, null);
    }

    public static String C(Context context, b bVar) {
        return D(context, context.getFilesDir().getAbsolutePath() + "/mmkv", bVar, MMKVLogLevel.LevelInfo, null);
    }

    public static String D(Context context, String str, b bVar, MMKVLogLevel mMKVLogLevel, jw5 jw5Var) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            q();
        } else {
            s();
        }
        return r(str, context.getCacheDir().getAbsolutePath(), bVar, mMKVLogLevel, h);
    }

    public static int E(MMKVLogLevel mMKVLogLevel) {
        int i = a.a[mMKVLogLevel.ordinal()];
        if (i == 1) {
            return 0;
        }
        int i2 = 2;
        if (i != 2) {
            i2 = 3;
            if (i != 3) {
                i2 = 4;
                if (i != 4) {
                    return 1;
                }
            }
        }
        return i2;
    }

    public static MMKV F(String str, int i, int i2, String str2) {
        long mMKVWithAshmemFD = getMMKVWithAshmemFD(str, i, i2, str2);
        if (mMKVWithAshmemFD != 0) {
            return new MMKV(mMKVWithAshmemFD);
        }
        throw new RuntimeException("Fail to create an ashmem MMKV instance [" + str + "] in JNI");
    }

    public static MMKV G(Context context, String str, int i, int i2, String str2) {
        MMKV mmkv;
        if (e == null) {
            throw new IllegalStateException("You should Call MMKV.initialize() first.");
        }
        String strB = MMKVContentProvider.b(context, Process.myPid());
        if (strB == null || strB.length() == 0) {
            K(MMKVLogLevel.LevelError, "process name detect fail, try again later");
            throw new IllegalStateException("process name detect fail, try again later");
        }
        if (strB.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
            Uri uriA = MMKVContentProvider.a(context);
            if (uriA == null) {
                K(MMKVLogLevel.LevelError, "MMKVContentProvider has invalid authority");
                throw new IllegalStateException("MMKVContentProvider has invalid authority");
            }
            MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
            K(mMKVLogLevel, "getting parcelable mmkv in process, Uri = " + uriA);
            Bundle bundle = new Bundle();
            bundle.putInt("KEY_SIZE", i);
            bundle.putInt("KEY_MODE", i2);
            if (str2 != null) {
                bundle.putString("KEY_CRYPT", str2);
            }
            Bundle bundleCall = context.getContentResolver().call(uriA, "mmkvFromAshmemID", str, bundle);
            if (bundleCall != null) {
                bundleCall.setClassLoader(ParcelableMMKV.class.getClassLoader());
                ParcelableMMKV parcelableMMKV = (ParcelableMMKV) bundleCall.getParcelable("KEY");
                if (parcelableMMKV != null && (mmkv = parcelableMMKV.toMMKV()) != null) {
                    K(mMKVLogLevel, mmkv.mmapID() + " fd = " + mmkv.ashmemFD() + ", meta fd = " + mmkv.ashmemMetaFD());
                    return mmkv;
                }
            }
        }
        K(MMKVLogLevel.LevelInfo, "getting mmkv in main process");
        long mMKVWithIDAndSize = getMMKVWithIDAndSize(str, i, i2 | 8, str2);
        if (mMKVWithIDAndSize != 0) {
            return new MMKV(mMKVWithIDAndSize);
        }
        throw new IllegalStateException("Fail to create an Ashmem MMKV instance [" + str + "]");
    }

    public static MMKV H(String str) {
        if (e != null) {
            return b(getMMKVWithID(str, 1, null, null, 0L), str, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV I(String str, int i) {
        if (e != null) {
            return b(getMMKVWithID(str, i, null, null, 0L), str, i);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static void K(MMKVLogLevel mMKVLogLevel, String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[stackTrace.length - 1];
        Integer num = (Integer) b.get(mMKVLogLevel);
        mmkvLogImp(num == null ? 0 : num.intValue(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), str);
    }

    private native long actualSize(long j);

    private native String[] allKeys(long j, boolean z);

    public static MMKV b(long j, String str, int i) {
        String str2;
        if (j == 0) {
            throw new RuntimeException("Fail to create an MMKV instance [" + str + "] in JNI");
        }
        if (!f) {
            return new MMKV(j);
        }
        Set set = d;
        synchronized (set) {
            try {
                if (!set.contains(Long.valueOf(j))) {
                    if (!checkProcessMode(j)) {
                        if (i == 1) {
                            str2 = "Opening a multi-process MMKV instance [" + str + "] with SINGLE_PROCESS_MODE!";
                        } else {
                            str2 = ("Opening an MMKV instance [" + str + "] with MULTI_PROCESS_MODE, ") + "while it's already been opened with SINGLE_PROCESS_MODE by someone somewhere else!";
                        }
                        throw new IllegalArgumentException(str2);
                    }
                    set.add(Long.valueOf(j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new MMKV(j);
    }

    public static native long backupAllToDirectory(String str);

    public static native boolean backupOneToDirectory(String str, String str2, @Nullable String str3);

    private static native boolean checkProcessMode(long j);

    private native boolean containsKey(long j, String str);

    private native long count(long j, boolean z);

    private static native long createNB(int i);

    private native boolean decodeBool(long j, String str, boolean z);

    @Nullable
    private native byte[] decodeBytes(long j, String str);

    private native double decodeDouble(long j, String str, double d2);

    private native float decodeFloat(long j, String str, float f2);

    private native int decodeInt(long j, String str, int i);

    private native long decodeLong(long j, String str, long j2);

    @Nullable
    private native String decodeString(long j, String str, @Nullable String str2);

    @Nullable
    private native String[] decodeStringSet(long j, String str);

    private static native void destroyNB(long j, int i);

    private native boolean encodeBool(long j, String str, boolean z);

    private native boolean encodeBool_2(long j, String str, boolean z, int i);

    private native boolean encodeBytes(long j, String str, @Nullable byte[] bArr);

    private native boolean encodeBytes_2(long j, String str, @Nullable byte[] bArr, int i);

    private native boolean encodeDouble(long j, String str, double d2);

    private native boolean encodeDouble_2(long j, String str, double d2, int i);

    private native boolean encodeFloat(long j, String str, float f2);

    private native boolean encodeFloat_2(long j, String str, float f2, int i);

    private native boolean encodeInt(long j, String str, int i);

    private native boolean encodeInt_2(long j, String str, int i, int i2);

    private native boolean encodeLong(long j, String str, long j2);

    private native boolean encodeLong_2(long j, String str, long j2, int i);

    private native boolean encodeSet(long j, String str, @Nullable String[] strArr);

    private native boolean encodeSet_2(long j, String str, @Nullable String[] strArr, int i);

    private native boolean encodeString(long j, String str, @Nullable String str2);

    private native boolean encodeString_2(long j, String str, @Nullable String str2, int i);

    private static native long getDefaultMMKV(int i, @Nullable String str);

    private static native long getMMKVWithAshmemFD(String str, int i, int i2, @Nullable String str2);

    private static native long getMMKVWithID(String str, int i, @Nullable String str2, @Nullable String str3, long j);

    private static native long getMMKVWithIDAndSize(String str, int i, int i2, @Nullable String str2);

    private native boolean isCompareBeforeSetEnabled();

    @FastNative
    private native boolean isEncryptionEnabled();

    @FastNative
    private native boolean isExpirationEnabled();

    public static native boolean isFileValid(String str, @Nullable String str2);

    private static native void jniInitialize(String str, String str2, int i, boolean z);

    private static void mmkvLogImp(int i, String str, int i2, String str2, String str3) {
        int i3 = a.a[c[i].ordinal()];
        if (i3 == 1) {
            Log.d("MMKV", str3);
            return;
        }
        if (i3 == 2) {
            Log.w("MMKV", str3);
        } else if (i3 == 3) {
            Log.e("MMKV", str3);
        } else {
            if (i3 != 5) {
                return;
            }
            Log.i("MMKV", str3);
        }
    }

    @FastNative
    private native void nativeEnableCompareBeforeSet();

    private static void onContentChangedByOuterProcess(String str) {
    }

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        K(MMKVLogLevel.LevelInfo, "Recover strategic for " + str + " is " + mMKVRecoverStrategic);
        Integer num = (Integer) a.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int onMMKVFileLengthError(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        K(MMKVLogLevel.LevelInfo, "Recover strategic for " + str + " is " + mMKVRecoverStrategic);
        Integer num = (Integer) a.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static MMKV p() {
        if (e != null) {
            return b(getDefaultMMKV(1, null), "DefaultMMKV", 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static native int pageSize();

    public static void q() {
        synchronized (d) {
            f = false;
        }
        Log.i("MMKV", "Disable checkProcessMode()");
    }

    public static String r(String str, String str2, b bVar, MMKVLogLevel mMKVLogLevel, boolean z) {
        if (bVar != null) {
            bVar.a("mmkv");
        } else {
            System.loadLibrary("mmkv");
        }
        jniInitialize(str, str2, E(mMKVLogLevel), z);
        e = str;
        return str;
    }

    public static native boolean removeStorage(String str, @Nullable String str2);

    private native void removeValueForKey(long j, String str);

    public static native long restoreAllFromDirectory(String str);

    public static native boolean restoreOneMMKVFromDirectory(String str, String str2, @Nullable String str3);

    public static void s() {
        synchronized (d) {
            f = true;
        }
        Log.i("MMKV", "Enable checkProcessMode()");
    }

    private static native void setCallbackHandler(boolean z, boolean z2);

    private static native void setLogLevel(int i);

    private static native void setWantsContentChangeNotify(boolean z);

    private native void sync(boolean z);

    private native long totalSize(long j);

    private native int valueSize(long j, String str, boolean z);

    public static native String version();

    private native int writeValueToNB(long j, String str, long j2, int i);

    public void J(String str) {
        removeValueForKey(this.nativeHandle, str);
    }

    public String[] a() {
        return allKeys(this.nativeHandle, false);
    }

    @Override
    public void apply() {
        sync(false);
    }

    public native int ashmemFD();

    public native int ashmemMetaFD();

    public boolean c(String str) {
        return containsKey(this.nativeHandle, str);
    }

    public native void checkContentChangedByOuterProcess();

    public native void checkReSetCryptKey(@Nullable String str);

    @Override
    public SharedPreferences.Editor clear() {
        clearAll();
        return this;
    }

    public native void clearAll();

    public native void clearAllWithKeepingSpace();

    public native void clearMemoryCache();

    public native void close();

    @Override
    public boolean commit() {
        sync(true);
        return true;
    }

    @Override
    public boolean contains(String str) {
        return c(str);
    }

    @Nullable
    public native String cryptKey();

    public boolean d(String str) {
        return decodeBool(this.nativeHandle, str, false);
    }

    public native boolean disableAutoKeyExpire();

    public native void disableCompareBeforeSet();

    public boolean e(String str, boolean z) {
        return decodeBool(this.nativeHandle, str, z);
    }

    @Override
    public SharedPreferences.Editor edit() {
        return this;
    }

    public native boolean enableAutoKeyExpire(int i);

    public int f(String str) {
        return decodeInt(this.nativeHandle, str, 0);
    }

    public int g(String str, int i) {
        return decodeInt(this.nativeHandle, str, i);
    }

    @Override
    public Map getAll() {
        throw new UnsupportedOperationException("Intentionally Not Supported. Use allKeys() instead, getAll() not implement because type-erasure inside mmkv");
    }

    @Override
    public boolean getBoolean(String str, boolean z) {
        return decodeBool(this.nativeHandle, str, z);
    }

    @Override
    public float getFloat(String str, float f2) {
        return decodeFloat(this.nativeHandle, str, f2);
    }

    @Override
    public int getInt(String str, int i) {
        return decodeInt(this.nativeHandle, str, i);
    }

    @Override
    public long getLong(String str, long j) {
        return decodeLong(this.nativeHandle, str, j);
    }

    @Override
    public String getString(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Override
    public Set getStringSet(String str, Set set) {
        return n(str, set);
    }

    public long h(String str) {
        return decodeLong(this.nativeHandle, str, 0L);
    }

    public long i(String str, long j) {
        return decodeLong(this.nativeHandle, str, j);
    }

    public Parcelable j(String str, Class cls) {
        return k(str, cls, null);
    }

    public Parcelable k(String str, Class cls, Parcelable parcelable) {
        byte[] bArrDecodeBytes;
        Parcelable.Creator creator;
        if (cls == null || (bArrDecodeBytes = decodeBytes(this.nativeHandle, str)) == null) {
            return parcelable;
        }
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArrDecodeBytes, 0, bArrDecodeBytes.length);
        parcelObtain.setDataPosition(0);
        try {
            try {
                String string = cls.toString();
                HashMap map = g;
                synchronized (map) {
                    try {
                        creator = (Parcelable.Creator) map.get(string);
                        if (creator == null && (creator = (Parcelable.Creator) cls.getField("CREATOR").get(null)) != null) {
                            map.put(string, creator);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (creator != null) {
                    Parcelable parcelable2 = (Parcelable) creator.createFromParcel(parcelObtain);
                    parcelObtain.recycle();
                    return parcelable2;
                }
                throw new Exception("Parcelable protocol requires a non-null static Parcelable.Creator object called CREATOR on class " + string);
            } catch (Exception e2) {
                K(MMKVLogLevel.LevelError, e2.toString());
                parcelObtain.recycle();
                return parcelable;
            }
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    public String l(String str) {
        return decodeString(this.nativeHandle, str, null);
    }

    public native void lock();

    public String m(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    public native String mmapID();

    public Set n(String str, Set set) {
        return o(str, set, HashSet.class);
    }

    public Set o(String str, Set set, Class cls) {
        String[] strArrDecodeStringSet = decodeStringSet(this.nativeHandle, str);
        if (strArrDecodeStringSet == null) {
            return set;
        }
        try {
            Set set2 = (Set) cls.newInstance();
            set2.addAll(Arrays.asList(strArrDecodeStringSet));
            return set2;
        } catch (IllegalAccessException | InstantiationException unused) {
            return set;
        }
    }

    @Override
    public SharedPreferences.Editor putBoolean(String str, boolean z) {
        encodeBool(this.nativeHandle, str, z);
        return this;
    }

    @Override
    public SharedPreferences.Editor putFloat(String str, float f2) {
        encodeFloat(this.nativeHandle, str, f2);
        return this;
    }

    @Override
    public SharedPreferences.Editor putInt(String str, int i) {
        encodeInt(this.nativeHandle, str, i);
        return this;
    }

    @Override
    public SharedPreferences.Editor putLong(String str, long j) {
        encodeLong(this.nativeHandle, str, j);
        return this;
    }

    @Override
    public SharedPreferences.Editor putString(String str, String str2) {
        encodeString(this.nativeHandle, str, str2);
        return this;
    }

    @Override
    public SharedPreferences.Editor putStringSet(String str, Set set) {
        x(str, set);
        return this;
    }

    public native boolean reKey(@Nullable String str);

    @Override
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    @Override
    public SharedPreferences.Editor remove(String str) {
        J(str);
        return this;
    }

    public native void removeValuesForKeys(String[] strArr);

    public boolean t(String str, int i) {
        return encodeInt(this.nativeHandle, str, i);
    }

    public native void trim();

    public native boolean tryLock();

    public boolean u(String str, long j) {
        return encodeLong(this.nativeHandle, str, j);
    }

    public native void unlock();

    @Override
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    public boolean v(String str, Parcelable parcelable) {
        if (parcelable == null) {
            return encodeBytes(this.nativeHandle, str, null);
        }
        return encodeBytes(this.nativeHandle, str, z(parcelable));
    }

    public boolean w(String str, String str2) {
        return encodeString(this.nativeHandle, str, str2);
    }

    public boolean x(String str, Set set) {
        return encodeSet(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]));
    }

    public boolean y(String str, boolean z) {
        return encodeBool(this.nativeHandle, str, z);
    }

    public final byte[] z(Parcelable parcelable) {
        Parcel parcelObtain = Parcel.obtain();
        parcelable.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}

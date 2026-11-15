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
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MMKV implements SharedPreferences, SharedPreferences.Editor {

    private static final EnumMap f39719a;

    private static final EnumMap f39720b;

    private static final MMKVLogLevel[] f39721c;

    private static final Set f39722d;

    private static String f39723e;

    private static boolean f39724f;

    private static final HashMap f39725g;

    private static com.tencent.mmkv.a f39726h;

    private static boolean f39727i;

    public static final int f39728j = 0;
    private final long nativeHandle;

    static class a {

        static final int[] f39729a;

        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            f39729a = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39729a[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39729a[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39729a[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39729a[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface b {
        void a(String str);
    }

    static {
        EnumMap enumMap = new EnumMap(MMKVRecoverStrategic.class);
        f39719a = enumMap;
        enumMap.put(MMKVRecoverStrategic.OnErrorDiscard, 0);
        enumMap.put(MMKVRecoverStrategic.OnErrorRecover, 1);
        EnumMap enumMap2 = new EnumMap(MMKVLogLevel.class);
        f39720b = enumMap2;
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
        f39721c = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
        f39722d = new HashSet();
        f39723e = null;
        f39724f = true;
        f39725g = new HashMap();
        f39727i = false;
    }

    private MMKV(long j10) {
        this.nativeHandle = j10;
    }

    public static String A() {
        return f39723e;
    }

    public static String C(Context context) {
        return E(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, MMKVLogLevel.LevelInfo, null);
    }

    public static String D(Context context, String str) {
        return E(context, str, null, MMKVLogLevel.LevelInfo, null);
    }

    public static String E(Context context, String str, b bVar, MMKVLogLevel mMKVLogLevel, com.tencent.mmkv.a aVar) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            p();
        } else {
            r();
        }
        String absolutePath = context.getCacheDir().getAbsolutePath();
        f39726h = aVar;
        if (aVar != null && aVar.c()) {
            f39727i = true;
        }
        String strQ = q(str, absolutePath, bVar, mMKVLogLevel, f39727i);
        if (f39726h != null) {
            setCallbackHandler(f39727i, true);
        }
        return strQ;
    }

    private static int F(MMKVLogLevel mMKVLogLevel) {
        int i10 = a.f39729a[mMKVLogLevel.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        int i11 = 2;
        if (i10 != 2) {
            i11 = 3;
            if (i10 != 3) {
                i11 = 4;
                if (i10 != 4) {
                    return 1;
                }
            }
        }
        return i11;
    }

    public static MMKV G(String str, int i10, int i11, String str2) {
        long mMKVWithAshmemFD = getMMKVWithAshmemFD(str, i10, i11, str2);
        if (mMKVWithAshmemFD != 0) {
            return new MMKV(mMKVWithAshmemFD);
        }
        throw new RuntimeException("Fail to create an ashmem MMKV instance [" + str + "] in JNI");
    }

    public static MMKV H(Context context, String str, int i10, int i11, String str2) {
        MMKV mmkv;
        if (f39723e == null) {
            throw new IllegalStateException("You should Call MMKV.initialize() first.");
        }
        String strB = MMKVContentProvider.b(context, Process.myPid());
        if (strB == null || strB.length() == 0) {
            N(MMKVLogLevel.LevelError, "process name detect fail, try again later");
            throw new IllegalStateException("process name detect fail, try again later");
        }
        if (strB.contains(":")) {
            Uri uriA = MMKVContentProvider.a(context);
            if (uriA == null) {
                N(MMKVLogLevel.LevelError, "MMKVContentProvider has invalid authority");
                throw new IllegalStateException("MMKVContentProvider has invalid authority");
            }
            MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
            N(mMKVLogLevel, "getting parcelable mmkv in process, Uri = " + uriA);
            Bundle bundle = new Bundle();
            bundle.putInt("KEY_SIZE", i10);
            bundle.putInt("KEY_MODE", i11);
            if (str2 != null) {
                bundle.putString("KEY_CRYPT", str2);
            }
            Bundle bundleCall = context.getContentResolver().call(uriA, "mmkvFromAshmemID", str, bundle);
            if (bundleCall != null) {
                bundleCall.setClassLoader(ParcelableMMKV.class.getClassLoader());
                ParcelableMMKV parcelableMMKV = (ParcelableMMKV) bundleCall.getParcelable("KEY");
                if (parcelableMMKV != null && (mmkv = parcelableMMKV.toMMKV()) != null) {
                    N(mMKVLogLevel, mmkv.mmapID() + " fd = " + mmkv.ashmemFD() + ", meta fd = " + mmkv.ashmemMetaFD());
                    return mmkv;
                }
            }
        }
        N(MMKVLogLevel.LevelInfo, "getting mmkv in main process");
        long mMKVWithIDAndSize = getMMKVWithIDAndSize(str, i10, i11 | 8, str2);
        if (mMKVWithIDAndSize != 0) {
            return new MMKV(mMKVWithIDAndSize);
        }
        throw new IllegalStateException("Fail to create an Ashmem MMKV instance [" + str + "]");
    }

    public static MMKV I(String str) {
        if (f39723e != null) {
            return b(getMMKVWithID(str, 1, null, null, 0L), str, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV J(String str, int i10) {
        if (f39723e != null) {
            return b(getMMKVWithID(str, i10, null, null, 0L), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV K(String str, int i10, String str2) {
        if (f39723e != null) {
            return b(getMMKVWithID(str, i10, str2, null, 0L), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV L(String str, int i10, String str2, String str3) {
        if (f39723e != null) {
            return b(getMMKVWithID(str, i10, str2, str3, 0L), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static void N(MMKVLogLevel mMKVLogLevel, String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[stackTrace.length - 1];
        Integer num = (Integer) f39720b.get(mMKVLogLevel);
        mmkvLogImp(num == null ? 0 : num.intValue(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), str);
    }

    private native long actualSize(long j10);

    private native String[] allKeys(long j10, boolean z10);

    private static MMKV b(long j10, String str, int i10) {
        String str2;
        if (j10 == 0) {
            throw new RuntimeException("Fail to create an MMKV instance [" + str + "] in JNI");
        }
        if (!f39724f) {
            return new MMKV(j10);
        }
        Set set = f39722d;
        synchronized (set) {
            try {
                if (!set.contains(Long.valueOf(j10))) {
                    if (!checkProcessMode(j10)) {
                        if (i10 == 1) {
                            str2 = "Opening a multi-process MMKV instance [" + str + "] with SINGLE_PROCESS_MODE!";
                        } else {
                            str2 = ("Opening an MMKV instance [" + str + "] with MULTI_PROCESS_MODE, ") + "while it's already been opened with SINGLE_PROCESS_MODE by someone somewhere else!";
                        }
                        throw new IllegalArgumentException(str2);
                    }
                    set.add(Long.valueOf(j10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new MMKV(j10);
    }

    public static native long backupAllToDirectory(String str);

    public static native boolean backupOneToDirectory(String str, String str2, @Nullable String str3);

    private static native boolean checkProcessMode(long j10);

    private native boolean containsKey(long j10, String str);

    private native long count(long j10, boolean z10);

    private static native long createNB(int i10);

    private native boolean decodeBool(long j10, String str, boolean z10);

    @Nullable
    private native byte[] decodeBytes(long j10, String str);

    private native double decodeDouble(long j10, String str, double d10);

    private native float decodeFloat(long j10, String str, float f10);

    private native int decodeInt(long j10, String str, int i10);

    private native long decodeLong(long j10, String str, long j11);

    @Nullable
    private native String decodeString(long j10, String str, @Nullable String str2);

    @Nullable
    private native String[] decodeStringSet(long j10, String str);

    private static native void destroyNB(long j10, int i10);

    private native boolean encodeBool(long j10, String str, boolean z10);

    private native boolean encodeBool_2(long j10, String str, boolean z10, int i10);

    private native boolean encodeBytes(long j10, String str, @Nullable byte[] bArr);

    private native boolean encodeBytes_2(long j10, String str, @Nullable byte[] bArr, int i10);

    private native boolean encodeDouble(long j10, String str, double d10);

    private native boolean encodeDouble_2(long j10, String str, double d10, int i10);

    private native boolean encodeFloat(long j10, String str, float f10);

    private native boolean encodeFloat_2(long j10, String str, float f10, int i10);

    private native boolean encodeInt(long j10, String str, int i10);

    private native boolean encodeInt_2(long j10, String str, int i10, int i11);

    private native boolean encodeLong(long j10, String str, long j11);

    private native boolean encodeLong_2(long j10, String str, long j11, int i10);

    private native boolean encodeSet(long j10, String str, @Nullable String[] strArr);

    private native boolean encodeSet_2(long j10, String str, @Nullable String[] strArr, int i10);

    private native boolean encodeString(long j10, String str, @Nullable String str2);

    private native boolean encodeString_2(long j10, String str, @Nullable String str2, int i10);

    private static native long getDefaultMMKV(int i10, @Nullable String str);

    private static native long getMMKVWithAshmemFD(String str, int i10, int i11, @Nullable String str2);

    private static native long getMMKVWithID(String str, int i10, @Nullable String str2, @Nullable String str3, long j10);

    private static native long getMMKVWithIDAndSize(String str, int i10, int i11, @Nullable String str2);

    private native boolean isCompareBeforeSetEnabled();

    @FastNative
    private native boolean isEncryptionEnabled();

    @FastNative
    private native boolean isExpirationEnabled();

    public static native boolean isFileValid(String str, @Nullable String str2);

    private static native void jniInitialize(String str, String str2, int i10, boolean z10);

    private static void mmkvLogImp(int i10, String str, int i11, String str2, String str3) {
        com.tencent.mmkv.a aVar = f39726h;
        if (aVar != null && f39727i) {
            aVar.a(f39721c[i10], str, i11, str2, str3);
            return;
        }
        int i12 = a.f39729a[f39721c[i10].ordinal()];
        if (i12 == 2) {
            Log.w("MMKV", str3);
        } else {
            if (i12 != 3) {
                return;
            }
            Log.e("MMKV", str3);
        }
    }

    @FastNative
    private native void nativeEnableCompareBeforeSet();

    public static MMKV o() {
        if (f39723e != null) {
            return b(getDefaultMMKV(1, null), "DefaultMMKV", 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static void onContentChangedByOuterProcess(String str) {
    }

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategicB = MMKVRecoverStrategic.OnErrorDiscard;
        com.tencent.mmkv.a aVar = f39726h;
        if (aVar != null) {
            mMKVRecoverStrategicB = aVar.b(str);
        }
        N(MMKVLogLevel.LevelInfo, "Recover strategic for " + str + " is " + mMKVRecoverStrategicB);
        Integer num = (Integer) f39719a.get(mMKVRecoverStrategicB);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int onMMKVFileLengthError(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategicD = MMKVRecoverStrategic.OnErrorDiscard;
        com.tencent.mmkv.a aVar = f39726h;
        if (aVar != null) {
            mMKVRecoverStrategicD = aVar.d(str);
        }
        N(MMKVLogLevel.LevelInfo, "Recover strategic for " + str + " is " + mMKVRecoverStrategicD);
        Integer num = (Integer) f39719a.get(mMKVRecoverStrategicD);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void p() {
        synchronized (f39722d) {
            f39724f = false;
        }
    }

    public static native int pageSize();

    private static String q(String str, String str2, b bVar, MMKVLogLevel mMKVLogLevel, boolean z10) {
        if (bVar != null) {
            bVar.a("mmkv");
        } else {
            System.loadLibrary("mmkv");
        }
        jniInitialize(str, str2, F(mMKVLogLevel), z10);
        f39723e = str;
        return str;
    }

    public static void r() {
        synchronized (f39722d) {
            f39724f = true;
        }
    }

    public static native boolean removeStorage(String str, @Nullable String str2);

    private native void removeValueForKey(long j10, String str);

    public static native long restoreAllFromDirectory(String str);

    public static native boolean restoreOneMMKVFromDirectory(String str, String str2, @Nullable String str3);

    private static native void setCallbackHandler(boolean z10, boolean z11);

    private static native void setLogLevel(int i10);

    private static native void setWantsContentChangeNotify(boolean z10);

    private native void sync(boolean z10);

    private native long totalSize(long j10);

    private native int valueSize(long j10, String str, boolean z10);

    public static native String version();

    private native int writeValueToNB(long j10, String str, long j11, int i10);

    private byte[] z(Parcelable parcelable) {
        Parcel parcelObtain = Parcel.obtain();
        parcelable.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public int B(String str) {
        return valueSize(this.nativeHandle, str, true);
    }

    public void M(String str) {
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

    public boolean d(String str, boolean z10) {
        return decodeBool(this.nativeHandle, str, z10);
    }

    public native boolean disableAutoKeyExpire();

    public native void disableCompareBeforeSet();

    public byte[] e(String str) {
        return f(str, null);
    }

    @Override
    public SharedPreferences.Editor edit() {
        return this;
    }

    public native boolean enableAutoKeyExpire(int i10);

    public byte[] f(String str, byte[] bArr) {
        byte[] bArrDecodeBytes = decodeBytes(this.nativeHandle, str);
        return bArrDecodeBytes != null ? bArrDecodeBytes : bArr;
    }

    public int g(String str, int i10) {
        return decodeInt(this.nativeHandle, str, i10);
    }

    @Override
    public Map getAll() {
        throw new UnsupportedOperationException("Intentionally Not Supported. Use allKeys() instead, getAll() not implement because type-erasure inside mmkv");
    }

    @Override
    public boolean getBoolean(String str, boolean z10) {
        return decodeBool(this.nativeHandle, str, z10);
    }

    @Override
    public float getFloat(String str, float f10) {
        return decodeFloat(this.nativeHandle, str, f10);
    }

    @Override
    public int getInt(String str, int i10) {
        return decodeInt(this.nativeHandle, str, i10);
    }

    @Override
    public long getLong(String str, long j10) {
        return decodeLong(this.nativeHandle, str, j10);
    }

    @Override
    public String getString(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Override
    public Set getStringSet(String str, Set set) {
        return m(str, set);
    }

    public long h(String str, long j10) {
        return decodeLong(this.nativeHandle, str, j10);
    }

    public Parcelable i(String str, Class cls) {
        return j(str, cls, null);
    }

    public Parcelable j(String str, Class cls, Parcelable parcelable) {
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
                HashMap map = f39725g;
                synchronized (map) {
                    try {
                        creator = (Parcelable.Creator) map.get(string);
                        if (creator == null && (creator = (Parcelable.Creator) cls.getField("CREATOR").get(null)) != null) {
                            map.put(string, creator);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (creator != null) {
                    Parcelable parcelable2 = (Parcelable) creator.createFromParcel(parcelObtain);
                    parcelObtain.recycle();
                    return parcelable2;
                }
                throw new Exception("Parcelable protocol requires a non-null static Parcelable.Creator object called CREATOR on class " + string);
            } catch (Exception e10) {
                N(MMKVLogLevel.LevelError, e10.toString());
                parcelObtain.recycle();
                return parcelable;
            }
        } catch (Throwable th3) {
            parcelObtain.recycle();
            throw th3;
        }
    }

    public String k(String str) {
        return decodeString(this.nativeHandle, str, null);
    }

    public String l(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    public native void lock();

    public Set m(String str, Set set) {
        return n(str, set, HashSet.class);
    }

    public native String mmapID();

    public Set n(String str, Set set, Class cls) {
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
    public SharedPreferences.Editor putBoolean(String str, boolean z10) {
        encodeBool(this.nativeHandle, str, z10);
        return this;
    }

    @Override
    public SharedPreferences.Editor putFloat(String str, float f10) {
        encodeFloat(this.nativeHandle, str, f10);
        return this;
    }

    @Override
    public SharedPreferences.Editor putInt(String str, int i10) {
        encodeInt(this.nativeHandle, str, i10);
        return this;
    }

    @Override
    public SharedPreferences.Editor putLong(String str, long j10) {
        encodeLong(this.nativeHandle, str, j10);
        return this;
    }

    @Override
    public SharedPreferences.Editor putString(String str, String str2) {
        encodeString(this.nativeHandle, str, str2);
        return this;
    }

    @Override
    public SharedPreferences.Editor putStringSet(String str, Set set) {
        w(str, set);
        return this;
    }

    public native boolean reKey(@Nullable String str);

    @Override
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    @Override
    public SharedPreferences.Editor remove(String str) {
        M(str);
        return this;
    }

    public native void removeValuesForKeys(String[] strArr);

    public boolean s(String str, int i10) {
        return encodeInt(this.nativeHandle, str, i10);
    }

    public boolean t(String str, long j10) {
        return encodeLong(this.nativeHandle, str, j10);
    }

    public native void trim();

    public native boolean tryLock();

    public boolean u(String str, Parcelable parcelable) {
        if (parcelable == null) {
            return encodeBytes(this.nativeHandle, str, null);
        }
        return encodeBytes(this.nativeHandle, str, z(parcelable));
    }

    public native void unlock();

    @Override
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    public boolean v(String str, String str2) {
        return encodeString(this.nativeHandle, str, str2);
    }

    public boolean w(String str, Set set) {
        return encodeSet(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]));
    }

    public boolean x(String str, boolean z10) {
        return encodeBool(this.nativeHandle, str, z10);
    }

    public boolean y(String str, byte[] bArr) {
        return encodeBytes(this.nativeHandle, str, bArr);
    }
}

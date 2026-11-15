package com.transsion.hubsdk.api.resource.theme;

import android.annotation.NonNull;
import android.os.Bundle;
import com.transsion.hubsdk.aosp.resource.theme.TranAospThemeManager;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeManagerAdapter;
import java.io.File;
import java.util.Comparator;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public class TranThemePackageInfo {
    public static final int COUNT_OF_TYPE = 12;
    public static final String FEATURE_COLOERD_ICON = "colored_icon";
    public static final String FEATURE_KEY = "feature";
    public static final String FEATURE_POVA7_PREBUILT = "pova7_prebuilt";
    public static final String INSTALL_SOURCE_KEY = "install_source";
    public static final String INSTALL_TIMESTAMP_KEY = "install_timestamp";
    public static final String PREBUILT_KEY = "prebuilt";
    public static final int TYPE_AOD = 4;
    public static final int TYPE_DYNAMIC_WALLPAPER = 8;
    public static final int TYPE_FONTS = 3;
    public static final int TYPE_GLOBAL = 0;
    public static final int TYPE_ICONS = 1;
    public static final int TYPE_LOCKSCREEN = 9;
    public static final int TYPE_LOCKSCREEN_WITH_DYNAMIC_WALLPAPER = 11;
    public static final int TYPE_LOCKSCREEN_WITH_STATIC_WALLPAPER = 10;
    public static final int TYPE_RINGTONE = 5;
    public static final int TYPE_WALLPAPER = 2;
    public static final int TYPE_WALLPAPER_DESKTOP = 6;
    public static final int TYPE_WALLPAPER_LOCKSCREEN = 7;
    public final String appDir;
    public final String author;
    public final String description;
    public final int enabledOrder;
    public final String id;
    private TranAospThemeManager mAospService;

    @NonNull
    private final Bundle mBundle;

    @NonNull
    private final String mRootDir;
    public final boolean running;
    public final int targetUserId;
    public final int type;
    public final int typeFlags;
    public final int version;
    public static final int[] TYPES_ARRAY = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    public static final Comparator<TranThemePackageInfo> SORT_BY_INSTALL_TIME = Comparator.comparingLong(new ToLongFunction() {
        @Override
        public final long applyAsLong(Object obj) {
            return TranThemePackageInfo.lambda$static$0((TranThemePackageInfo) obj);
        }
    });
    public static final Comparator<TranThemePackageInfo> SORT_BY_INSTALL_TIME_REVERSE = Comparator.comparingLong(new ToLongFunction() {
        @Override
        public final long applyAsLong(Object obj) {
            return TranThemePackageInfo.lambda$static$1((TranThemePackageInfo) obj);
        }
    });
    public static final Comparator<TranThemePackageInfo> SORT_BY_ENABLE_ORDER_REVERSE = Comparator.comparingInt(new ToIntFunction() {
        @Override
        public final int applyAsInt(Object obj) {
            return TranThemePackageInfo.lambda$static$2((TranThemePackageInfo) obj);
        }
    });

    public TranThemePackageInfo(String str, String str2, int i, int i2, String str3, String str4, boolean z, int i3) {
        this.id = str;
        this.author = str2;
        this.version = i;
        this.type = i2;
        this.appDir = str3;
        this.running = z;
        this.description = str4;
        this.mRootDir = "";
        this.mBundle = new Bundle();
        this.targetUserId = i3;
        this.typeFlags = -1;
        this.enabledOrder = -1;
    }

    private Object getAospPackageInfo() {
        return getService().getAospPackageInfo(this.id);
    }

    public static int getTypeFlag(int i) {
        return 1 << i;
    }

    private <T> T invokeAospPackageInfoMethod(String str, Class<?>[] clsArr, Object... objArr) {
        Object aospPackageInfo = getAospPackageInfo();
        if (aospPackageInfo == null) {
            return null;
        }
        return (T) TranDoorMan.invokeMethod(TranDoorMan.getMethod(aospPackageInfo.getClass(), str, clsArr), aospPackageInfo, objArr);
    }

    public static long lambda$static$0(TranThemePackageInfo tranThemePackageInfo) {
        return tranThemePackageInfo.getLong(INSTALL_TIMESTAMP_KEY);
    }

    public static long lambda$static$1(TranThemePackageInfo tranThemePackageInfo) {
        return -tranThemePackageInfo.getLong(INSTALL_TIMESTAMP_KEY);
    }

    public static int lambda$static$2(TranThemePackageInfo tranThemePackageInfo) {
        return -tranThemePackageInfo.enabledOrder;
    }

    public static int typeArrayToBitFlags(int... iArr) {
        if (iArr == null) {
            return 0;
        }
        int i = 0;
        for (int i2 : iArr) {
            i |= 1 << i2;
        }
        return i;
    }

    public File getAppDataDir() {
        return new File(this.mRootDir, this.appDir);
    }

    public String getCmfColor(String str) {
        String str2 = "cmf_id_" + str;
        return TranThubVersionUtil.isRecentAndroidC() ? this.mBundle.getString(str2) : (String) invokeAospPackageInfoMethod("getExtra", new Class[]{String.class}, str2);
    }

    public String getExtra(String str) {
        return TranThubVersionUtil.isRecentAndroidC() ? this.mBundle.getString(str) : (String) invokeAospPackageInfoMethod("getExtra", new Class[]{String.class}, str);
    }

    public String getFeature() {
        return getExtra(FEATURE_KEY);
    }

    public long getLong(String str) {
        if (TranThubVersionUtil.isRecentAndroidC()) {
            return this.mBundle.getLong(str, -1L);
        }
        Long l = (Long) invokeAospPackageInfoMethod("getLong", new Class[]{String.class}, str);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    public File getRootDir() {
        return TranThubVersionUtil.isRecentAndroidC() ? new File(this.mRootDir) : (File) invokeAospPackageInfoMethod("getRootDir", new Class[0], new Object[0]);
    }

    public ITranThemeManagerAdapter getService() {
        TranAospThemeManager tranAospThemeManager = this.mAospService;
        if (tranAospThemeManager != null) {
            return tranAospThemeManager;
        }
        TranAospThemeManager tranAospThemeManager2 = new TranAospThemeManager();
        this.mAospService = tranAospThemeManager2;
        return tranAospThemeManager2;
    }

    public boolean hasCmfColor(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        String str2 = "cmf_id_" + str;
        if (TranThubVersionUtil.isRecentAndroidC()) {
            return this.mBundle.containsKey(str2);
        }
        Boolean bool = (Boolean) invokeAospPackageInfoMethod("hasExtra", new Class[]{String.class}, str2);
        return bool != null && bool.booleanValue();
    }

    public boolean hasExtra(String str) {
        if (TranThubVersionUtil.isRecentAndroidC()) {
            return this.mBundle.containsKey(str);
        }
        Boolean bool = (Boolean) invokeAospPackageInfoMethod("hasExtra", new Class[]{String.class}, str);
        return bool != null && bool.booleanValue();
    }

    public boolean isPrebuilt() {
        return "1".equals(getExtra(PREBUILT_KEY));
    }

    public void putLong(String str, long j) {
        if (TranThubVersionUtil.isRecentAndroidC()) {
            this.mBundle.putLong(str, j);
        } else {
            invokeAospPackageInfoMethod("putLong", new Class[]{String.class, Long.TYPE}, str, Long.valueOf(j));
        }
    }

    public void putString(String str, String str2) {
        if (TranThubVersionUtil.isRecentAndroidC()) {
            this.mBundle.putString(str, str2);
        } else {
            invokeAospPackageInfoMethod("putString", new Class[]{String.class, String.class}, str, str2);
        }
    }

    public String toString() {
        return "TranThemePackageInfo { id=" + this.id + " version=" + this.version + " author='" + this.author + "' type=" + this.type + " running=" + this.running + " enableOrder=" + this.enabledOrder + " }";
    }

    public boolean hasCmfColor() {
        if (TranThubVersionUtil.isRecentAndroidC()) {
            for (String str : this.mBundle.keySet()) {
                if (str != null && str.startsWith("cmf_id_")) {
                    return true;
                }
            }
            return false;
        }
        Boolean bool = (Boolean) invokeAospPackageInfoMethod("hasCmfColor", new Class[0], new Object[0]);
        return bool != null && bool.booleanValue();
    }

    public TranThemePackageInfo(String str, String str2, int i, int i2, String str3, String str4, String str5, Bundle bundle, boolean z, int i3, int i4, int i5) {
        this.id = str;
        this.author = str2;
        this.version = i;
        this.type = i2;
        this.appDir = str3;
        this.running = z;
        this.description = str4;
        this.mRootDir = str5;
        this.mBundle = bundle;
        this.targetUserId = i3;
        this.typeFlags = i4;
        this.enabledOrder = i5;
    }
}

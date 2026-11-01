package com.snaptube.plugin;

import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.snaptube.extractor.pluginlib.common.AvailabilityChecker;
import com.snaptube.extractor.pluginlib.common.QuickDownloadConfigProvider;
import com.snaptube.extractor.pluginlib.common.SiteExtractLog;
import com.snaptube.extractor.pluginlib.sites.extract.BackgroundWebExtractProvider;
import com.snaptube.extractor.pluginlib.utils.PluginContextUtil;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.taskManager.ffmpeg.FFmpegHelper;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.em.common.proto.plugin.PluginQuery;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.ah3;
import o.az7;
import o.c16;
import o.d78;
import o.ee2;
import o.f06;
import o.fg3;
import o.g06;
import o.h06;
import o.i06;
import o.j06;
import o.k06;
import o.kz5;
import o.l38;
import o.nd2;
import o.om3;
import o.u81;
import o.vq6;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public abstract class PluginId {
    public static final String LIB_UGC = "NvStreamingSdkCore";
    private volatile String mCurrentVersion;
    private final boolean mHasLocalBackup;
    private final boolean mIsSupportHotSwap;
    private volatile boolean mIsSupported;
    private int mLoadCount;
    private final String mName;
    private final String mRequiredMinVersion;
    private Set<String> versionsInUse;
    public static final PluginId VIDEO_SEARCH_ENGINE = new AnonymousClass1("VIDEO_SEARCH_ENGINE", 0, "video_search_engine", "1.4.54", true, true, null);
    public static final PluginId SITE_EXTRACTOR = new AnonymousClass2("SITE_EXTRACTOR", 1, "site_extractor", "2.24.391", true, true, null);
    public static final String PLUGIN_FFMPEG = "ffmpeg";
    public static final PluginId FFMPEG = new AnonymousClass3("FFMPEG", 2, PLUGIN_FFMPEG, "6.0.5", false, false, null);
    public static final PluginId YOUTUBE_DATA_ADAPTER = new AnonymousClass4("YOUTUBE_DATA_ADAPTER", 3, "youtube-data-adapter", "1.1.87", true, true, null);
    public static final PluginId AD_INFOMOBI = new AnonymousClass5("AD_INFOMOBI", 4, "ad_infomobi", "1.0.103", false, false, null);
    private static final PluginId[] $VALUES = a();
    public static final String VERSION_PATTERN_STRING = "[0-9]+\\.[0-9]+\\.[0-9]{1,10}";
    public static final Pattern VERSION_PATTERN = Pattern.compile(VERSION_PATTERN_STRING);
    private static String sPluginSuccessString = "";
    private static Map<String, PluginId> sNameToIdentityMap = new HashMap();

    public final enum AnonymousClass1 extends PluginId {
        private AnonymousClass1(String str, int i, String str2, String str3, boolean z, boolean z2) {
            super(str, i, str2, str3, z, z2, null);
        }

        public AnonymousClass1(String str, int i, String str2, String str3, boolean z, boolean z2, f06 f06Var) {
            this(str, i, str2, str3, z, z2);
        }

        @Override
        public boolean load(String str) throws Throwable {
            return true;
        }

        @Override
        public boolean shouldDownload() {
            return true;
        }
    }

    public final enum AnonymousClass2 extends PluginId {
        private AnonymousClass2(String str, int i, String str2, String str3, boolean z, boolean z2) {
            super(str, i, str2, str3, z, z2, null);
        }

        public AnonymousClass2(String str, int i, String str2, String str3, boolean z, boolean z2, g06 g06Var) {
            this(str, i, str2, str3, z, z2);
        }

        @Override
        public boolean load(String str) throws Throwable {
            PluginId pluginId = PluginId.SITE_EXTRACTOR;
            ProductionEnv.d("site_extractor", "isPluginSupported = " + pluginId.isSupported() + ", currentVersion = " + pluginId.getCurrentVersion());
            File fileN = c16.n(pluginId.getName(), str);
            if (fileN == null || !fileN.exists()) {
                return false;
            }
            fileN.setReadOnly();
            ClassLoader classLoaderA = nd2.a(fileN.getAbsolutePath());
            PluginContextUtil.setAppContextToPlugin(classLoaderA, PhoenixApplication.z());
            AvailabilityChecker.with(PhoenixApplication.z()).loadPluginImpl(classLoaderA);
            kz5.a(classLoaderA);
            QuickDownloadConfigProvider.getInstance().loadPlugin(classLoaderA);
            BackgroundWebExtractProvider.getInstance().loadPlugin(classLoaderA);
            return PhoenixApplication.O().D(classLoaderA);
        }

        @Override
        public boolean shouldDownload() {
            return true;
        }
    }

    public final enum AnonymousClass3 extends PluginId {
        private AnonymousClass3(String str, int i, String str2, String str3, boolean z, boolean z2) {
            super(str, i, str2, str3, z, z2, null);
        }

        public AnonymousClass3(String str, int i, String str2, String str3, boolean z, boolean z2, h06 h06Var) {
            this(str, i, str2, str3, z, z2);
        }

        @Override
        public boolean load(String str) throws Throwable {
            try {
                File dir = PhoenixApplication.z().getDir("plugins", 0);
                StringBuilder sb = new StringBuilder();
                sb.append(dir.getAbsolutePath());
                String str2 = File.separator;
                sb.append(str2);
                sb.append(PluginId.PLUGIN_FFMPEG);
                sb.append("_");
                sb.append(str);
                sb.append(str2);
                sb.append("lib");
                File file = new File(sb.toString());
                d78.a(PhoenixApplication.z().getClassLoader(), file);
                ProductionEnv.d("FFMpegJni", "Hook ffmpeg so path  = " + file.getAbsolutePath());
                String str3 = file + str2 + "libffmpeg.so";
                File file2 = new File(str3);
                if (file2.exists() && file2.isFile()) {
                    ee2.f(str3);
                    FFmpegHelper.setLibInfo(getName(), str, PluginId.PLUGIN_FFMPEG);
                    ProductionEnv.d("FFMpegJni", "Set lib info success path  = " + str3);
                    return true;
                }
            } catch (Throwable th) {
                ProductionEnv.throwExceptForDebugging("FFMpegJNIDebugException", th);
            }
            return false;
        }

        @Override
        public boolean shouldDownload() {
            return true;
        }
    }

    public final enum AnonymousClass4 extends PluginId {
        private AnonymousClass4(String str, int i, String str2, String str3, boolean z, boolean z2) {
            super(str, i, str2, str3, z, z2, null);
        }

        public AnonymousClass4(String str, int i, String str2, String str3, boolean z, boolean z2, i06 i06Var) {
            this(str, i, str2, str3, z, z2);
        }

        @Override
        public boolean load(String str) throws Throwable {
            File fileN = c16.n(PluginId.YOUTUBE_DATA_ADAPTER.getName(), str);
            if (fileN == null || !fileN.exists()) {
                return false;
            }
            fileN.setReadOnly();
            Iterator it2 = PhoenixApplication.P().iterator();
            boolean z = true;
            while (it2.hasNext()) {
                if (!((fg3) it2.next()).load(fileN.getAbsolutePath())) {
                    z = false;
                }
            }
            return z;
        }

        @Override
        public boolean shouldDownload() {
            return true;
        }
    }

    public final enum AnonymousClass5 extends PluginId {
        private static final boolean IS_DEBUG_INFOMOBI = false;

        private AnonymousClass5(String str, int i, String str2, String str3, boolean z, boolean z2) {
            super(str, i, str2, str3, z, z2, null);
        }

        public AnonymousClass5(String str, int i, String str2, String str3, boolean z, boolean z2, j06 j06Var) {
            this(str, i, str2, str3, z, z2);
        }

        public final boolean d(File file) {
            File file2 = new File(file.getParentFile(), "dex");
            File file3 = new File(file.getParentFile(), "lib");
            file2.mkdirs();
            file3.mkdirs();
            try {
                Class<?> clsLoadClass = new DexClassLoader(file.getAbsolutePath(), file2.getAbsolutePath(), file3.getAbsolutePath(), ClassLoader.getSystemClassLoader()).loadClass("com.snaptube.ads.infomobi.lib.InfomobiApi");
                if (clsLoadClass == null) {
                    return false;
                }
                try {
                    om3.f(clsLoadClass.newInstance());
                    Intent intent = new Intent("com.snaptube.ads.infomobi.TRY_INIT");
                    if (Build.VERSION.SDK_INT >= 26) {
                        intent.setPackage(PhoenixApplication.z().getPackageName());
                    }
                    PhoenixApplication.z().sendBroadcast(intent);
                    return true;
                } catch (IllegalAccessException e) {
                    ProductionEnv.throwExceptForDebugging(e);
                    return false;
                } catch (InstantiationException e2) {
                    ProductionEnv.throwExceptForDebugging(e2);
                    return false;
                }
            } catch (ClassNotFoundException e3) {
                ProductionEnv.errorLog("PluginIdentity", e3.toString());
                return false;
            }
        }

        @Override
        public boolean load(String str) {
            ProductionEnv.isLoggable();
            File fileN = c16.n(PluginId.AD_INFOMOBI.getName(), str);
            if (fileN == null || !fileN.exists()) {
                return false;
            }
            fileN.setReadOnly();
            return d(fileN);
        }

        @Override
        public boolean shouldDownload() {
            return Config.K6();
        }
    }

    static {
        for (PluginId pluginId : values()) {
            sNameToIdentityMap.put(pluginId.getName(), pluginId);
        }
    }

    private PluginId(String str, int i, String str2, String str3, boolean z, boolean z2) {
        super(str, i);
        this.mLoadCount = 0;
        this.versionsInUse = new HashSet(1);
        this.mName = str2;
        this.mRequiredMinVersion = str3;
        this.mIsSupportHotSwap = z;
        this.mHasLocalBackup = z2;
    }

    public PluginId(String str, int i, String str2, String str3, boolean z, boolean z2, k06 k06Var) {
        this(str, i, str2, str3, z, z2);
    }

    public static PluginId[] a() {
        return new PluginId[]{VIDEO_SEARCH_ENGINE, SITE_EXTRACTOR, FFMPEG, YOUTUBE_DATA_ADAPTER, AD_INFOMOBI};
    }

    public static void asyncLoadAll() {
        for (PluginId pluginId : values()) {
            pluginId.tryLoadNewestVersion(null);
        }
    }

    public static void attachPluginInfo(ah3 ah3Var) {
        if (ah3Var == null) {
            return;
        }
        for (PluginId pluginId : values()) {
            String currentVersion = pluginId.getCurrentVersion();
            if (TextUtils.isEmpty(currentVersion) && pluginId.hasLocalBackup()) {
                currentVersion = pluginId.getRequiredMinVersion();
            }
            ah3Var.setProperty("plugin_" + pluginId.getName().replaceAll("-", "_"), currentVersion);
        }
        ah3Var.setProperty("arg4", c16.l());
    }

    public static void b(PluginId pluginId, String str, Throwable th) {
        String str2 = (l38.y(Arrays.asList(az7.h()), RequestTimeModel.DELIMITER) + "|" + pluginId.getName()) + "|" + str;
        File fileN = c16.n(pluginId.getName(), str);
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("|apkExists:");
        sb.append(fileN != null && fileN.exists());
        String string = sb.toString();
        File fileR = c16.r(pluginId.getName(), str);
        if (fileR != null && fileR.isDirectory()) {
            String[] list = fileR.list();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            sb2.append("|libs:");
            sb2.append(list == null ? "none" : l38.y(Arrays.asList(list), RequestTimeModel.DELIMITER));
            string = sb2.toString();
        }
        if (th != null) {
            string = string + "|e: " + th.toString();
        }
        vq6.K().g(new ReportPropertyBuilder().setEventName("AppError").setAction("load_plugin").setProperty("plugin", pluginId.getName()).setProperty("error", string).setProperty(SiteExtractLog.INFO_EXCEPTION_STACK, Log.getStackTraceString(th)));
    }

    @Nullable
    public static PluginId fromName(String str) {
        return sNameToIdentityMap.get(str);
    }

    public static Map<String, String> getPluginCurrentVersionMap() {
        HashMap map = new HashMap();
        for (PluginId pluginId : values()) {
            map.put(pluginId.getName(), pluginId.getCurrentVersionWithBackup());
        }
        return map;
    }

    @NonNull
    public static String getPluginCurrentVersions() {
        String str = "";
        for (PluginId pluginId : values()) {
            str = str + pluginId.getName() + ":" + pluginId.getCurrentVersionWithBackup() + "|";
        }
        return str;
    }

    public static PluginId valueOf(String str) {
        return (PluginId) Enum.valueOf(PluginId.class, str);
    }

    public static PluginId[] values() {
        return (PluginId[]) $VALUES.clone();
    }

    public final void c(PluginInstallationStatus pluginInstallationStatus) {
        boolean zLoad;
        if (!isSupported() || isSupportHotSwap()) {
            String strO = c16.o(this);
            if (TextUtils.isEmpty(strO)) {
                if (pluginInstallationStatus != null) {
                    pluginInstallationStatus.d("try load version is empty");
                    return;
                }
                return;
            }
            try {
                zLoad = load(strO);
                th = null;
            } catch (Throwable th) {
                th = th;
                ProductionEnv.errorLog("PluginId", " load plugin e = " + th.toString());
                th.printStackTrace();
                if (pluginInstallationStatus != null) {
                    pluginInstallationStatus.d("try load error:" + Log.getStackTraceString(th));
                }
                zLoad = false;
            }
            c16.B(name().toLowerCase(), strO, zLoad);
            if (zLoad) {
                sPluginSuccessString += this.mName + ": " + this.mRequiredMinVersion + " " + this.mCurrentVersion + " -> " + strO;
                this.mCurrentVersion = strO;
                this.mIsSupported = true;
                this.versionsInUse.add(this.mCurrentVersion);
                c16.d(this, strO, this.versionsInUse);
                if (pluginInstallationStatus != null) {
                    pluginInstallationStatus.d("plugin load success");
                }
                u81.f("plugin_install", sPluginSuccessString);
                return;
            }
            b(this, strO, th);
            if (pluginInstallationStatus != null) {
                String strI = c16.i(getName(), strO, PLUGIN_FFMPEG);
                File file = new File(strI);
                pluginInstallationStatus.d("try load fail: version:" + strO + " name:" + getName() + " libPath:" + strI + " exists:" + file.exists() + " isFile:" + file.isFile());
            }
        }
    }

    public String getCurrentVersion() {
        return this.mCurrentVersion;
    }

    public String getCurrentVersionWithBackup() {
        String currentVersion = getCurrentVersion();
        return (TextUtils.isEmpty(currentVersion) && hasLocalBackup()) ? getRequiredMinVersion() : currentVersion;
    }

    public String getName() {
        return this.mName;
    }

    public String getRequiredMinVersion() {
        return this.mRequiredMinVersion;
    }

    public boolean hasLocalBackup() {
        return this.mHasLocalBackup;
    }

    public boolean isSupportHotSwap() {
        return this.mIsSupportHotSwap;
    }

    public boolean isSupported() {
        return this.mIsSupported;
    }

    public abstract boolean load(String str) throws Throwable;

    public abstract boolean shouldDownload();

    public PluginQuery toPluginQuery() {
        PluginQuery pluginQuery = new PluginQuery();
        pluginQuery.setName(this.mName);
        pluginQuery.setVersion(this.mRequiredMinVersion);
        return pluginQuery;
    }

    public synchronized void tryFirstLoad() {
        if (this.mLoadCount <= 0) {
            tryLoadNewestVersion(null);
        }
    }

    public synchronized void tryLoadNewestVersion(PluginInstallationStatus pluginInstallationStatus) {
        c(pluginInstallationStatus);
        this.mLoadCount++;
    }
}

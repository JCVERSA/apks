package com.transsion.playercommon.vishaapis.appconfig.helper;

import com.tencent.mmkv.MMKV;
import defpackage.y45;
import defpackage.ydc;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;", "", MethodDecl.initName, "()V", "vishaGiveawayFlag", "", "getVishaGiveawayFlag", "()Z", "setVishaGiveawayFlag", "(Z)V", "ktCloudEnterFlag", "getKtCloudEnterFlag", "setKtCloudEnterFlag", "mediaLibraryDataFlag", "getMediaLibraryDataFlag", "setMediaLibraryDataFlag", "Companion", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudFeaturesConfigHelper {
    private static CloudFeaturesConfigHelper instance;
    private boolean ktCloudEnterFlag;
    private boolean mediaLibraryDataFlag;
    private boolean vishaGiveawayFlag;

    public static final Companion INSTANCE = new Companion(null);
    private static final String CACHE_VISHA_GIVEAWAYFLAG = "cache_visha_giveawayFlag";
    private static final String CACHE_MEDIALIBRARY_DATAFLAG = "cache_mediaLibrary_dataFlag";
    private static final String CACHE_KT_CLOUD_ENTERFLAG = "cache_kt_cloud_enterFlag";

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u000f\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0012\u0010\u0010R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u0012\u0004\b\u0015\u0010\u0003R\u001a\u0010\u0017\u001a\u00020\u00168\u0006X\u0086D¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u00168\u0006X\u0086D¢\u0006\f\n\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\u00168\u0006X\u0086D¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;", "", MethodDecl.initName, "()V", "Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;", "getInstance", "()Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;", "Lzfb;", "loadFeaturesConfig", "", "enable", "saveVishaGiveawayFlag", "(Z)V", "saveMediaLibraryDataFlag", "saveKtCloudEnterFlag", "isSupportFreeSpaceGift", "()Z", "isSupportVishaCloudFeatures", "isSupportMIMediaLibrary", "instance", "Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;", "getInstance$annotations", "", "CACHE_VISHA_GIVEAWAYFLAG", "Ljava/lang/String;", "getCACHE_VISHA_GIVEAWAYFLAG", "()Ljava/lang/String;", "CACHE_MEDIALIBRARY_DATAFLAG", "getCACHE_MEDIALIBRARY_DATAFLAG", "CACHE_KT_CLOUD_ENTERFLAG", "getCACHE_KT_CLOUD_ENTERFLAG", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static void getInstance$annotations() {
        }

        public final String getCACHE_KT_CLOUD_ENTERFLAG() {
            return CloudFeaturesConfigHelper.CACHE_KT_CLOUD_ENTERFLAG;
        }

        public final String getCACHE_MEDIALIBRARY_DATAFLAG() {
            return CloudFeaturesConfigHelper.CACHE_MEDIALIBRARY_DATAFLAG;
        }

        public final String getCACHE_VISHA_GIVEAWAYFLAG() {
            return CloudFeaturesConfigHelper.CACHE_VISHA_GIVEAWAYFLAG;
        }

        public final CloudFeaturesConfigHelper getInstance() {
            if (CloudFeaturesConfigHelper.instance == null) {
                synchronized (CloudFeaturesConfigHelper.class) {
                    try {
                        if (CloudFeaturesConfigHelper.instance == null) {
                            CloudFeaturesConfigHelper.instance = new CloudFeaturesConfigHelper();
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            CloudFeaturesConfigHelper cloudFeaturesConfigHelper = CloudFeaturesConfigHelper.instance;
            y45.g(cloudFeaturesConfigHelper);
            return cloudFeaturesConfigHelper;
        }

        public final boolean isSupportFreeSpaceGift() {
            return getInstance().getVishaGiveawayFlag();
        }

        public final boolean isSupportMIMediaLibrary() {
            return getInstance().getMediaLibraryDataFlag();
        }

        public final boolean isSupportVishaCloudFeatures() {
            return getInstance().getKtCloudEnterFlag();
        }

        public final void loadFeaturesConfig() {
            boolean z = false;
            getInstance().setVishaGiveawayFlag(MMKV.p().e(getCACHE_VISHA_GIVEAWAYFLAG(), false) && !ydc.e());
            CloudFeaturesConfigHelper companion = getInstance();
            if (MMKV.p().e(getCACHE_MEDIALIBRARY_DATAFLAG(), false) && !ydc.e()) {
                z = true;
            }
            companion.setMediaLibraryDataFlag(z);
            getInstance().setKtCloudEnterFlag(MMKV.p().e(getCACHE_KT_CLOUD_ENTERFLAG(), true));
        }

        public final void saveKtCloudEnterFlag(boolean enable) {
            MMKV.p().y(getCACHE_KT_CLOUD_ENTERFLAG(), enable);
        }

        public final void saveMediaLibraryDataFlag(boolean enable) {
            MMKV.p().y(getCACHE_MEDIALIBRARY_DATAFLAG(), enable);
        }

        public final void saveVishaGiveawayFlag(boolean enable) {
            MMKV.p().y(getCACHE_VISHA_GIVEAWAYFLAG(), enable);
        }

        private Companion() {
        }
    }

    public static final CloudFeaturesConfigHelper getInstance() {
        return INSTANCE.getInstance();
    }

    public static final boolean isSupportFreeSpaceGift() {
        return INSTANCE.isSupportFreeSpaceGift();
    }

    public static final boolean isSupportMIMediaLibrary() {
        return INSTANCE.isSupportMIMediaLibrary();
    }

    public static final boolean isSupportVishaCloudFeatures() {
        return INSTANCE.isSupportVishaCloudFeatures();
    }

    public static final void loadFeaturesConfig() {
        INSTANCE.loadFeaturesConfig();
    }

    public static final void saveKtCloudEnterFlag(boolean z) {
        INSTANCE.saveKtCloudEnterFlag(z);
    }

    public static final void saveMediaLibraryDataFlag(boolean z) {
        INSTANCE.saveMediaLibraryDataFlag(z);
    }

    public static final void saveVishaGiveawayFlag(boolean z) {
        INSTANCE.saveVishaGiveawayFlag(z);
    }

    public final boolean getKtCloudEnterFlag() {
        return this.ktCloudEnterFlag;
    }

    public final boolean getMediaLibraryDataFlag() {
        return this.mediaLibraryDataFlag;
    }

    public final boolean getVishaGiveawayFlag() {
        return this.vishaGiveawayFlag;
    }

    public final void setKtCloudEnterFlag(boolean z) {
        this.ktCloudEnterFlag = z;
    }

    public final void setMediaLibraryDataFlag(boolean z) {
        this.mediaLibraryDataFlag = z;
    }

    public final void setVishaGiveawayFlag(boolean z) {
        this.vishaGiveawayFlag = z;
    }
}

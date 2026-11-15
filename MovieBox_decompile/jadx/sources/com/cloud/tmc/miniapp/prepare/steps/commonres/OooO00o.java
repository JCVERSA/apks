package com.cloud.tmc.miniapp.prepare.steps.commonres;

import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.StepType;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.utils.OooOO0;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

public final class OooO00o extends com.cloud.tmc.miniapp.prepare.steps.OooO00o {
    public boolean OooO0oo = true;

    public static final class C0316OooO00o implements PackageDownloadCallback {
        public final boolean OooO00o;
        public final OooO00o OooO0O0;
        public final AppModel OooO0OO;
        public final PrepareContext OooO0Oo;
        public final o000oOoO OooO0o;
        public final PrepareController OooO0o0;

        public C0316OooO00o(boolean z10, OooO00o oooO00o, AppModel appModel, PrepareContext prepareContext, PrepareController prepareController, o000oOoO o000oooo) {
            this.OooO00o = z10;
            this.OooO0O0 = oooO00o;
            this.OooO0OO = appModel;
            this.OooO0Oo = prepareContext;
            this.OooO0o0 = prepareController;
            this.OooO0o = o000oooo;
        }

        @Override
        public void onCancel(String url, String str) {
            Intrinsics.h(url, "url");
            try {
                this.OooO0O0.OooO0OO.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onFailed(String url, String errorCode, String errorMsg, IOException e10, String str) {
            Intrinsics.h(url, "url");
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
            Intrinsics.h(e10, "e");
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0Oo.getStartContext(), this.OooO0OO, false);
            try {
                this.OooO0O0.OooO0OO.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable unused) {
            }
            if (!this.OooO00o) {
                this.OooO0o.backgroundDownloadZipAsync(this.OooO0OO, false);
                return;
            }
            TmcLogger.d(this.OooO0O0.OooO00o, "Step_Download_资源包下载失败，" + errorMsg);
            PrepareController prepareController = this.OooO0o0;
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("4", "download error:" + errorMsg + "   url:" + this.OooO0OO.getPackageUrl()));
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public void onFinish(String str, String str2) {
            TmcLogger.d(this.OooO0O0.OooO00o, "Step_Download_资源包下载完成，进行解压");
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0Oo.getStartContext(), this.OooO0OO, true);
            try {
                this.OooO0O0.OooO0OO.removeDownloadAppMap(this.OooO0OO.getPackageUrl_MD5());
            } catch (Throwable unused) {
            }
            if (!this.OooO00o) {
                try {
                    if (MiniAppLaunch.INSTANCE.checkEnableBackgroundUnzip()) {
                        OooOO0.OooO00o(OooOO0.OooO00o, this.OooO0Oo.getStartContext(), this.OooO0OO, false, false, 12);
                    }
                } catch (Throwable unused2) {
                }
                this.OooO0o.backgroundDownloadZipAsync(this.OooO0OO, true);
                return;
            }
            PrepareController prepareController = this.OooO0o0;
            if (prepareController != null) {
                prepareController.unlock(prepareController);
            }
            PrepareController prepareController2 = this.OooO0o0;
            if (prepareController2 != null) {
                prepareController2.moveToNext();
            }
        }

        @Override
        public void onPrepare(String url, String str) {
            Intrinsics.h(url, "url");
        }

        @Override
        public void onProgress(String url, int i10, String str) {
            Intrinsics.h(url, "url");
            if (this.OooO00o) {
                TmcLogger.d(this.OooO0O0.OooO00o, "Step_Download_下载资源包" + i10);
            }
        }

        @Override
        public void progressUpdate(String str, int i10, String str2, long j10, long j11) {
            com.cloud.tmc.kernel.proxy.network.a.a(this, str, i10, str2, j10, j11);
        }
    }

    public final void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo, AppModel appModel, boolean z10) {
        String packageUrl = appModel.getPackageUrl();
        if (packageUrl == null || packageUrl.length() == 0) {
            if (!z10) {
                o000oooo.backgroundDownloadZipAsync(appModel, false);
            }
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, "packageUrl is null or empty"));
                return;
            }
            return;
        }
        int i10 = z10 ? 2 : 1;
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "SinglePkgDownloadStep startDownload:downloadUrl:" + appModel.getPackageUrl() + ";appInfo:appId:" + appModel.getAppId() + ";deployVersion:" + appModel.getDeployVersion());
        this.OooO0OO.downloadApp(appModel, i10, true, new C0316OooO00o(z10, this, appModel, prepareContext, prepareController, o000oooo));
    }

    @Override
    public StepType OooO0O0() {
        return StepType.COMMON_RES_DOWNLOAD;
    }

    @Override
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        String appId;
        boolean offlineCache;
        String templateMiniappId;
        String lowestSupportTemplateVersion;
        String appId2;
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        AppModel appModel = prepareContext.getAppModel();
        if (!AppUtils.INSTANCE.checkUesCommonresApp(appModel != null ? appModel.getMiniappSubtype() : null)) {
            if (prepareController != null) {
                prepareController.moveToNext();
                return;
            }
            return;
        }
        AppModel commonResModel = prepareContext.getCommonResModel();
        if (commonResModel == null) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("commonResModel is null"));
                return;
            }
            return;
        }
        AppModel commonResModel2 = prepareContext.getCommonResModel();
        if (commonResModel2 == null || (appId = commonResModel2.getAppId()) == null) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("commonResId is null or empty"));
                return;
            }
            return;
        }
        if (appModel != null && (appId2 = appModel.getAppId()) != null) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            miniAppLaunch.commonResTrack(appId2, "u_e");
            miniAppLaunch.commonResTrack(appId2, "d_s");
        }
        if (this.OooO0OO.isDownloaded(prepareContext.getStartContext(), commonResModel)) {
            TmcLogger.d(this.OooO00o, "CommonResDownloadStep_公共资源包已下载，跳转到解压步骤");
            this.OooO0oo = false;
        } else if (commonResModel.getFromCacheType() == 3 || commonResModel.getFromCacheType() == 4) {
            this.OooO0o0.deleteAllFileForVersion(commonResModel);
            this.OooO0o0.createBaseDirectory(commonResModel);
            if (commonResModel.getFromCacheType() == 3) {
                offlineCache = this.OooO0OO.getNativeCache(prepareContext.getStartContext(), commonResModel);
                TmcLogger.d(this.OooO00o, "use native pkg resource");
            } else {
                offlineCache = this.OooO0OO.getOfflineCache(prepareContext.getStartContext(), commonResModel);
                TmcLogger.d(this.OooO00o, "use offline pkg resource");
            }
            TmcLogger.d(this.OooO00o, "Step_FW_Download_资源包已下载，跳转到解压步骤->" + offlineCache);
            this.OooO0oo = offlineCache ^ true;
        }
        AppModel appModelFromPre = this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), appId);
        if (appModelFromPre != null) {
            if (this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModelFromPre)) {
                prepareContext.setCommonResModel(appModelFromPre);
                if (prepareController != null) {
                    prepareController.moveToNext();
                    return;
                }
                return;
            }
            this.OooO0o0.deleteAllFileForVersion(appModelFromPre);
            this.OooO0o0.createBaseDirectory(appModelFromPre);
        } else if (!this.OooO0oo) {
            if (prepareController != null) {
                prepareController.moveToNext();
                return;
            }
            return;
        }
        if (!this.OooO0oo) {
            AppModel appModel2 = prepareContext.getAppModel();
            if (appModel2 == null || (lowestSupportTemplateVersion = appModel2.getLowestSupportTemplateVersion()) == null) {
                lowestSupportTemplateVersion = "";
            }
            MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
            String deployVersion = commonResModel.getDeployVersion();
            if (miniAppLaunch2.compareVersion(lowestSupportTemplateVersion, deployVersion != null ? deployVersion : "") && NetworkUtils.isConnected() && appModelFromPre != null) {
                prepareContext.setCommonResModel(appModelFromPre);
                this.OooO0oo = true;
            }
        }
        if (this.OooO0oo) {
            TmcLogger.d(this.OooO00o, "need download resource pkg");
            if (prepareController != null) {
                prepareController.lock(prepareController);
            }
        }
        if (appModelFromPre != null) {
            if (o000oooo != null) {
                OooO00o(prepareController, prepareContext, o000oooo, appModelFromPre, this.OooO0oo);
            }
        } else if (this.OooO0oo) {
            try {
                AppModel commonResModel3 = prepareContext.getCommonResModel();
                if (commonResModel3 != null && (templateMiniappId = commonResModel3.getTemplateMiniappId()) != null) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(prepareContext.getStartContext(), templateMiniappId, templateMiniappId + "_pre");
                    this.OooO0O0.refreshUpdateTime(prepareContext.getStartContext(), prepareContext.getAppId(), 0L);
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO00o, th2);
            }
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("preCommonresModel is not exist"));
                return;
            }
            return;
        }
        if (this.OooO0oo || prepareController == null) {
            return;
        }
        prepareController.moveToNext();
    }
}

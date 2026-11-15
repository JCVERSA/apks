package com.cloud.tmc.miniapp.prepare.impl;

import android.content.Context;
import com.cloud.tmc.integration.callback.PackageInstallCallback;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.compress.CompressUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.ResourceUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

public final class TmcResourceManagerImpl implements TmcResourceManager {
    public final String OooO00o = "TmcResourceManagerImpl";
    public final ConcurrentHashMap<String, Integer> OooO0O0 = new ConcurrentHashMap<>();

    @Override
    public void clearDownloadAppMap() {
        try {
            this.OooO0O0.clear();
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
        }
    }

    @Override
    public void creatBaseDirectory(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        ((FileProxy) TmcProxy.get(FileProxy.class)).createBaseDirectory(appModel);
    }

    @Override
    public void createSoDirectory() {
        ((FileProxy) TmcProxy.get(FileProxy.class)).createSoDirectory();
    }

    @Override
    public void deleteDownloadPackage(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        ((FileProxy) TmcProxy.get(FileProxy.class)).deleteFile(((PathProxy) TmcProxy.get(PathProxy.class)).getZipPath(appModel));
    }

    @Override
    public void deleteInstallStatus(String appId) {
        Intrinsics.h(appId, "appId");
        TmcLogger.d("deleteInstallStatus Not yet implemented");
    }

    @Override
    public void downloadApp(AppModel appModel, int i10, boolean z10, PackageDownloadCallback packageDownloadCallback) {
        Intrinsics.h(appModel, "appModel");
        downloadApp(appModel.getAppId(), AppUtils.INSTANCE.getPackageDownloadUrl(appModel), appModel.getPackageUrl_MD5(), appModel.getZipPath(), i10, z10, packageDownloadCallback);
    }

    public final ConcurrentHashMap<String, Integer> getDownloadAppMap() {
        return this.OooO0O0;
    }

    @Override
    public String getInstallPath(AppModel appModel) {
        Intrinsics.h(appModel, "appModel");
        TmcLogger.d("getInstallPath Not yet implemented");
        return "";
    }

    @Override
    public String getInstalledAppVersion(String appId) {
        Intrinsics.h(appId, "appId");
        TmcLogger.d("getInstalledAppVersion Not yet implemented");
        return "";
    }

    @Override
    public boolean getNativeCache(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        boolean zCopyFileFromAssets = ResourceUtils.copyFileFromAssets("mini_offline/" + appModel.getAppId() + "/" + appModel.getAppId() + ".zip", appModel.getZipPath());
        if (zCopyFileFromAssets) {
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(context, appModel, true);
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "getNativeCache:changeZipDownloadStatus true:appInfo:appId:" + appModel.getAppId() + ";deployVersion:" + appModel.getDeployVersion() + ";mainPkgUrl:" + appModel.getMainPackageUrl() + ";fullPkgUrl:" + appModel.getPackageUrl());
        }
        return zCopyFileFromAssets;
    }

    @Override
    public boolean getOfflineCache(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        boolean zCopy = FileUtils.copy(appModel.getZipPath(), ((PathProxy) TmcProxy.get(PathProxy.class)).getZipPath(appModel));
        if (zCopy) {
            AppPrepareUtils.INSTANCE.changeZipDownloadStatus(context, appModel, true);
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "getOfflineCache:changeZipDownloadStatus true:appInfo:appId:" + appModel.getAppId() + ";deployVersion:" + appModel.getDeployVersion() + ";mainPkgUrl:" + appModel.getMainPackageUrl() + ";fullPkgUrl:" + appModel.getPackageUrl());
        }
        return zCopy;
    }

    public final String getTAG() {
        return this.OooO00o;
    }

    @Override
    public void installApp(AppModel appModel, boolean z10, SubPackageInfo subPackageInfo, PackageInstallCallback packageInstallCallback) {
        Intrinsics.h(appModel, "appModel");
        try {
            PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
            AppUtils appUtils = AppUtils.INSTANCE;
            String currentPackageEncryptionUrl = appUtils.getCurrentPackageEncryptionUrl(appModel, subPackageInfo, Boolean.valueOf(z10));
            String currentPackageUniqueName = appUtils.getCurrentPackageUniqueName(appModel, subPackageInfo, Boolean.valueOf(z10));
            String tarUnCompressPath = pathProxy.getTarUnCompressPath(appModel, currentPackageEncryptionUrl);
            String tarPath = pathProxy.getTarPath(appModel.getAppId(), currentPackageEncryptionUrl, currentPackageUniqueName);
            try {
                try {
                    CompressUtils.untarGZip(new File(tarPath), tarUnCompressPath);
                    if (packageInstallCallback != null) {
                        packageInstallCallback.onResult(true, tarUnCompressPath);
                    }
                } catch (FileNotFoundException e10) {
                    if (packageInstallCallback != null) {
                        packageInstallCallback.onResult(false, "error:" + e10.getMessage() + "   path:   " + tarUnCompressPath);
                    }
                    TmcLogger.e(this.OooO00o, "Step_LoadStep:  tar 包文件未找到" + tarPath);
                }
            } catch (IOException e11) {
                if (packageInstallCallback != null) {
                    packageInstallCallback.onResult(false, "error:" + e11.getMessage() + "   path:   " + tarUnCompressPath);
                }
                TmcLogger.e(this.OooO00o, "Step_LoadStep:  tar解压 IOException", e11);
            }
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "TmcResourceManagerImpl", th2);
            if (packageInstallCallback != null) {
                packageInstallCallback.onResult(false, th2.getMessage());
            }
        }
    }

    @Override
    public void installZip(Context context, AppModel appModel, boolean z10, SubPackageInfo subPackageInfo, PackageInstallCallback packageInstallCallback) {
        String mainPackageUrlEncryption;
        String mainPackageZipPath;
        String mainPackageUnZipFilePath;
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        if (z10) {
            mainPackageUrlEncryption = appModel.getPackageUrl_MD5();
            mainPackageZipPath = appModel.getZipPath();
            mainPackageUnZipFilePath = appModel.getUnzipFilePath();
        } else if (subPackageInfo != null) {
            mainPackageUrlEncryption = subPackageInfo.getSubPackageUrlMD5();
            String subZipPath = subPackageInfo.getSubZipPath();
            mainPackageUnZipFilePath = subPackageInfo.getSubUnzipFilePath();
            mainPackageZipPath = subZipPath;
        } else {
            mainPackageUrlEncryption = appModel.getMainPackageUrlEncryption();
            mainPackageZipPath = appModel.getMainPackageZipPath();
            mainPackageUnZipFilePath = appModel.getMainPackageUnZipFilePath();
        }
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        if (AppPrepareUtils.INSTANCE.checkZipUnCompressStatus(context, appModel.getAppId(), mainPackageUrlEncryption)) {
            if (packageInstallCallback != null) {
                packageInstallCallback.onResult(true, pathProxy.getTarUnCompressPath(appModel, mainPackageUrlEncryption));
                return;
            }
            return;
        }
        try {
            CompressUtils.unzip(new File(mainPackageZipPath), mainPackageUnZipFilePath);
            if (packageInstallCallback != null) {
                packageInstallCallback.onResult(true, mainPackageUnZipFilePath);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            TmcLogger.e(this.OooO00o, "Step_LoadStep: zip 包解压失败", e10);
            if (packageInstallCallback != null) {
                packageInstallCallback.onResult(false, "error:" + e10.getMessage() + "   path:   " + mainPackageUnZipFilePath);
            }
        }
    }

    @Override
    public boolean isAvailable(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        return false;
    }

    @Override
    public boolean isDownloaded(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        return AppPrepareUtils.INSTANCE.checkZipDownloadStatus(context, appModel);
    }

    @Override
    public void removeDownloadAppMap(String str) {
        try {
            TmcLogger.d(this.OooO00o, "remove download key " + str);
            TypeIntrinsics.d(this.OooO0O0).remove(str);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
        }
    }

    @Override
    public boolean isDownloaded(Context context, String str, String str2) {
        Intrinsics.h(context, "context");
        return AppPrepareUtils.INSTANCE.checkZipDownloadStatus(context, str, str2);
    }

    @Override
    public void downloadApp(String str, String str2, String str3, String str4, int i10, boolean z10, PackageDownloadCallback packageDownloadCallback) {
        try {
            if (MiniAppLaunch.INSTANCE.enableCheckBackgroundDownloadZipStatus() && i10 != 3) {
                if (this.OooO0O0.containsKey(str3)) {
                    Integer num = this.OooO0O0.get(str3);
                    if (num != null && num.intValue() == 2) {
                        TmcLogger.d(this.OooO00o, "[TYPE_DOWNLOAD_SOURCE_TYPE_SYNC downloading] appdownload sourcetype " + i10 + ",appModel -> " + str + ",appMD5 ->" + str3);
                        return;
                    }
                    if (num != null && num.intValue() == 1) {
                        if (i10 == 2) {
                            TmcLogger.d(this.OooO00o, "cancel " + str3);
                            ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).cancelDownloadCall(str, null);
                        } else {
                            TmcLogger.d(this.OooO00o, "[TYPE_DOWNLOAD_SOURCE_TYPE_ASYNC downloading]  appModel -> " + str + ",appMD5 ->" + str3 + " is downloading");
                            return;
                        }
                    }
                }
                if (str3 != null) {
                    this.OooO0O0.put(str3, Integer.valueOf(i10));
                }
            }
            TmcLogger.d(this.OooO00o, "addDownload " + str + "," + str3);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "downloadApp->", th2);
        }
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(str, str2, str4, new HashMap(), null, packageDownloadCallback);
    }

    @Override
    public void installZip(Context context, AppModel appModel, PackageInstallCallback packageInstallCallback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        installZip(context, appModel, true, null, packageInstallCallback);
    }

    @Override
    public void installApp(AppModel appModel, PackageInstallCallback packageInstallCallback) {
        Intrinsics.h(appModel, "appModel");
        installApp(appModel, true, null, packageInstallCallback);
    }
}

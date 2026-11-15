package com.cloud.tmc.miniapp.prepare.steps;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.callback.PackageInstallCallback;
import com.cloud.tmc.integration.chain.endState.FwResDownloadStepEndState;
import com.cloud.tmc.integration.chain.startState.FwResLoadStepStartState;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;

public class OooOOOO extends OooO00o {
    public final void OooO00o(final PrepareContext prepareContext, final PrepareController prepareController, final AppModel appModel) {
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "app");
        OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
        bundle.putInt(ChainPoint.ZIP_FRAMEWORK_MODE, 2);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_INSERT, "", bundle);
        this.OooO0OO.installZip(prepareContext.getStartContext(), appModel, new PackageInstallCallback() {
            @Override
            public final void onResult(boolean z10, String str) {
                this.f22981a.OooO00o(prepareController, prepareContext, appModel, z10, str);
            }
        });
    }

    @Override
    public StepType OooO0O0() {
        return StepType.FW_LOAD;
    }

    @Override
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.FwResDownloadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.FwResLoadStep, bundle);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.AppFwResDownloadStep, new Bundle());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.AppFwResLoadStep, new Bundle());
            new FwResDownloadStepEndState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
            new FwResLoadStepStartState(new Bundle()).setChainContext(prepareContext.getAppChainContext());
        }
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        if (appPrepareUtils.isShellType(prepareContext.getAppModel())) {
            prepareController.moveToNext();
            return;
        }
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        prepareController.lock(prepareController);
        TmcLogger.d(this.OooO00o, "Step_FW_进度:LoadStep");
        AppModel frameWorkModel = prepareContext.getFrameWorkModel();
        if (appPrepareUtils.checkTarUnCompressStatus(prepareContext.getStartContext(), frameWorkModel)) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
            String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
            if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.checkFwVersionUpdate(miniAppVersion, miniAppVersion2)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(frameWorkModel, PointAnalyseType.POINT_PACKAGE_UPDATE_SUCCESS, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            TmcLogger.d(this.OooO00o, "Step_FW_LoadStep:tar包已解压，跳转到 startStep");
            prepareController.unlock(prepareController);
            prepareController.moveToNext();
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_FW_LoadStep:删除旧的已解压文件");
        this.OooO0o0.deleteFile(this.OooO0Oo.getZipUnCompressPath(frameWorkModel));
        TmcLogger.d(this.OooO00o, "Step_FW_LoadStep:解压 zip 包");
        try {
            OooO00o(prepareContext, prepareController, frameWorkModel);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("unzip error ");
            sbOooO00o.append(th2.getMessage());
            prepareController.moveToError(new PrepareException("5", sbOooO00o.toString()));
        }
    }

    public void OooO00o(PrepareController prepareController, PrepareContext prepareContext, AppModel appModel, boolean z10, String str) {
        if (z10) {
            TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: zip 包解压完成");
            OooO00o(prepareController, prepareContext, appModel);
            return;
        }
        TmcLogger.d(this.OooO00o, "zip 包解压失败，删除已下载数据");
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
        if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.checkFwVersionUpdate(miniAppVersion, miniAppVersion2)) {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "INSTALL_ZIP_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        }
        AppPrepareUtils.INSTANCE.clearAllFilesForVersion(prepareContext.getStartContext(), appModel);
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("unzip error");
        sbOooO00o.append(appModel.getPackageUrl());
        prepareController.moveToError(new PrepareException("5", sbOooO00o.toString()));
    }

    public final void OooO00o(final PrepareController prepareController, final PrepareContext prepareContext, final AppModel appModel) {
        final Context startContext = prepareContext.getStartContext();
        TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: sha256 校验");
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        if (!appPrepareUtils.checkSHA256(appModel)) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
            String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
            if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch.checkFwVersionUpdate(miniAppVersion, miniAppVersion2)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "SIGN_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: sha256 校验不一致，删除所有缓存");
            appPrepareUtils.clearAllFilesForVersion(startContext, appModel);
            StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("sign error");
            sbOooO00o.append(appModel.getAppId());
            sbOooO00o.append("   ");
            sbOooO00o.append(appModel.getPackageUrl());
            prepareController.moveToError(new PrepareException("7", sbOooO00o.toString()));
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: sha256 校验正确，解压 tar 包");
        this.OooO0OO.installApp(appModel, new PackageInstallCallback() {
            @Override
            public final void onResult(boolean z10, String str) {
                this.f22976a.OooO00o(appModel, prepareContext, startContext, prepareController, z10, str);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00be  */
    /* JADX WARN: Code duplicated, block: B:60:0x01b1  */
    public void OooO00o(AppModel appModel, PrepareContext prepareContext, Context context, PrepareController prepareController, boolean z10, String str) {
        String str2;
        String str3;
        Exception exc;
        String miniAppVersion;
        String miniAppVersion2;
        this = this;
        AppModel appModel2 = appModel;
        String str4 = TmcConstants.TRACK_MPU_APPID;
        String str5 = "100000";
        if (z10) {
            try {
                AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
                str3 = "manifest error";
                try {
                    String manifestJson = appPrepareUtils.getManifestJson(appModel2);
                    str2 = PrepareException.ERROR_MANIFEST_INFO;
                    try {
                        if (!JsonUtil.INSTANCE.getValueFromJson(manifestJson, "appId").equals(appModel.getAppId())) {
                            try {
                                MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
                                String miniAppVersion3 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
                                String miniAppVersion4 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
                                if (TextUtils.isEmpty(miniAppVersion3)) {
                                    str5 = "100000";
                                } else {
                                    try {
                                        if (TextUtils.isEmpty(miniAppVersion4) || !miniAppLaunch.checkFwVersionUpdate(miniAppVersion3, miniAppVersion4)) {
                                            str5 = "100000";
                                        } else {
                                            str5 = "100000";
                                            try {
                                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL.putData(TmcConstants.TRACK_MPU_APPID, appModel.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, miniAppVersion3).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion4).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL").putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, prepareContext.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE)), "");
                                            } catch (Exception e10) {
                                                e = e10;
                                                appModel2 = appModel;
                                                exc = e;
                                                str4 = TmcConstants.TRACK_MPU_APPID;
                                                str3 = str3;
                                                str5 = str5;
                                                prepareContext = prepareContext;
                                                MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
                                                String str6 = str3;
                                                miniAppVersion = miniAppLaunch2.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), str5));
                                                miniAppVersion2 = miniAppLaunch2.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), str5));
                                                if (!TextUtils.isEmpty(miniAppVersion)) {
                                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel2, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, str4, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                                                }
                                                AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel2);
                                                StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o(str6);
                                                sbOooO00o.append(exc.getMessage());
                                                prepareController.moveToError(new PrepareException(str2, sbOooO00o.toString()));
                                            }
                                        }
                                    } catch (Exception e11) {
                                        e = e11;
                                        str5 = "100000";
                                    }
                                }
                                appModel2 = appModel;
                                try {
                                    appPrepareUtils.clearAllFilesForVersion(context, appModel2);
                                    str3 = str3;
                                    try {
                                        try {
                                            prepareController.moveToError(new PrepareException(str2, str3));
                                        } catch (Exception e12) {
                                            e = e12;
                                            exc = e;
                                            str2 = str2;
                                            prepareContext = prepareContext;
                                            MiniAppLaunch miniAppLaunch3 = MiniAppLaunch.INSTANCE;
                                            String str7 = str3;
                                            miniAppVersion = miniAppLaunch3.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), str5));
                                            miniAppVersion2 = miniAppLaunch3.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), str5));
                                            if (!TextUtils.isEmpty(miniAppVersion)) {
                                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel2, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, str4, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                                            }
                                            AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel2);
                                            StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o(str7);
                                            sbOooO00o2.append(exc.getMessage());
                                            prepareController.moveToError(new PrepareException(str2, sbOooO00o2.toString()));
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                    }
                                } catch (Exception e14) {
                                    e = e14;
                                    str5 = str5;
                                    exc = e;
                                    prepareContext = prepareContext;
                                    MiniAppLaunch miniAppLaunch4 = MiniAppLaunch.INSTANCE;
                                    String str8 = str3;
                                    miniAppVersion = miniAppLaunch4.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), str5));
                                    miniAppVersion2 = miniAppLaunch4.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), str5));
                                    if (!TextUtils.isEmpty(miniAppVersion)) {
                                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel2, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, str4, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                                    }
                                    AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel2);
                                    StringBuilder sbOooO00o3 = com.cloud.tmc.miniapp.OooO00o.OooO00o(str8);
                                    sbOooO00o3.append(exc.getMessage());
                                    prepareController.moveToError(new PrepareException(str2, sbOooO00o3.toString()));
                                }
                            } catch (Exception e15) {
                                e = e15;
                                appModel2 = appModel2;
                                str5 = "100000";
                            }
                        } else {
                            TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: tar 包解压完成");
                            appPrepareUtils.changeTarUnCompressStatus(context, appModel2, true);
                            this.OooO0o0.delectDownloadFileForVersion(appModel2);
                            this.OooO0O0.delectOldVersionFilesAndUpdate(context, appModel2);
                            MiniAppLaunch miniAppLaunch5 = MiniAppLaunch.INSTANCE;
                            String miniAppVersion5 = miniAppLaunch5.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
                            String miniAppVersion6 = miniAppLaunch5.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
                            if (!TextUtils.isEmpty(miniAppVersion5) && !TextUtils.isEmpty(miniAppVersion6) && miniAppLaunch5.checkFwVersionUpdate(miniAppVersion5, miniAppVersion6)) {
                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel2, PointAnalyseType.POINT_PACKAGE_UPDATE_SUCCESS, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion5).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion6), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                            }
                            prepareController.unlock(prepareController);
                            prepareController.moveToNext();
                        }
                    } catch (Exception e16) {
                        e = e16;
                        str3 = str3;
                        exc = e;
                        MiniAppLaunch miniAppLaunch6 = MiniAppLaunch.INSTANCE;
                        String str9 = str3;
                        miniAppVersion = miniAppLaunch6.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), str5));
                        miniAppVersion2 = miniAppLaunch6.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), str5));
                        if (!TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppLaunch6.checkFwVersionUpdate(miniAppVersion, miniAppVersion2)) {
                            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel2, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, str4, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_RESULT, "MANIFEST_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
                        }
                        AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel2);
                        StringBuilder sbOooO00o4 = com.cloud.tmc.miniapp.OooO00o.OooO00o(str9);
                        sbOooO00o4.append(exc.getMessage());
                        prepareController.moveToError(new PrepareException(str2, sbOooO00o4.toString()));
                    }
                } catch (Exception e17) {
                    e = e17;
                    str2 = PrepareException.ERROR_MANIFEST_INFO;
                }
            } catch (Exception e18) {
                e = e18;
                str2 = PrepareException.ERROR_MANIFEST_INFO;
                str5 = "100000";
                str3 = "manifest error";
                str4 = TmcConstants.TRACK_MPU_APPID;
                prepareContext = prepareContext;
            }
        } else {
            TmcLogger.d(this.OooO00o, "Step_FW_LoadStep: tar 包解压失败");
            MiniAppLaunch miniAppLaunch7 = MiniAppLaunch.INSTANCE;
            String miniAppVersion7 = miniAppLaunch7.getMiniAppVersion(this.OooO0O0.getAppModelFromUsed(prepareContext.getStartContext(), "100000"));
            String miniAppVersion8 = miniAppLaunch7.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), "100000"));
            if (!TextUtils.isEmpty(miniAppVersion7) && !TextUtils.isEmpty(miniAppVersion8) && miniAppLaunch7.checkFwVersionUpdate(miniAppVersion7, miniAppVersion8)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, OooO.OooO00o(appModel2, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion7).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion8).putData(TmcConstants.TRACK_MPU_RESULT, "INSTALL_APP_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, appModel2);
            prepareController.moveToError(new PrepareException("5", "unzip error" + str));
        }
    }
}

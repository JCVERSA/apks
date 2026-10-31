package com.sensorsdata.analytics.android.sdk.remote;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import com.PinkiePie;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.ServerUrl;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataLoadingDialog;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import org.json.JSONObject;

public class SensorsDataRemoteManagerDebug extends BaseSensorsDataSDKRemoteManager {
    private static final String TAG = "SA.SensorsDataRemoteManagerDebug";
    private String errorMsg;

    public class AnonymousClass1 implements DialogInterface.OnClickListener {
        final Activity val$activity;
        final Uri val$uri;

        public class C03611 extends HttpCallback.StringCallback {
            final SensorsDataLoadingDialog val$loadingDialog;

            public class DialogInterfaceOnClickListenerC03621 implements DialogInterface.OnClickListener {
                public DialogInterfaceOnClickListenerC03621() {
                }

                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    SensorsDataDialogUtils.startLaunchActivity(AnonymousClass1.this.val$activity);
                }
            }

            public C03611(SensorsDataLoadingDialog sensorsDataLoadingDialog) {
                this.val$loadingDialog = sensorsDataLoadingDialog;
            }

            @Override
            public void onAfter() {
            }

            @Override
            public void onFailure(int i, String str) {
                this.val$loadingDialog.dismiss();
                SADisplayUtil.getStringResource(AnonymousClass1.this.val$activity, R.string.sensors_analytics_remote_fail);
                PinkiePie.DianePie();
                SALog.i(SensorsDataRemoteManagerDebug.TAG, "remote config: Remote request was failed,code is " + i + ",errorMessage is" + str);
            }

            @Override
            public void onResponse(String str) {
                onResponse2(str);
            }

            public void onResponse2(String str) {
                this.val$loadingDialog.dismiss();
                if (TextUtils.isEmpty(str)) {
                    SADisplayUtil.getStringResource(AnonymousClass1.this.val$activity, R.string.sensors_analytics_remote_other_error);
                    PinkiePie.DianePie();
                } else {
                    SensorsDataSDKRemoteConfig sDKRemoteConfig = SensorsDataRemoteManagerDebug.this.toSDKRemoteConfig(str);
                    String queryParameter = AnonymousClass1.this.val$uri.getQueryParameter("nv");
                    if (sDKRemoteConfig.getNewVersion().equals(queryParameter)) {
                        SADisplayUtil.getStringResource(AnonymousClass1.this.val$activity, R.string.sensors_analytics_remote_succeed);
                        PinkiePie.DianePie();
                        SensorsDataRemoteManagerDebug.this.setSDKRemoteConfig(sDKRemoteConfig);
                    } else {
                        SADisplayUtil.getStringResource(AnonymousClass1.this.val$activity, R.string.sensors_analytics_remote_version_error);
                        String.format(SADisplayUtil.getStringResource(AnonymousClass1.this.val$activity, R.string.sensors_analytics_remote_version_tip), sDKRemoteConfig.getNewVersion(), queryParameter);
                        SADisplayUtil.getStringResource(AnonymousClass1.this.val$activity, R.string.sensors_analytics_common_ok);
                        new DialogInterfaceOnClickListenerC03621();
                        PinkiePie.DianePie();
                    }
                }
                SALog.i(SensorsDataRemoteManagerDebug.TAG, "remote config: Remote request was successful,response data is " + str);
            }
        }

        public AnonymousClass1(Activity activity, Uri uri) {
            this.val$activity = activity;
            this.val$uri = uri;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SensorsDataLoadingDialog sensorsDataLoadingDialog = new SensorsDataLoadingDialog(this.val$activity);
            SensorsDataDialogUtils.dialogShowDismissOld(sensorsDataLoadingDialog);
            SensorsDataRemoteManagerDebug.this.requestRemoteConfig(false, (HttpCallback.StringCallback) new C03611(sensorsDataLoadingDialog));
        }
    }

    public class AnonymousClass2 implements DialogInterface.OnClickListener {
        final Activity val$activity;

        public AnonymousClass2(Activity activity) {
            this.val$activity = activity;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SensorsDataDialogUtils.startLaunchActivity(this.val$activity);
        }
    }

    public SensorsDataRemoteManagerDebug(SensorsDataAPI sensorsDataAPI) {
        super(sensorsDataAPI);
        this.errorMsg = "";
        SALog.i(TAG, "remote config: Construct a SensorsDataRemoteManagerDebug");
    }

    private boolean verifyRemoteRequestParameter(Uri uri, Activity activity) {
        boolean z;
        String queryParameter = uri.getQueryParameter("app_id");
        String queryParameter2 = uri.getQueryParameter("os");
        String queryParameter3 = uri.getQueryParameter("project");
        String queryParameter4 = uri.getQueryParameter("nv");
        String serverUrl = this.mSensorsDataAPI.getServerUrl();
        String project = !TextUtils.isEmpty(serverUrl) ? new ServerUrl(serverUrl).getProject() : "";
        SALog.i(TAG, "remote config: ServerUrl is " + serverUrl);
        Context context = this.mContext;
        if (PinkiePie.DianePieNull()) {
            SensorsDataAPI sensorsDataAPI = this.mSensorsDataAPI;
            if (sensorsDataAPI != null && !sensorsDataAPI.isNetworkRequestEnable()) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_disable_network);
                SALog.i(TAG, "enableNetworkRequest is false");
            } else if (this.mDisableDefaultRemoteConfig) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_disable_remote);
                SALog.i(TAG, "disableDefaultRemoteConfig is true");
            } else if (!project.equals(queryParameter3)) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_project);
            } else if (!"Android".equals(queryParameter2)) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_os);
            } else {
                if (AppInfoUtils.getProcessName(activity).equals(queryParameter)) {
                    if (TextUtils.isEmpty(queryParameter4)) {
                        this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_qrcode);
                    } else {
                        z = true;
                    }
                    SALog.i(TAG, "remote config: Uri is " + uri.toString());
                    SALog.i(TAG, "remote config: The verification result is " + z);
                    return z;
                }
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_appid);
            }
        } else {
            this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_network);
        }
        z = false;
        SALog.i(TAG, "remote config: Uri is " + uri.toString());
        SALog.i(TAG, "remote config: The verification result is " + z);
        return z;
    }

    @Override
    public void applySDKConfigFromCache() {
        SALog.i(TAG, "remote config: Running applySDKConfigFromCache");
    }

    public void checkRemoteConfig(Uri uri, Activity activity) {
        if (!verifyRemoteRequestParameter(uri, activity)) {
            String str = this.errorMsg;
            PinkiePie.DianePie();
            return;
        }
        SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_title);
        SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_config);
        SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_continue);
        new AnonymousClass1(activity, uri);
        SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_cancel);
        new AnonymousClass2(activity);
        PinkiePie.DianePie();
    }

    @Override
    public void pullSDKConfigFromServer() {
        SALog.i(TAG, "remote config: Running pullSDKConfigFromServer");
    }

    @Override
    public void requestRemoteConfig(BaseSensorsDataSDKRemoteManager.RandomTimeType randomTimeType, boolean z) {
        SALog.i(TAG, "remote config: Running requestRemoteConfig");
    }

    @Override
    public void resetPullSDKConfigTimer() {
        SALog.i(TAG, "remote config: Running resetPullSDKConfigTimer");
    }

    @Override
    public void setSDKRemoteConfig(SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("$app_remote_config", sensorsDataSDKRemoteConfig.toJson().put("debug", true).toString());
            SensorsDataAPI.sharedInstance().trackInternal("$AppRemoteConfigChanged", jSONObject);
            SensorsDataAPI.sharedInstance().flush();
            BaseSensorsDataSDKRemoteManager.mSDKRemoteConfig = sensorsDataSDKRemoteConfig;
            SALog.i(TAG, "remote config: The remote configuration takes effect immediately");
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}

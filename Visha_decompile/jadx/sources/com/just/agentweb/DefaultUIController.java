package com.just.agentweb;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

public class DefaultUIController extends AbsAgentWebUIController {
    private Activity mActivity;
    private AlertDialog mAlertDialog;
    protected AlertDialog mConfirmDialog;
    private ProgressDialog mProgressDialog;
    private WebParentLayout mWebParentLayout;
    private JsPromptResult mJsPromptResult = null;
    private JsResult mJsResult = null;
    private AlertDialog mPromptDialog = null;
    private AlertDialog mAskOpenOtherAppDialog = null;
    private Resources mResources = null;

    private void onForceDownloadAlertInternal(final Handler.Callback callback) {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        new AlertDialog.Builder(activity).setTitle(this.mResources.getString(R.string.agentweb_tips)).setMessage(this.mResources.getString(R.string.agentweb_honeycomblow)).setNegativeButton(this.mResources.getString(R.string.agentweb_download), new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                Handler.Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.handleMessage(Message.obtain());
                }
            }
        }).setPositiveButton(this.mResources.getString(R.string.agentweb_cancel), new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        }).create().show();
    }

    private void onJsConfirmInternal(String str, JsResult jsResult) {
        LogUtils.i(this.TAG, "activity:" + this.mActivity.hashCode() + "  ");
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing()) {
            toCancelJsresult(jsResult);
            return;
        }
        if (activity.isDestroyed()) {
            toCancelJsresult(jsResult);
            return;
        }
        if (this.mConfirmDialog == null) {
            this.mConfirmDialog = new AlertDialog.Builder(activity).setMessage(str).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    DefaultUIController defaultUIController = DefaultUIController.this;
                    defaultUIController.toDismissDialog(defaultUIController.mConfirmDialog);
                    DefaultUIController defaultUIController2 = DefaultUIController.this;
                    defaultUIController2.toCancelJsresult(defaultUIController2.mJsResult);
                }
            }).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    DefaultUIController defaultUIController = DefaultUIController.this;
                    defaultUIController.toDismissDialog(defaultUIController.mConfirmDialog);
                    if (DefaultUIController.this.mJsResult != null) {
                        DefaultUIController.this.mJsResult.confirm();
                    }
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override
                public void onCancel(DialogInterface dialogInterface) {
                    dialogInterface.dismiss();
                    DefaultUIController defaultUIController = DefaultUIController.this;
                    defaultUIController.toCancelJsresult(defaultUIController.mJsResult);
                }
            }).create();
        }
        this.mConfirmDialog.setMessage(str);
        this.mJsResult = jsResult;
        this.mConfirmDialog.show();
    }

    private void onJsPromptInternal(String str, String str2, JsPromptResult jsPromptResult) {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing()) {
            jsPromptResult.cancel();
            return;
        }
        if (activity.isDestroyed()) {
            jsPromptResult.cancel();
            return;
        }
        if (this.mPromptDialog == null) {
            final EditText editText = new EditText(activity);
            editText.setText(str2);
            this.mPromptDialog = new AlertDialog.Builder(activity).setView(editText).setTitle(str).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    DefaultUIController defaultUIController = DefaultUIController.this;
                    defaultUIController.toDismissDialog(defaultUIController.mPromptDialog);
                    DefaultUIController defaultUIController2 = DefaultUIController.this;
                    defaultUIController2.toCancelJsresult(defaultUIController2.mJsPromptResult);
                }
            }).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    DefaultUIController defaultUIController = DefaultUIController.this;
                    defaultUIController.toDismissDialog(defaultUIController.mPromptDialog);
                    if (DefaultUIController.this.mJsPromptResult != null) {
                        DefaultUIController.this.mJsPromptResult.confirm(editText.getText().toString());
                    }
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override
                public void onCancel(DialogInterface dialogInterface) {
                    dialogInterface.dismiss();
                    DefaultUIController defaultUIController = DefaultUIController.this;
                    defaultUIController.toCancelJsresult(defaultUIController.mJsPromptResult);
                }
            }).create();
        }
        this.mJsPromptResult = jsPromptResult;
        this.mPromptDialog.show();
    }

    private void showChooserInternal(String[] strArr, final Handler.Callback callback) {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).setSingleChoiceItems(strArr, -1, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                LogUtils.i(DefaultUIController.this.TAG, "which:" + i);
                if (callback != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i;
                    callback.handleMessage(messageObtain);
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public void onCancel(DialogInterface dialogInterface) {
                dialogInterface.dismiss();
                Handler.Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.handleMessage(Message.obtain((Handler) null, -1));
                }
            }
        }).create();
        this.mAlertDialog = alertDialogCreate;
        alertDialogCreate.show();
    }

    public void toCancelJsresult(JsResult jsResult) {
        if (jsResult != null) {
            jsResult.cancel();
        }
    }

    @Override
    public void bindSupportWebParent(WebParentLayout webParentLayout, Activity activity) {
        this.mActivity = activity;
        this.mWebParentLayout = webParentLayout;
        this.mResources = activity.getResources();
    }

    @Override
    public void onCancelLoading() {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
        this.mProgressDialog = null;
    }

    @Override
    public void onForceDownloadAlert(String str, Handler.Callback callback) {
        onForceDownloadAlertInternal(callback);
    }

    @Override
    public void onJsAlert(WebView webView, String str, String str2) {
        AgentWebUtils.toastShowShort(webView.getContext().getApplicationContext(), str2);
    }

    @Override
    public void onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        onJsConfirmInternal(str2, jsResult);
    }

    @Override
    public void onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        onJsPromptInternal(str2, str3, jsPromptResult);
    }

    @Override
    public void onLoading(String str) {
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        if (this.mProgressDialog == null) {
            this.mProgressDialog = new ProgressDialog(activity);
        }
        this.mProgressDialog.setCancelable(false);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setMessage(str);
        this.mProgressDialog.show();
    }

    @Override
    public void onMainFrameError(WebView webView, int i, String str, String str2) {
        LogUtils.i(this.TAG, "mWebParentLayout onMainFrameError:" + this.mWebParentLayout);
        WebParentLayout webParentLayout = this.mWebParentLayout;
        if (webParentLayout != null) {
            webParentLayout.showPageMainFrameError();
        }
    }

    @Override
    public void onOpenPagePrompt(WebView webView, String str, final Handler.Callback callback) {
        LogUtils.i(this.TAG, "onOpenPagePrompt");
        Activity activity = this.mActivity;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        if (this.mAskOpenOtherAppDialog == null) {
            this.mAskOpenOtherAppDialog = new AlertDialog.Builder(activity).setMessage(this.mResources.getString(R.string.agentweb_leave_app_and_go_other_page, AgentWebUtils.getApplicationName(activity))).setTitle(this.mResources.getString(R.string.agentweb_tips)).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    Handler.Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.handleMessage(Message.obtain((Handler) null, -1));
                    }
                }
            }).setPositiveButton(this.mResources.getString(R.string.agentweb_leave), new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    Handler.Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.handleMessage(Message.obtain((Handler) null, 1));
                    }
                }
            }).create();
        }
        this.mAskOpenOtherAppDialog.show();
    }

    @Override
    @RequiresApi(api = 21)
    public void onPermissionRequest(final PermissionRequest permissionRequest) {
        final String[] resources = permissionRequest.getResources();
        HashSet hashSet = new HashSet(Arrays.asList(resources));
        ArrayList arrayList = new ArrayList(hashSet.size());
        if (hashSet.contains("android.webkit.resource.VIDEO_CAPTURE")) {
            arrayList.add("android.permission.CAMERA");
        }
        if (hashSet.contains("android.webkit.resource.AUDIO_CAPTURE")) {
            arrayList.add("android.permission.RECORD_AUDIO");
        }
        if (arrayList.isEmpty()) {
            permissionRequest.grant(resources);
            return;
        }
        final List<String> deniedPermissions = AgentWebUtils.getDeniedPermissions(this.mActivity, (String[]) arrayList.toArray(new String[0]));
        if (deniedPermissions.isEmpty()) {
            permissionRequest.grant(resources);
            return;
        }
        Action actionCreatePermissionsAction = Action.createPermissionsAction((String[]) deniedPermissions.toArray(new String[0]));
        actionCreatePermissionsAction.setPermissionListener(new AgentActionFragment.PermissionListener() {
            @Override
            public void onRequestPermissionsResult(@NonNull String[] strArr, @NonNull int[] iArr, Bundle bundle) {
                if (AgentWebUtils.getDeniedPermissions(DefaultUIController.this.mActivity, (String[]) deniedPermissions.toArray(new String[0])).isEmpty()) {
                    permissionRequest.grant(resources);
                } else {
                    permissionRequest.deny();
                }
            }
        });
        AgentActionFragment.start(this.mActivity, actionCreatePermissionsAction);
    }

    @Override
    public void onPermissionsDeny(String[] strArr, String str, String str2) {
    }

    @Override
    public void onSelectItemsPrompt(WebView webView, String str, String[] strArr, Handler.Callback callback) {
        showChooserInternal(strArr, callback);
    }

    @Override
    public void onShowMainFrame() {
        WebParentLayout webParentLayout = this.mWebParentLayout;
        if (webParentLayout != null) {
            webParentLayout.hideErrorLayout();
        }
    }

    @Override
    public void onShowMessage(String str, String str2) {
        if (TextUtils.isEmpty(str2) || !str2.contains("performDownload")) {
            AgentWebUtils.toastShowShort(this.mActivity.getApplicationContext(), str);
        }
    }

    @Override
    public void onShowSslCertificateErrorDialog(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
        String string;
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
        int primaryError = sslError.getPrimaryError();
        if (primaryError == 0) {
            string = this.mActivity.getString(R.string.agentweb_message_show_ssl_not_yet_valid);
        } else if (primaryError == 1) {
            string = this.mActivity.getString(R.string.agentweb_message_show_ssl_expired);
        } else if (primaryError != 2) {
            string = primaryError != 3 ? this.mActivity.getString(R.string.agentweb_message_show_ssl_error) : this.mActivity.getString(R.string.agentweb_message_show_ssl_untrusted);
        } else {
            string = this.mActivity.getString(R.string.agentweb_message_show_ssl_hostname_mismatch);
        }
        String str = string + this.mActivity.getString(R.string.agentweb_message_show_continue);
        builder.setTitle(this.mActivity.getString(R.string.agentweb_title_ssl_error));
        builder.setMessage(str);
        builder.setPositiveButton(R.string.agentweb_continue, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                sslErrorHandler.proceed();
            }
        });
        builder.setNegativeButton(R.string.agentweb_cancel, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                sslErrorHandler.cancel();
            }
        });
        builder.show();
    }
}

package com.transsion.playercommon.vishaweb.jsbridge;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.DialogInterface;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.playercommon.R;
import com.transsion.playercommon.vishaweb.VishaWebViewActivity;
import com.transsion.playercommon.vishaweb.jsbridge.DefaultJsToNative;
import com.transsion.playercommon.vishaweb.jsdata.JsParam;
import com.transsion.widgetslib.dialog.d;
import defpackage.c07;
import defpackage.fi1;
import defpackage.g;
import defpackage.hb0;
import defpackage.vdb;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

@SuppressLint({"ParcelCreator"})
public class DefaultJsToNative implements IJsToNative {
    private static final String TAG = "visha_DefaultJsToNative";
    private WeakReference<VishaWebViewActivity> mVishaWebActivityWR;

    public class AnonymousClass1 extends ThreadUtils.Task<String> {
        final String val$feedbackId;

        public AnonymousClass1(String str) {
            this.val$feedbackId = str;
        }

        public void lambda$onSuccess$0(VishaWebViewActivity vishaWebViewActivity, String str, String str2) {
            DefaultJsToNative.this.showUploadConfirmDialog(vishaWebViewActivity, str, str2);
        }

        @Override
        public void onCancel() {
        }

        @Override
        public void onFail(Throwable th) {
        }

        @Override
        public String doInBackground() throws Throwable {
            try {
                List listI = vdb.i(Long.valueOf(System.currentTimeMillis()));
                if (listI != null && !listI.isEmpty()) {
                    return DefaultJsToNative.calculateTotalFileSize(listI);
                }
                Log.d(DefaultJsToNative.TAG, "doInBackground isEmpty");
                return "";
            } catch (Exception e) {
                Log.e(DefaultJsToNative.TAG, "onUbtUpload doInBackground error" + e.getMessage());
                return "";
            }
        }

        @Override
        public void onSuccess(final String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            final VishaWebViewActivity vishaWebViewActivity = DefaultJsToNative.this.mVishaWebActivityWR != null ? (VishaWebViewActivity) DefaultJsToNative.this.mVishaWebActivityWR.get() : null;
            if (vishaWebViewActivity == null) {
                return;
            }
            final String str2 = this.val$feedbackId;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onSuccess$0(vishaWebViewActivity, str, str2);
                }
            });
        }
    }

    public static String calculateTotalFileSize(List<File> list) {
        if (list == null || list.isEmpty()) {
            return "0KB";
        }
        long length = 0;
        for (File file : list) {
            if (file != null && file.exists()) {
                length += file.length();
            }
        }
        if (length >= 1073741824) {
            return String.format("%.2fGB", Double.valueOf(length / 1.073741824E9d));
        }
        return length >= 1048576 ? String.format("%.2fMB", Double.valueOf(length / 1048576.0d)) : String.format("%.2fKB", Double.valueOf(length / 1024.0d));
    }

    public static void lambda$showUploadConfirmDialog$1(DialogInterface dialogInterface, int i) {
    }

    public void showUploadConfirmDialog(VishaWebViewActivity vishaWebViewActivity, String str, final String str2) {
        try {
            View viewInflate = LayoutInflater.from(vishaWebViewActivity).inflate(R.layout.dialog_upload_confirm, (ViewGroup) null, false);
            ((TextView) viewInflate.findViewById(R.id.info)).setText(R.string.visha_upload_log_not_wifi_hint);
            ((TextView) viewInflate.findViewById(R.id.tip)).setText(vishaWebViewActivity.getResources().getString(R.string.visha_upload_log_size, str));
            new d.a(vishaWebViewActivity).B("").E(viewInflate).f(false).u(R.string.video_preview_continue, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    vdb.n(null, str2);
                }
            }).m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    DefaultJsToNative.lambda$showUploadConfirmDialog$1(dialogInterface, i);
                }
            }).F();
        } catch (Exception e) {
            Log.e(TAG, "showUploadConfirmDialog error" + e.getMessage());
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Activity getVishaWebActivity() {
        return this.mVishaWebActivityWR.get();
    }

    @Override
    public void jsToNative(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JsParam jsParam = (JsParam) fi1.b(g.a(str), JsParam.class);
        if (jsParam == null) {
            LogUtils.m(TAG, "Default JsToNative,js param is null ");
            return;
        }
        LogUtils.j(TAG, "Default JsToNative: " + jsParam);
        int type = jsParam.getType();
        if (type == 8) {
            onMarkPoint(jsParam);
        } else if (type == 13) {
            onUbtUpload(jsParam);
        }
        WeakReference<VishaWebViewActivity> weakReference = this.mVishaWebActivityWR;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.mVishaWebActivityWR.get().D0(jsParam.getType(), jsParam.getParams());
    }

    public void onMarkPoint(JsParam jsParam) {
        if (jsParam == null || jsParam.getParams() == null) {
            return;
        }
        hb0.markTrackMap((String) jsParam.getParams().get(NotificationCompat.CATEGORY_EVENT), (Map) jsParam.getParams().get("post"));
    }

    public void onUbtUpload(JsParam jsParam) {
        if (jsParam != null) {
            try {
                if (jsParam.getParams() != null) {
                    String str = (String) jsParam.getParams().get(TtmlNode.ATTR_ID);
                    boolean zBooleanValue = ((Boolean) jsParam.getParams().get("isUploadLog")).booleanValue();
                    if (!TextUtils.isEmpty(str) && zBooleanValue && vdb.d) {
                        if (c07.c(this.mVishaWebActivityWR.get())) {
                            vdb.n(null, str);
                        } else {
                            ThreadUtils.f(new AnonymousClass1(str));
                        }
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "onUbtUpload" + e.getMessage());
            }
        }
    }

    public void setVishaWebActivityWR(VishaWebViewActivity vishaWebViewActivity) {
        this.mVishaWebActivityWR = new WeakReference<>(vishaWebViewActivity);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
    }
}

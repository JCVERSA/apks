package com.just.agentweb.filechooser;

import android.app.Activity;
import android.content.ClipData;
import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AbsAgentWebUIController;
import com.just.agentweb.Action;
import com.just.agentweb.AgentActionFragment;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.AgentWebPermissions;
import com.just.agentweb.AgentWebUtils;
import com.just.agentweb.PermissionInterceptor;
import com.just.agentweb.R;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONArray;
import org.json.JSONObject;

public class FileChooser {
    public static int MAX_WAIT_PHOTO_MS = 8000;
    public static final int REQUEST_CODE = 596;
    private static final String TAG = "FileChooser";
    private String mAcceptType;
    private final Activity mActivity;
    private WeakReference<AbsAgentWebUIController> mAgentWebUIController;
    private final WebChromeClient.FileChooserParams mFileChooserParams;
    private boolean mJsChannel;
    private JsChannelCallback mJsChannelCallback;
    private final PermissionInterceptor mPermissionInterceptor;
    private final ValueCallback<Uri> mUriValueCallback;
    private final ValueCallback<Uri[]> mUriValueCallbacks;
    private final WebView mWebView;
    private boolean mCameraState = false;
    private boolean mVideoState = false;
    private final int FROM_INTENTION_CODE = 21;
    private final AgentActionFragment.PermissionListener mPermissionListener = new AgentActionFragment.PermissionListener() {
        @Override
        public void onRequestPermissionsResult(@NonNull String[] strArr, @NonNull int[] iArr, Bundle bundle) {
            FileChooser.this.permissionResult(AgentWebUtils.hasPermission(FileChooser.this.mActivity, (List<String>) Arrays.asList(strArr)), bundle.getInt(AgentActionFragment.KEY_FROM_INTENTION));
        }
    };
    private final AgentActionFragment.RationaleListener mRationaleListener = new AgentActionFragment.RationaleListener() {
        @Override
        public void onRationaleResult(boolean z, Bundle bundle) {
            Log.d(FileChooser.TAG, "onRationaleResult: " + z);
        }
    };

    public static final class AboveLCallback implements Handler.Callback {
        private final WeakReference<AbsAgentWebUIController> controller;
        private final Uri[] mUris;
        private final ValueCallback<Uri[]> mValueCallback;

        public void safeHandleMessage(Message message) {
            ValueCallback<Uri[]> valueCallback = this.mValueCallback;
            if (valueCallback != null) {
                FileChooser.fileCompressAndValuesCallback(this.mUris, valueCallback);
            }
            WeakReference<AbsAgentWebUIController> weakReference = this.controller;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.controller.get().onCancelLoading();
        }

        @Override
        public boolean handleMessage(final Message message) {
            AgentWebUtils.runInUiThread(new Runnable() {
                @Override
                public void run() {
                    AboveLCallback.this.safeHandleMessage(message);
                }
            });
            return false;
        }

        private AboveLCallback(ValueCallback<Uri[]> valueCallback, Uri[] uriArr, WeakReference<AbsAgentWebUIController> weakReference) {
            this.mValueCallback = valueCallback;
            this.mUris = uriArr;
            this.controller = weakReference;
        }
    }

    public static final class Builder {
        private Activity mActivity;
        private WebChromeClient.FileChooserParams mFileChooserParams;
        private Handler.Callback mJsChannelCallback;
        private PermissionInterceptor mPermissionInterceptor;
        private ValueCallback<Uri> mUriValueCallback;
        private ValueCallback<Uri[]> mUriValueCallbacks;
        private WebView mWebView;
        private boolean mJsChannel = false;
        private String mAcceptType = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;

        public FileChooser build() {
            return new FileChooser(this);
        }

        public Builder setAcceptType(String str) {
            this.mAcceptType = str;
            return this;
        }

        public Builder setActivity(Activity activity) {
            this.mActivity = activity;
            return this;
        }

        public Builder setFileChooserParams(WebChromeClient.FileChooserParams fileChooserParams) {
            this.mFileChooserParams = fileChooserParams;
            return this;
        }

        public Builder setJsChannelCallback(Handler.Callback callback) {
            this.mJsChannelCallback = callback;
            this.mJsChannel = true;
            this.mUriValueCallback = null;
            this.mUriValueCallbacks = null;
            return this;
        }

        public Builder setPermissionInterceptor(PermissionInterceptor permissionInterceptor) {
            this.mPermissionInterceptor = permissionInterceptor;
            return this;
        }

        public Builder setUriValueCallback(ValueCallback<Uri> valueCallback) {
            this.mUriValueCallback = valueCallback;
            this.mJsChannel = false;
            this.mUriValueCallbacks = null;
            return this;
        }

        public Builder setUriValueCallbacks(ValueCallback<Uri[]> valueCallback) {
            this.mUriValueCallbacks = valueCallback;
            this.mUriValueCallback = null;
            this.mJsChannel = false;
            return this;
        }

        public Builder setWebView(WebView webView) {
            this.mWebView = webView;
            return this;
        }
    }

    public static class CovertFileThread implements Runnable {
        private final WeakReference<JsChannelCallback> mJsChannelCallback;
        private final String[] paths;

        @Override
        public void run() {
            String name = Thread.currentThread().getName();
            Thread.currentThread().setName("agentweb-thread");
            try {
                try {
                    String strConvertFileParcelObjectsToJson = FileChooser.convertFileParcelObjectsToJson(FileChooser.convertFile(this.paths));
                    WeakReference<JsChannelCallback> weakReference = this.mJsChannelCallback;
                    if (weakReference != null && weakReference.get() != null) {
                        this.mJsChannelCallback.get().call(strConvertFileParcelObjectsToJson);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } finally {
                Thread.currentThread().setName(name);
            }
        }

        private CovertFileThread(JsChannelCallback jsChannelCallback, String[] strArr) {
            this.mJsChannelCallback = new WeakReference<>(jsChannelCallback);
            this.paths = strArr;
        }
    }

    public static class EncodeFileRunnable implements Runnable {
        private final String filePath;
        private final int id;
        private final CountDownLatch mCountDownLatch;
        private final Queue<FileParcel> mQueue;

        public EncodeFileRunnable(String str, Queue<FileParcel> queue, CountDownLatch countDownLatch, int i) {
            this.filePath = str;
            this.mQueue = queue;
            this.mCountDownLatch = countDownLatch;
            this.id = i;
        }

        @Override
        public void run() {
            FileInputStream fileInputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            Throwable th;
            FileInputStream fileInputStream2 = null;
            try {
                File file = new File(this.filePath);
                Log.e(FileChooser.TAG, "encode file:" + file.length());
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i = fileInputStream.read(bArr, 0, 1024);
                                if (i == -1) {
                                    break;
                                } else {
                                    byteArrayOutputStream.write(bArr, 0, i);
                                }
                            }
                            this.mQueue.offer(new FileParcel(this.id, file.getAbsolutePath(), Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0)));
                            fileInputStream2 = fileInputStream;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                th.printStackTrace();
                                AgentWebUtils.closeIO(fileInputStream);
                            } finally {
                                AgentWebUtils.closeIO(fileInputStream);
                                AgentWebUtils.closeIO(byteArrayOutputStream);
                                this.mCountDownLatch.countDown();
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        byteArrayOutputStream = null;
                        th = th;
                        th.printStackTrace();
                        AgentWebUtils.closeIO(fileInputStream);
                    }
                } else {
                    byteArrayOutputStream = null;
                }
                AgentWebUtils.closeIO(fileInputStream2);
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                byteArrayOutputStream = null;
            }
        }
    }

    public static class JsChannelCallback {
        WeakReference<Handler.Callback> callback;

        public JsChannelCallback(Handler.Callback callback) {
            this.callback = null;
            this.callback = new WeakReference<>(callback);
        }

        public static JsChannelCallback create(Handler.Callback callback) {
            return new JsChannelCallback(callback);
        }

        public void call(String str) {
            WeakReference<Handler.Callback> weakReference = this.callback;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.callback.get().handleMessage(Message.obtain(null, 2077613503, str));
        }
    }

    public static final class WaitPhotoRunnable implements Runnable {
        private Handler.Callback mCallback;
        private String path;

        @Override
        public void run() {
            Handler.Callback callback;
            if (TextUtils.isEmpty(this.path) || !new File(this.path).exists()) {
                Handler.Callback callback2 = this.mCallback;
                if (callback2 != null) {
                    callback2.handleMessage(Message.obtain((Handler) null, -1));
                    return;
                }
                return;
            }
            int i = 0;
            while (i <= FileChooser.MAX_WAIT_PHOTO_MS) {
                i += 300;
                SystemClock.sleep(300L);
                if (new File(this.path).length() > 0) {
                    Handler.Callback callback3 = this.mCallback;
                    if (callback3 == null) {
                        break;
                    }
                    callback3.handleMessage(Message.obtain((Handler) null, 1));
                    this.mCallback = null;
                    break;
                }
            }
            if (i > FileChooser.MAX_WAIT_PHOTO_MS && (callback = this.mCallback) != null) {
                callback.handleMessage(Message.obtain((Handler) null, -1));
            }
            this.mCallback = null;
            this.path = null;
        }

        private WaitPhotoRunnable(String str, Handler.Callback callback) {
            this.path = str;
            this.mCallback = callback;
        }
    }

    public FileChooser(Builder builder) {
        this.mJsChannel = false;
        this.mAgentWebUIController = null;
        this.mAcceptType = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
        this.mActivity = builder.mActivity;
        this.mUriValueCallback = builder.mUriValueCallback;
        this.mUriValueCallbacks = builder.mUriValueCallbacks;
        this.mJsChannel = builder.mJsChannel;
        this.mFileChooserParams = builder.mFileChooserParams;
        if (this.mJsChannel) {
            this.mJsChannelCallback = JsChannelCallback.create(builder.mJsChannelCallback);
        }
        WebView webView = builder.mWebView;
        this.mWebView = webView;
        this.mPermissionInterceptor = builder.mPermissionInterceptor;
        this.mAcceptType = builder.mAcceptType;
        this.mAgentWebUIController = new WeakReference<>(AgentWebUtils.getAgentWebUIControllerByWebView(webView));
    }

    private void aboveLollipopCheckFilesAndCallback(Uri[] uriArr, boolean z) {
        if (this.mUriValueCallbacks == null) {
            return;
        }
        if (uriArr != null && uriArr.length > 0) {
            ContentResolver contentResolver = this.mActivity.getContentResolver();
            for (Uri uri : uriArr) {
                try {
                    contentResolver.takePersistableUriPermission(uri, 3);
                } catch (Throwable th) {
                    if (AgentWebConfig.DEBUG) {
                        th.printStackTrace();
                    }
                }
            }
        }
        if (!z) {
            if (uriArr == null) {
                uriArr = new Uri[0];
            }
            fileCompressAndValuesCallback(uriArr, this.mUriValueCallbacks);
            return;
        }
        if (this.mAgentWebUIController.get() == null) {
            this.mUriValueCallbacks.onReceiveValue(null);
            return;
        }
        String[] strArrUriToPath = AgentWebUtils.uriToPath(this.mActivity, uriArr);
        if (strArrUriToPath == null || strArrUriToPath.length == 0) {
            this.mUriValueCallbacks.onReceiveValue(null);
            return;
        }
        String str = strArrUriToPath[0];
        this.mAgentWebUIController.get().onLoading(this.mActivity.getString(R.string.agentweb_loading));
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new WaitPhotoRunnable(str, new AboveLCallback(this.mUriValueCallbacks, uriArr, this.mAgentWebUIController)));
    }

    private void belowLollipopUriCallback(Intent intent) {
        if (intent == null) {
            ValueCallback<Uri> valueCallback = this.mUriValueCallback;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(Uri.EMPTY);
                return;
            }
            return;
        }
        Uri data = intent.getData();
        ValueCallback<Uri> valueCallback2 = this.mUriValueCallback;
        if (valueCallback2 != null) {
            fileCompressAndValuesCallback(data, valueCallback2);
        }
    }

    public void cancel() {
        if (this.mJsChannel) {
            this.mJsChannelCallback.call(null);
            return;
        }
        ValueCallback<Uri> valueCallback = this.mUriValueCallback;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
        ValueCallback<Uri[]> valueCallback2 = this.mUriValueCallbacks;
        if (valueCallback2 != null) {
            valueCallback2.onReceiveValue(null);
        }
    }

    private List<String> checkNeedPermission() {
        ArrayList arrayList = new ArrayList();
        Activity activity = this.mActivity;
        String[] strArr = AgentWebPermissions.CAMERA;
        if (!AgentWebUtils.hasPermission(activity, strArr)) {
            arrayList.add(strArr[0]);
            LogUtils.j(TAG, "no camera permission");
        }
        if (Build.VERSION.SDK_INT >= 33) {
            Activity activity2 = this.mActivity;
            String[] strArr2 = AgentWebPermissions.MEDIA;
            if (!AgentWebUtils.hasPermission(activity2, strArr2)) {
                arrayList.addAll(Arrays.asList(strArr2));
                LogUtils.j(TAG, "no media permission");
            }
        } else {
            Activity activity3 = this.mActivity;
            String[] strArr3 = AgentWebPermissions.STORAGE;
            if (!AgentWebUtils.hasPermission(activity3, strArr3)) {
                arrayList.addAll(Arrays.asList(strArr3));
                LogUtils.j(TAG, "no storage permission");
            }
        }
        return arrayList;
    }

    public static Queue<FileParcel> convertFile(String[] strArr) throws Exception {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        int i = 1;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        if (strArr.length <= iAvailableProcessors) {
            iAvailableProcessors = strArr.length;
        }
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(iAvailableProcessors);
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        CountDownLatch countDownLatch = new CountDownLatch(strArr.length);
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                countDownLatch.countDown();
            } else {
                executorServiceNewFixedThreadPool.execute(new EncodeFileRunnable(str, linkedBlockingQueue, countDownLatch, i));
                i++;
            }
        }
        countDownLatch.await();
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executorServiceNewFixedThreadPool;
        if (!threadPoolExecutor.isShutdown()) {
            threadPoolExecutor.shutdownNow();
        }
        return linkedBlockingQueue;
    }

    private void convertFileAndCallback(Uri[] uriArr) {
        String[] strArrUriToPath;
        if (uriArr == null || uriArr.length == 0 || (strArrUriToPath = AgentWebUtils.uriToPath(this.mActivity, uriArr)) == null || strArrUriToPath.length == 0) {
            this.mJsChannelCallback.call(null);
        } else {
            FileCompressor.getInstance().fileCompress("customize", uriArr, new ValueCallback<Uri[]>() {
                @Override
                public void onReceiveValue(Uri[] uriArr2) {
                    String[] strArrUriToPath2 = AgentWebUtils.uriToPath(FileChooser.this.mActivity, uriArr2);
                    if (strArrUriToPath2 == null || strArrUriToPath2.length == 0) {
                        FileChooser.this.mJsChannelCallback.call(null);
                        return;
                    }
                    int length = 0;
                    for (String str : strArrUriToPath2) {
                        if (!TextUtils.isEmpty(str)) {
                            File file = new File(str);
                            if (file.exists()) {
                                length = (int) (((long) length) + file.length());
                            }
                        }
                    }
                    if (length <= AgentWebConfig.MAX_FILE_LENGTH) {
                        AsyncTask.THREAD_POOL_EXECUTOR.execute(new CovertFileThread(FileChooser.this.mJsChannelCallback, strArrUriToPath2));
                        return;
                    }
                    if (FileChooser.this.mAgentWebUIController.get() != null) {
                        ((AbsAgentWebUIController) FileChooser.this.mAgentWebUIController.get()).onShowMessage(FileChooser.this.mActivity.getString(R.string.agentweb_max_file_length_limit, ((AgentWebConfig.MAX_FILE_LENGTH / 1024) / 1024) + ""), "convertFileAndCallback");
                    }
                    FileChooser.this.mJsChannelCallback.call(null);
                }
            });
        }
    }

    public static String convertFileParcelObjectsToJson(Collection<FileParcel> collection) {
        if (collection == null || collection.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (FileParcel fileParcel : collection) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("contentPath", fileParcel.getContentPath());
                jSONObject.put("fileBase64", fileParcel.getFileBase64());
                jSONObject.put("mId", fileParcel.getId());
                jSONArray.put(jSONObject);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return jSONArray + "";
    }

    public void fileChooser() {
        String[] strArr = Build.VERSION.SDK_INT >= 33 ? AgentWebPermissions.MEDIA : AgentWebPermissions.STORAGE;
        if (AgentWebUtils.getDeniedPermissions(this.mActivity, strArr).isEmpty()) {
            touchOffFileChooserAction();
            return;
        }
        Action actionCreatePermissionsAction = Action.createPermissionsAction(strArr);
        actionCreatePermissionsAction.setFromIntention(5);
        actionCreatePermissionsAction.setPermissionListener(this.mPermissionListener);
        AgentActionFragment.start(this.mActivity, actionCreatePermissionsAction);
    }

    public static void fileCompressAndValuesCallback(Uri[] uriArr, final ValueCallback<Uri[]> valueCallback) {
        FileCompressor.getInstance().fileCompress("system", uriArr, new ValueCallback<Uri[]>() {
            @Override
            public void onReceiveValue(Uri[] uriArr2) {
                ValueCallback valueCallback2 = valueCallback;
                if (valueCallback2 != null) {
                    valueCallback2.onReceiveValue(uriArr2);
                }
            }
        });
    }

    private Handler.Callback getCallBack() {
        return new Handler.Callback() {
            @Override
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    FileChooser.this.mCameraState = true;
                    FileChooser.this.onCameraAction();
                } else if (i != 1) {
                    FileChooser.this.cancel();
                } else {
                    FileChooser.this.mCameraState = false;
                    FileChooser.this.fileChooser();
                }
                return true;
            }
        };
    }

    private AgentActionFragment.ChooserListener getChooserListener() {
        return new AgentActionFragment.ChooserListener() {
            @Override
            public void onChoiceResult(int i, int i2, Intent intent) {
                FileChooser.this.onIntentResult(i, i2, intent);
            }
        };
    }

    private Intent getFileChooserIntent() {
        Intent intentCreateIntent;
        WebChromeClient.FileChooserParams fileChooserParams = this.mFileChooserParams;
        if (fileChooserParams == null || (intentCreateIntent = fileChooserParams.createIntent()) == null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.OPEN_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            if (TextUtils.isEmpty(this.mAcceptType)) {
                intent.setType(SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
            } else {
                intent.setType(this.mAcceptType);
            }
            intent.addFlags(1);
            return Intent.createChooser(intent, "");
        }
        if (this.mFileChooserParams.getMode() == 1) {
            intentCreateIntent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        if (this.mFileChooserParams.getAcceptTypes() != null && this.mFileChooserParams.getAcceptTypes().length > 1) {
            intentCreateIntent.putExtra("android.intent.extra.MIME_TYPES", this.mFileChooserParams.getAcceptTypes());
        }
        if (Objects.equals(intentCreateIntent.getAction(), "android.intent.action.GET_CONTENT")) {
            intentCreateIntent.setAction("android.intent.action.OPEN_DOCUMENT");
        }
        return intentCreateIntent;
    }

    private Intent getGalleryIntent() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "video/*;image/*");
        intent.setFlags(3);
        return intent;
    }

    public static Builder newBuilder(Activity activity, WebView webView) {
        return new Builder().setActivity(activity).setWebView(webView);
    }

    public void onCameraAction() {
        if (this.mActivity == null) {
            return;
        }
        PermissionInterceptor permissionInterceptor = this.mPermissionInterceptor;
        if (permissionInterceptor != null && permissionInterceptor.intercept(this.mWebView.getUrl(), AgentWebPermissions.CAMERA, "camera")) {
            cancel();
            return;
        }
        Action action = new Action();
        List<String> listCheckNeedPermission = checkNeedPermission();
        if (listCheckNeedPermission.isEmpty()) {
            openCameraAction();
            return;
        }
        action.setAction(1);
        action.setPermissions((String[]) listCheckNeedPermission.toArray(new String[0]));
        action.setFromIntention(2);
        action.setPermissionListener(this.mPermissionListener);
        AgentActionFragment.start(this.mActivity, action);
    }

    private void openCameraAction() {
        Action action = new Action();
        if (this.mVideoState) {
            action.setAction(4);
        } else {
            action.setAction(3);
        }
        action.setChooserListener(getChooserListener());
        AgentActionFragment.start(this.mActivity, action);
    }

    private void openFileChooserInternal() {
        WebChromeClient.FileChooserParams fileChooserParams = this.mFileChooserParams;
        if (fileChooserParams != null && fileChooserParams.getAcceptTypes() != null) {
            boolean z = false;
            for (String str : this.mFileChooserParams.getAcceptTypes()) {
                if (!TextUtils.isEmpty(str)) {
                    if (str.contains("*/") || str.contains("image/")) {
                        z = true;
                        break;
                    } else if (str.contains("video/")) {
                        this.mVideoState = true;
                        z = true;
                    }
                }
            }
            if (!z) {
                touchOffFileChooserAction();
                return;
            }
        }
        if (TextUtils.isEmpty(this.mAcceptType) || this.mAcceptType.contains("*/") || this.mAcceptType.contains("image/")) {
            if (this.mAgentWebUIController.get() != null) {
                AbsAgentWebUIController absAgentWebUIController = this.mAgentWebUIController.get();
                WebView webView = this.mWebView;
                absAgentWebUIController.onSelectItemsPrompt(webView, webView.getUrl(), new String[]{this.mActivity.getString(R.string.agentweb_camera), this.mActivity.getString(R.string.agentweb_file_chooser)}, getCallBack());
            }
        } else {
            touchOffFileChooserAction();
        }
    }

    public void permissionResult(boolean z, int i) {
        String[] strArr;
        String str;
        if (i != 5) {
            if (i == 2) {
                if (z) {
                    openCameraAction();
                    return;
                }
                cancel();
                if (this.mAgentWebUIController.get() != null) {
                    this.mAgentWebUIController.get().onPermissionsDeny(AgentWebPermissions.CAMERA, AgentWebPermissions.ACTION_CAMERA, "Take photo");
                    return;
                }
                return;
            }
            return;
        }
        if (z) {
            touchOffFileChooserAction();
            return;
        }
        cancel();
        if (Build.VERSION.SDK_INT >= 33) {
            strArr = AgentWebPermissions.MEDIA;
            str = AgentWebPermissions.ACTION_MEDIA;
        } else {
            strArr = AgentWebPermissions.STORAGE;
            str = AgentWebPermissions.ACTION_STORAGE;
        }
        if (this.mAgentWebUIController.get() != null) {
            this.mAgentWebUIController.get().onPermissionsDeny(strArr, str, "Open file chooser");
        }
    }

    private Uri[] processData(Intent intent) {
        Uri[] uriArr = null;
        if (intent == null) {
            return null;
        }
        String dataString = intent.getDataString();
        if (!TextUtils.isEmpty(dataString)) {
            return new Uri[]{Uri.parse(dataString)};
        }
        ClipData clipData = intent.getClipData();
        if (clipData != null && clipData.getItemCount() > 0) {
            uriArr = new Uri[clipData.getItemCount()];
            for (int i = 0; i < clipData.getItemCount(); i++) {
                uriArr[i] = clipData.getItemAt(i).getUri();
            }
        }
        return uriArr;
    }

    private void touchOffFileChooserAction() {
        Action action = new Action();
        action.setAction(2);
        action.setChooserListener(getChooserListener());
        try {
            action.setIntent(getGalleryIntent());
            AgentActionFragment.start(this.mActivity, action);
        } catch (Throwable th) {
            if (AgentWebConfig.DEBUG) {
                th.printStackTrace();
            }
        }
    }

    public void onIntentResult(int i, int i2, Intent intent) {
        if (596 != i) {
            return;
        }
        if (i2 == 0 || intent == null) {
            cancel();
            return;
        }
        if (i2 != -1) {
            cancel();
        } else if (this.mJsChannel) {
            convertFileAndCallback(this.mCameraState ? new Uri[]{(Uri) intent.getParcelableExtra(AgentActionFragment.KEY_URI)} : processData(intent));
        } else {
            aboveLollipopCheckFilesAndCallback(this.mCameraState ? new Uri[]{(Uri) intent.getParcelableExtra(AgentActionFragment.KEY_URI)} : processData(intent), this.mCameraState);
        }
    }

    public void openFileChooser() {
        if (AgentWebUtils.isUIThread()) {
            openFileChooserInternal();
        } else {
            AgentWebUtils.runInUiThread(new Runnable() {
                @Override
                public void run() {
                    FileChooser.this.openFileChooser();
                }
            });
        }
    }

    private static void fileCompressAndValuesCallback(Uri uri, final ValueCallback<Uri> valueCallback) {
        FileCompressor.getInstance().fileCompress("system", new Uri[]{uri}, new ValueCallback<Uri[]>() {
            @Override
            public void onReceiveValue(Uri[] uriArr) {
                ValueCallback valueCallback2 = valueCallback;
                if (valueCallback2 != null) {
                    if (uriArr == null || uriArr.length <= 0) {
                        valueCallback2.onReceiveValue(Uri.EMPTY);
                    } else {
                        valueCallback2.onReceiveValue(uriArr[0]);
                    }
                }
            }
        });
    }
}

package com.just.agentweb;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.app.AppOpsManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.os.EnvironmentCompat;
import androidx.loader.content.CursorLoader;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LanguageUtils;
import com.just.agentweb.filechooser.FileChooser;
import com.transsion.livecaption.constant.ICode;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import com.transsion.widgetslib.dialog.OSSnackbar;
import defpackage.r0a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AgentWebUtils {
    private static final String TAG = "AgentWebUtils";
    private static Handler mHandler;
    private static Toast mToast;
    private static WeakReference<OSSnackbar> snackbarWeakReference;

    private AgentWebUtils() {
        throw new UnsupportedOperationException("u can't init me");
    }

    public static boolean checkNetwork(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    public static int checkNetworkType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return 0;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            return (type == 1 || type == 6 || type == 9) ? 1 : 0;
        }
        int subtype = activeNetworkInfo.getSubtype();
        switch (subtype) {
            case 1:
            case 2:
                return 4;
            case 3:
            case 4:
            case 5:
            case 6:
                return 3;
            default:
                switch (subtype) {
                    case 12:
                        return 3;
                    case 13:
                    case 14:
                    case 15:
                        return 2;
                    default:
                        return 0;
                }
        }
    }

    public static boolean checkWifi(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1;
    }

    public static void clearAgentWebCache(Context context) {
        try {
            clearCacheFolder(new File(getAgentWebFilePath(context)), 0);
        } catch (Throwable th) {
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
        }
    }

    public static void clearCache(Context context, int i) {
        Log.i("Info", String.format("Starting cache prune, deleting files older than %d days", Integer.valueOf(i)));
        Log.i("Info", String.format("Cache pruning completed, %d files deleted", Integer.valueOf(clearCacheFolder(context.getCacheDir(), i))));
    }

    public static int clearCacheFolder(File file, int i) {
        if (file != null) {
            Log.i("Info", "dir:" + file.getAbsolutePath());
        }
        int i2 = 0;
        if (file == null || !file.isDirectory()) {
            return 0;
        }
        try {
            File[] fileArrListFiles = file.listFiles();
            int length = fileArrListFiles.length;
            int iClearCacheFolder = 0;
            while (i2 < length) {
                try {
                    File file2 = fileArrListFiles[i2];
                    if (file2.isDirectory()) {
                        iClearCacheFolder += clearCacheFolder(file2, i);
                    }
                    if (file2.lastModified() < new Date().getTime() - (((long) i) * 86400000)) {
                        Log.i(TAG, "file name:" + file2.getName());
                        if (file2.delete()) {
                            iClearCacheFolder++;
                        }
                    }
                    i2++;
                } catch (Exception e) {
                    e = e;
                    i2 = iClearCacheFolder;
                    Log.e("Info", String.format("Failed to clean the cache, result %s", e.getMessage()));
                    return i2;
                }
            }
            return iClearCacheFolder;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static final void clearWebView(WebView webView) {
        if (webView != null && Looper.myLooper() == Looper.getMainLooper()) {
            webView.loadUrl("about:blank");
            webView.stopLoading();
            if (webView.getHandler() != null) {
                webView.getHandler().removeCallbacksAndMessages(null);
            }
            webView.removeAllViews();
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.setWebChromeClient(null);
            webView.setWebViewClient(null);
            webView.setTag(null);
            webView.clearHistory();
            webView.destroy();
        }
    }

    public static void clearWebViewAllCache(Context context, WebView webView) {
        try {
            AgentWebConfig.removeAllCookies(null);
            webView.getSettings().setCacheMode(2);
            context.deleteDatabase("webviewCache.db");
            context.deleteDatabase("webview.db");
            webView.clearCache(true);
            webView.clearHistory();
            webView.clearFormData();
            clearCacheFolder(new File(AgentWebConfig.getCachePath(context)), 0);
        } catch (Exception e) {
            if (AgentWebConfig.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    public static void closeIO(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static File createFileByName(Context context, String str, boolean z) throws IOException {
        String agentWebFilePath = getAgentWebFilePath(context);
        if (TextUtils.isEmpty(agentWebFilePath)) {
            return null;
        }
        File file = new File(agentWebFilePath, str);
        if (!file.exists()) {
            file.createNewFile();
        } else if (z) {
            file.delete();
            file.createNewFile();
        }
        return file;
    }

    public static File createImageFile(Context context) {
        try {
            return createFileByName(context, String.format("aw_%s.jpg", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date())), true);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static File createVideoFile(Context context) {
        try {
            return createFileByName(context, String.format("aw_%s.mp4", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date())), true);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void dismiss() {
        WeakReference<OSSnackbar> weakReference = snackbarWeakReference;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        snackbarWeakReference.get().c();
        snackbarWeakReference.clear();
        snackbarWeakReference = null;
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String getAgentWebFilePath(Context context) {
        if (!TextUtils.isEmpty(AgentWebConfig.AGENTWEB_FILE_PATH)) {
            return AgentWebConfig.AGENTWEB_FILE_PATH;
        }
        File file = new File(getDiskExternalCacheDir(context), "agentweb-cache");
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Throwable unused) {
            LogUtils.i(TAG, "create dir exception");
        }
        LogUtils.i(TAG, "path:" + file.getAbsolutePath() + "  path:" + file.getPath());
        String absolutePath = file.getAbsolutePath();
        AgentWebConfig.AGENTWEB_FILE_PATH = absolutePath;
        return absolutePath;
    }

    public static AbsAgentWebUIController getAgentWebUIControllerByWebView(WebView webView) {
        return getWebParentLayoutByWebView(webView).provide();
    }

    public static String getApplicationName(Context context) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = context.getApplicationContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            packageManager = null;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    public static long getAvailableStorage() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().toString());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (RuntimeException unused) {
            return 0L;
        }
    }

    public static Intent getCommonFileIntentCompat(Context context, File file) {
        Intent action = new Intent().setAction("android.intent.action.VIEW");
        setIntentDataAndType(context, action, getMIMEType(file), file, false);
        return action;
    }

    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static List<String> getDeniedPermissions(Activity activity, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            if (!hasPermission(activity, strArr[i])) {
                arrayList.add(strArr[i]);
            }
        }
        return arrayList;
    }

    public static String getDiskExternalCacheDir(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if ("mounted".equals(EnvironmentCompat.getStorageState(externalCacheDir))) {
            return externalCacheDir.getAbsolutePath();
        }
        return null;
    }

    @TargetApi(19)
    public static String getFileAbsolutePath(Activity activity, Uri uri) {
        Uri uri2 = null;
        if (activity != null && uri != null) {
            if (!DocumentsContract.isDocumentUri(activity, uri)) {
                if (uri.getAuthority().equalsIgnoreCase(activity.getPackageName() + ".AgentWebFileProvider")) {
                    String path = uri.getPath();
                    return getAgentWebFilePath(activity) + File.separator + path.substring(path.lastIndexOf("/") + 1);
                }
                if (ICode.CALL.CALL_KEY_CONTENT.equalsIgnoreCase(uri.getScheme())) {
                    return isGooglePhotosUri(uri) ? uri.getLastPathSegment() : getDataColumn(activity, uri, null, null);
                }
                if ("file".equalsIgnoreCase(uri.getScheme())) {
                    return uri.getPath();
                }
            } else if (isExternalStorageDocument(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + strArrSplit[1];
                }
            } else {
                if (isDownloadsDocument(uri)) {
                    return getDataColumn(activity, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                }
                if (isMediaDocument(uri)) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    String str = strArrSplit2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return getDataColumn(activity, uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        }
        return null;
    }

    public static Intent getInstallApkIntentCompat(Context context, File file) {
        Intent action = new Intent().setAction("android.intent.action.VIEW");
        setIntentDataAndType(context, action, "application/vnd.android.package-archive", file, false);
        return action;
    }

    public static Intent getIntentCaptureCompat(Context context, File file) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri uriFromFile = getUriFromFile(context, file);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra("output", uriFromFile);
        return intent;
    }

    public static Intent getIntentVideoCompat(Context context, File file) {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        Uri uriFromFile = getUriFromFile(context, file);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra("output", uriFromFile);
        return intent;
    }

    private static String getMIMEType(File file) {
        String name = file.getName();
        String lowerCase = name.substring(name.lastIndexOf(Consts.DOT) + 1).toLowerCase();
        if ("pdf".equals(lowerCase)) {
            return "application/pdf";
        }
        if ("m4a".equals(lowerCase) || "mp3".equals(lowerCase) || "mid".equals(lowerCase) || "xmf".equals(lowerCase) || "ogg".equals(lowerCase) || "wav".equals(lowerCase)) {
            return "audio/*";
        }
        if ("3gp".equals(lowerCase) || "mp4".equals(lowerCase)) {
            return "video/*";
        }
        if ("jpg".equals(lowerCase) || "gif".equals(lowerCase) || "png".equals(lowerCase) || "jpeg".equals(lowerCase) || "bmp".equals(lowerCase)) {
            return "image/*";
        }
        if ("apk".equals(lowerCase)) {
            return "application/vnd.android.package-archive";
        }
        if ("pptx".equals(lowerCase) || "ppt".equals(lowerCase)) {
            return "application/vnd.ms-powerpoint";
        }
        if ("docx".equals(lowerCase) || "doc".equals(lowerCase)) {
            return "application/vnd.ms-word";
        }
        return ("xlsx".equals(lowerCase) || "xls".equals(lowerCase)) ? "application/vnd.ms-excel" : SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
    }

    @SuppressLint({"Range"})
    private static String getRealPathBelowVersion(Context context, Uri uri) {
        String string;
        LogUtils.i(TAG, "method -> getRealPathBelowVersion " + uri + "   path:" + uri.getPath() + "    getAuthority:" + uri.getAuthority());
        String[] strArr = {"_data"};
        Cursor cursorLoadInBackground = new CursorLoader(context, uri, strArr, null, null, null).loadInBackground();
        if (cursorLoadInBackground != null) {
            cursorLoadInBackground.moveToFirst();
            string = cursorLoadInBackground.getString(cursorLoadInBackground.getColumnIndex(strArr[0]));
            cursorLoadInBackground.close();
        } else {
            string = null;
        }
        return string == null ? uri.getPath() : string;
    }

    @Deprecated
    public static void getUIControllerAndShowMessage(Activity activity, String str, String str2) {
        AbsAgentWebUIController absAgentWebUIControllerProvide;
        if (activity == null || activity.isFinishing() || (absAgentWebUIControllerProvide = ((WebParentLayout) activity.findViewById(R.id.web_parent_layout_id)).provide()) == null) {
            return;
        }
        absAgentWebUIControllerProvide.onShowMessage(str, str2);
    }

    public static Uri getUriFromFile(Context context, File file) {
        return getUriFromFileForN(context, file);
    }

    public static Uri getUriFromFileForN(Context context, File file) {
        return FileProvider.getUriForFile(context, context.getPackageName() + ".AgentWebFileProvider", file);
    }

    public static WebParentLayout getWebParentLayoutByWebView(WebView webView) {
        if (!(webView.getParent() instanceof ViewGroup)) {
            throw new IllegalStateException("please check webcreator's create method was be called ?");
        }
        ViewGroup viewGroup = (ViewGroup) webView.getParent();
        while (viewGroup != null) {
            String str = TAG;
            LogUtils.i(str, "ViewGroup:" + viewGroup);
            if (viewGroup.getId() == R.id.web_parent_layout_id) {
                WebParentLayout webParentLayout = (WebParentLayout) viewGroup;
                LogUtils.i(str, "found WebParentLayout");
                return webParentLayout;
            }
            ViewParent parent = viewGroup.getParent();
            viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        }
        throw new IllegalStateException("please check webcreator's create method was be called ?");
    }

    public static void grantPermissions(Context context, Intent intent, Uri uri, boolean z) {
        int i = z ? 3 : 1;
        intent.addFlags(i);
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 65536).iterator();
        while (it.hasNext()) {
            context.grantUriPermission(it.next().activityInfo.packageName, uri, i);
        }
    }

    public static boolean hasPermission(@NonNull Context context, @NonNull String... strArr) {
        return hasPermission(context, (List<String>) Arrays.asList(strArr));
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isEmptyCollection(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isEmptyMap(Map map) {
        return map == null || map.isEmpty();
    }

    public static Method isExistMethod(Object obj, String str, Class... clsArr) {
        if (obj == null) {
            return null;
        }
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean isJson(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.startsWith("[")) {
                new JSONArray(str);
            } else {
                new JSONObject(str);
            }
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isOverriedMethod(Object obj, String str, String str2, Class... clsArr) {
        LogUtils.i(TAG, "  methodName:" + str + "   method:" + str2);
        boolean z = false;
        if (obj == null) {
            return false;
        }
        try {
            z = !obj.getClass().getMethod(str, clsArr).toGenericString().contains(str2);
        } catch (Exception e) {
            if (LogUtils.isDebug()) {
                e.printStackTrace();
            }
        }
        LogUtils.i(TAG, "isOverriedMethod:" + z);
        return z;
    }

    public static boolean isUIThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception e) {
            if (!LogUtils.isDebug()) {
                return "";
            }
            e.printStackTrace();
            return "";
        }
    }

    public static void runInUiThread(Runnable runnable) {
        if (mHandler == null) {
            mHandler = new Handler(Looper.getMainLooper());
        }
        mHandler.post(runnable);
    }

    public static void setIntentData(Context context, Intent intent, File file, boolean z) {
        intent.setData(getUriFromFile(context, file));
        intent.addFlags(1);
        if (z) {
            intent.addFlags(2);
        }
    }

    public static void setIntentDataAndType(Context context, Intent intent, String str, File file, boolean z) {
        intent.setDataAndType(getUriFromFile(context, file), str);
        intent.addFlags(1);
        if (z) {
            intent.addFlags(2);
        }
    }

    public static void show(Context context, CharSequence charSequence) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new ForegroundColorSpan(-1), 0, spannableString.length(), 33);
        WeakReference<OSSnackbar> weakReference = new WeakReference<>(OSSnackbar.d(context, spannableString, 2000));
        snackbarWeakReference = weakReference;
        weakReference.get().f();
    }

    public static boolean showFileChooserCompat(Activity activity, WebView webView, ValueCallback<Uri[]> valueCallback, android.webkit.WebChromeClient.FileChooserParams fileChooserParams, PermissionInterceptor permissionInterceptor, ValueCallback valueCallback2, String str, Handler.Callback callback) {
        try {
            int i = FileChooser.REQUEST_CODE;
            Object objInvoke = FileChooser.class.getDeclaredMethod("newBuilder", Activity.class, WebView.class).invoke(null, activity, webView);
            Class<?> cls = objInvoke.getClass();
            if (valueCallback != null) {
                Method declaredMethod = cls.getDeclaredMethod("setUriValueCallbacks", ValueCallback.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(objInvoke, valueCallback);
            }
            if (fileChooserParams != null) {
                Method declaredMethod2 = cls.getDeclaredMethod("setFileChooserParams", android.webkit.WebChromeClient.FileChooserParams.class);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(objInvoke, fileChooserParams);
            }
            if (valueCallback2 != null) {
                Method declaredMethod3 = cls.getDeclaredMethod("setUriValueCallback", ValueCallback.class);
                declaredMethod3.setAccessible(true);
                declaredMethod3.invoke(objInvoke, valueCallback2);
            }
            if (!TextUtils.isEmpty(str)) {
                Method declaredMethod4 = cls.getDeclaredMethod("setAcceptType", String.class);
                declaredMethod4.setAccessible(true);
                declaredMethod4.invoke(objInvoke, str);
            }
            if (callback != null) {
                Method declaredMethod5 = cls.getDeclaredMethod("setJsChannelCallback", Handler.Callback.class);
                declaredMethod5.setAccessible(true);
                declaredMethod5.invoke(objInvoke, callback);
            }
            Method declaredMethod6 = cls.getDeclaredMethod("setPermissionInterceptor", PermissionInterceptor.class);
            declaredMethod6.setAccessible(true);
            declaredMethod6.invoke(objInvoke, permissionInterceptor);
            Method declaredMethod7 = cls.getDeclaredMethod("build", null);
            declaredMethod7.setAccessible(true);
            Object objInvoke2 = declaredMethod7.invoke(objInvoke, null);
            Method declaredMethod8 = objInvoke2.getClass().getDeclaredMethod("openFileChooser", null);
            declaredMethod8.setAccessible(true);
            declaredMethod8.invoke(objInvoke2, null);
        } catch (Throwable th) {
            if (LogUtils.isDebug()) {
                th.printStackTrace();
            }
            if (th instanceof ClassNotFoundException) {
                LogUtils.e(TAG, "Please check whether compile'com.just.agentweb:filechooser:x.x.x' dependency was added.");
            }
            if (valueCallback != null) {
                LogUtils.i(TAG, "onReceiveValue empty");
                return false;
            }
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
            }
        }
        return true;
    }

    public static void toastShowShort(Context context, String str) {
        Toast toast = mToast;
        if (toast == null) {
            mToast = Toast.makeText(context.getApplicationContext(), str, 0);
        } else {
            toast.setText(str);
        }
        mToast.show();
    }

    public static String[] uriToPath(Activity activity, Uri[] uriArr) {
        if (activity != null && uriArr != null && uriArr.length != 0) {
            try {
                String[] strArr = new String[uriArr.length];
                int length = uriArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    strArr[i2] = getFileAbsolutePath(activity, uriArr[i]);
                    i++;
                    i2 = i3;
                }
                return strArr;
            } catch (Throwable th) {
                if (LogUtils.isDebug()) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static String urlAppendLang(String str) {
        if (r0a.g(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Locale localeB = LanguageUtils.b();
        if (!r0a.g(localeB.getLanguage())) {
            sb.append(localeB.getLanguage());
        }
        if (!r0a.g(localeB.getCountry())) {
            sb.append("-r");
            sb.append(localeB.getCountry());
        }
        if (sb.length() <= 0) {
            return str;
        }
        if (!str.contains("?")) {
            return (str + "?") + "lang=" + ((Object) sb);
        }
        if (str.contains("lang=")) {
            return str.replaceAll("(lang=[^&]*)", "lang=" + ((Object) sb));
        }
        if (str.contains("&")) {
            return str + "&lang=" + ((Object) sb);
        }
        return str + "lang=" + ((Object) sb);
    }

    public static String urlReplaceLang(String str) {
        if (r0a.g(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Locale localeB = LanguageUtils.b();
        if (!r0a.g(localeB.getLanguage())) {
            sb.append(localeB.getLanguage());
        }
        if (!r0a.g(localeB.getCountry())) {
            sb.append("-r");
            sb.append(localeB.getCountry());
        }
        if (!str.contains("lang=") || !str.contains("lang=")) {
            return str;
        }
        return str.replaceAll("(lang=[^&]*)", "lang=" + ((Object) sb));
    }

    public static boolean hasPermission(@NonNull Context context, @NonNull List<String> list) {
        for (String str : list) {
            int iCheckSelfPermission = ContextCompat.checkSelfPermission(context, str);
            LogUtils.e(TAG, "permission:" + str + " PermissionsResult:" + iCheckSelfPermission);
            if (iCheckSelfPermission == -1) {
                return false;
            }
            String strPermissionToOp = AppOpsManagerCompat.permissionToOp(str);
            if (!TextUtils.isEmpty(strPermissionToOp) && AppOpsManagerCompat.noteProxyOp(context, strPermissionToOp, context.getPackageName()) != 0) {
                return false;
            }
        }
        return true;
    }

    public static void clearWebViewAllCache(Context context) {
        try {
            clearWebViewAllCache(context, new LollipopFixedWebView(context.getApplicationContext()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

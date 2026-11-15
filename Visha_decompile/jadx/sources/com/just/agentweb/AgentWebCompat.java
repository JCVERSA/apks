package com.just.agentweb;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashSet;
import java.util.Iterator;

public class AgentWebCompat {
    private static void createFile(File file, boolean z) {
        if (z) {
            try {
                if (file.exists()) {
                    return;
                }
                file.createNewFile();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void setDataDirectorySuffix(Context context) {
        try {
            HashSet hashSet = new HashSet();
            String absolutePath = context.getDataDir().getAbsolutePath();
            String currentProcessName = ProcessUtils.getCurrentProcessName(context);
            if (TextUtils.equals(context.getPackageName(), currentProcessName)) {
                String str = "_" + currentProcessName;
                hashSet.add(absolutePath + "/app_webview/webview_data.lock");
                hashSet.add(absolutePath + "/app_webview" + str + "/webview_data.lock");
                if (RomUtils.isHuawei()) {
                    hashSet.add(absolutePath + "/app_hws_webview/webview_data.lock");
                    hashSet.add(absolutePath + "/app_hws_webview" + str + "/webview_data.lock");
                }
            } else {
                if (TextUtils.isEmpty(currentProcessName)) {
                    currentProcessName = context.getPackageName();
                }
                WebView.setDataDirectorySuffix(currentProcessName);
                String str2 = "_" + currentProcessName;
                hashSet.add(absolutePath + "/app_webview" + str2 + "/webview_data.lock");
                if (RomUtils.isHuawei()) {
                    hashSet.add(absolutePath + "/app_hws_webview" + str2 + "/webview_data.lock");
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                File file = new File((String) it.next());
                if (file.exists()) {
                    tryLockOrRecreateFile(file);
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @TargetApi(28)
    private static void tryLockOrRecreateFile(File file) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
                if (fileLockTryLock != null) {
                    fileLockTryLock.close();
                } else {
                    createFile(file, file.delete());
                }
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            e.printStackTrace();
            createFile(file, file.exists() ? file.delete() : false);
        }
    }
}

package com.blankj.utilcode.util;

import android.util.Log;
import java.io.File;

class LogUtils$4 implements Runnable {
    final File val$aFile;

    LogUtils$4(File file) {
        this.val$aFile = file;
    }

    @Override
    public void run() {
        if (this.val$aFile.delete()) {
            return;
        }
        Log.e("LogUtils", "delete " + this.val$aFile + " failed!");
    }
}

package com.hunantv.media.utils;

import android.app.ActivityManager;
import android.content.Context;

public class MemoryUtil {
    public static ActivityManager.MemoryInfo getMemoryInfo(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

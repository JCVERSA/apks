package com.transsion.livecaption.client.utils;

import android.util.Log;
import com.google.gson.Gson;
import com.transsion.livecaption.bean.NotifcationMode;

public class GsonUtils {
    public static final int NOTIFICATION_ID = 1;
    public static final String TAG = "GsonUtils";

    public static NotifcationMode GsonStringToNotification(String str) {
        try {
            return (NotifcationMode) new Gson().fromJson(str, NotifcationMode.class);
        } catch (Exception e) {
            Log.d(TAG, "GsonStringToNotification: " + e.toString());
            return null;
        }
    }

    public static String NotificationToGsonString(NotifcationMode notifcationMode) {
        Gson gson = new Gson();
        gson.toJson(notifcationMode);
        Log.d(TAG, "NotificationToGsonString: son = " + gson.toJson(notifcationMode));
        return gson.toJson(notifcationMode);
    }
}

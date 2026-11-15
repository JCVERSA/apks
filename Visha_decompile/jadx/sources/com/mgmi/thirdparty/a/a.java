package com.mgmi.thirdparty.a;

import androidx.core.app.NotificationCompat;

public class a {
    public static void a(String str) {
        if ("vod".equals(str) || "live".equals(str) || "feed".equals(str) || "sc_room".equals(str) || "chat_room".equals(str)) {
            return;
        }
        NotificationCompat.CATEGORY_SOCIAL.equals(str);
    }
}

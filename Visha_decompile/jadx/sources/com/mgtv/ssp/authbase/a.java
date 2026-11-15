package com.mgtv.ssp.authbase;

import android.content.Context;
import android.content.Intent;
import com.mgtv.ssp.activity.SspVipWebActivity;

public class a {
    public static void a(Context context, AccountInfo accountInfo, MgSspAccountCallback mgSspAccountCallback) {
        if (context != null) {
            b.a(context, new b.a() {
                @Override
                public void onChanged(boolean z) {
                }
            });
            Intent intent = new Intent(context, (Class<?>) SspVipWebActivity.class);
            intent.putExtra("acinfo", accountInfo);
            SspVipWebActivity.a(mgSspAccountCallback);
            com.hunantv.imgo.util.a.a(context, intent);
        }
    }

    public static void a(Context context, AccountInfo accountInfo, String str, String str2, String str3, String str4, MgSspAccountCallback mgSspAccountCallback) {
        if (context != null) {
            b.a(context, new b.a() {
                @Override
                public void onChanged(boolean z) {
                }
            });
            Intent intent = new Intent(context, (Class<?>) SspVipWebActivity.class);
            intent.putExtra("acinfo", accountInfo);
            intent.putExtra("currentVideoId", str);
            intent.putExtra("currentEncodeVideoId", str2);
            intent.putExtra("from", str3);
            intent.putExtra("collection_id", str4);
            SspVipWebActivity.a(mgSspAccountCallback);
            com.hunantv.imgo.util.a.a(context, intent);
        }
    }
}

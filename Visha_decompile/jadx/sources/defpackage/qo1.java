package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.transsion.push.R;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushNotification;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

public abstract class qo1 {
    public static HashMap a = new HashMap();

    public static void a(PushNotification pushNotification) {
        if (pushNotification == null) {
            return;
        }
        a.put(c(pushNotification.getType(), pushNotification.getStyleId()), pushNotification);
    }

    public static RemoteViews b(Context context, PushMessage pushMessage, HashMap map, boolean z) {
        if (pushMessage.notiType != 3) {
            return null;
        }
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.tpush_notification_expand_31);
        if (map == null || map.get(pushMessage.notiIcon) == null) {
            int i = R.id.tpush_largeIconImg;
            remoteViews.setViewVisibility(i, 0);
            if (Build.VERSION.SDK_INT >= 31) {
                remoteViews.setViewLayoutWidth(i, 1.0f, 1);
            }
        } else {
            int i2 = R.id.tpush_largeIconImg;
            remoteViews.setImageViewBitmap(i2, (Bitmap) map.get(pushMessage.notiIcon));
            remoteViews.setViewVisibility(i2, 0);
        }
        remoteViews.setTextViewText(R.id.tpush_titleTv, pushMessage.notiTitle);
        remoteViews.setTextViewText(R.id.tpush_descriptionTv, pushMessage.notiDes);
        if (TextUtils.isEmpty(pushMessage.notiBtn)) {
            remoteViews.setViewVisibility(R.id.tpush_actionBtn, 8);
        } else {
            int i3 = R.id.tpush_actionBtn;
            remoteViews.setTextViewText(i3, pushMessage.notiBtn);
            remoteViews.setViewVisibility(i3, 0);
        }
        return remoteViews;
    }

    public static String c(int i, int i2) {
        return i + "#" + i2;
    }

    public static PushNotification d(int i, int i2) {
        return (PushNotification) a.get(c(i, i2));
    }

    public static RemoteViews e(Context context, PushMessage pushMessage, HashMap map, boolean z) {
        if (pushMessage.notiType != 3) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.tpush_notification_31);
            remoteViews.setTextViewText(R.id.tpush_titleTv, pushMessage.notiTitle);
            remoteViews.setTextViewText(R.id.tpush_descriptionTv, pushMessage.notiDes);
            if (TextUtils.isEmpty(pushMessage.notiBtn)) {
                remoteViews.setViewVisibility(R.id.tpush_actionBtn, 8);
            } else {
                int i = R.id.tpush_actionBtn;
                remoteViews.setTextViewText(i, pushMessage.notiBtn);
                remoteViews.setViewVisibility(i, 0);
            }
            return remoteViews;
        }
        RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), R.layout.tpush_custom_button_style);
        try {
            remoteViews2.setImageViewBitmap(R.id.tpush_smallIconImg, lf0.d(context, PushUtils.g(context, TextUtils.isEmpty(pushMessage.rpkg) ? context.getPackageName() : pushMessage.rpkg)));
        } catch (Exception e) {
            PushLogUtils.LOG.g("set imageview Exception" + e);
        }
        String strH = PushUtils.h(context, pushMessage);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(strH)) {
            sb.append(strH);
        }
        try {
            String str = new SimpleDateFormat("h:mm a", Locale.getDefault()).format(new Date());
            sb.append(" · ");
            sb.append(str);
        } catch (Exception e2) {
            PushLogUtils.LOG.i(e2);
        }
        remoteViews2.setTextViewText(R.id.tpush_smallTitleTv, sb.toString());
        if (map == null || map.get(pushMessage.notiIcon) == null || f()) {
            remoteViews2.setViewVisibility(R.id.tpush_largeIconImg, 8);
        } else {
            int i2 = R.id.tpush_largeIconImg;
            remoteViews2.setImageViewBitmap(i2, (Bitmap) map.get(pushMessage.notiIcon));
            remoteViews2.setViewVisibility(i2, 0);
        }
        remoteViews2.setTextViewText(R.id.tpush_titleTv, pushMessage.notiTitle);
        remoteViews2.setTextViewText(R.id.tpush_descriptionTv, pushMessage.notiDes);
        if (TextUtils.isEmpty(pushMessage.notiBtn)) {
            remoteViews2.setViewVisibility(R.id.tpush_actionBtn, 8);
        } else {
            int i3 = R.id.tpush_actionBtn;
            remoteViews2.setTextViewText(i3, pushMessage.notiBtn);
            remoteViews2.setViewVisibility(i3, 0);
        }
        return remoteViews2;
    }

    public static boolean f() {
        try {
            return Build.VERSION.SDK_INT >= 31;
        } catch (Exception unused) {
            return false;
        }
    }
}

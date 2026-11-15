package com.transsion.push.broadcast;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushMessageKey;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ServiceUtils;
import defpackage.q0a;
import defpackage.qab;
import defpackage.xj1;
import java.util.Map;

public class FCMMessageService extends FirebaseMessagingService {
    @Override
    public void r(RemoteMessage remoteMessage) {
        String strB;
        PushLogUtils.LOG.g("Receiving FCM messages by FirebaseMessagingService:" + remoteMessage.getData());
        super.r(remoteMessage);
        Context applicationContext = getApplicationContext();
        xj1.b(applicationContext);
        PushManager.getInstance().init(applicationContext.getApplicationContext());
        PushMessage pushMessageX = x(remoteMessage);
        PushLogUtils.LOG.g("Receiving FCM messages packageName:" + applicationContext.getPackageName() + "  " + pushMessageX);
        if (w(pushMessageX)) {
            Tracker.getInstance().trackMessage(pushMessageX.messageId, pushMessageX.type, pushMessageX.timeStamp, TtmlNode.COMBINE_ALL, 0);
            try {
                strB = qab.b(pushMessageX);
            } catch (Exception e) {
                PushLogUtils.LOG.i("Receiving FCM messages to messageContent fail, e:" + e.getMessage());
                strB = null;
            }
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("message", strB);
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "message");
            ServiceUtils.startJobThread(applicationContext, bundle);
        }
    }

    @Override
    public void t(String str) {
        super.t(str);
        PushLogUtils.LOG.g("FCM MessageService onNewToken: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PushUtils.D(str);
    }

    public final boolean w(PushMessage pushMessage) {
        return pushMessage.messageId > 0 && pushMessage.type > 0 && !TextUtils.isEmpty(pushMessage.pkgId);
    }

    public final PushMessage x(RemoteMessage remoteMessage) {
        PushMessage pushMessage = new PushMessage();
        Map<String, String> data = remoteMessage.getData();
        if (data != null && !data.isEmpty()) {
            pushMessage.messageId = q0a.e(data.get(PushMessageKey.KEY_TCM_MSG_ID));
            pushMessage.type = q0a.d(data.get(PushMessageKey.KEY_TCM_MSG_TYPE));
            pushMessage.pkgId = data.get(PushMessageKey.KEY_TCM_MSG_PKG);
            pushMessage.packageName = data.get(PushMessageKey.KEY_TCM_MSG_PKGNAME);
            try {
                pushMessage.rpkg = xj1.a().getPackageName();
            } catch (Exception unused) {
                pushMessage.rpkg = "";
            }
            pushMessage.notiType = q0a.d(data.get(PushMessageKey.KEY_NOTI_TYPE));
            pushMessage.notiExType = q0a.c(data.get(PushMessageKey.KEY_NOTI_EX_TYPE));
            pushMessage.msgTtl = q0a.d(data.get(PushMessageKey.KEY_TCM_MSG_TTL));
            pushMessage.ignoreExpire = q0a.d(data.get(PushMessageKey.KEY_NOTI_IGNORE_EXPIRE));
            pushMessage.groupId = data.get(PushMessageKey.KEY_APP_GROUP_ID);
            pushMessage.groupMaxCount = data.get(PushMessageKey.KEY_APP_GROUP_MAX_COUNT);
            pushMessage.notiTitle = data.get(PushMessageKey.KEY_NOTI_TITLE);
            pushMessage.notiDes = data.get(PushMessageKey.KEY_NOTI_DESC);
            pushMessage.notiImg = data.get(PushMessageKey.KEY_NOTI_IMG);
            pushMessage.notiIcon = data.get(PushMessageKey.KEY_NOTI_ICON);
            pushMessage.notiBtn = data.get(PushMessageKey.KEY_NOTI_BTN);
            pushMessage.notiImgEx = data.get(PushMessageKey.KEY_NOTI_IMG_EX);
            pushMessage.notiTitleEx = data.get(PushMessageKey.KEY_NOTI_TITLE_EX);
            pushMessage.notiTxtEx = data.get(PushMessageKey.KEY_NOTI_TXT_EX);
            pushMessage.notiOpenType = q0a.d(data.get(PushMessageKey.KEY_NOTI_OPEN_TYPE));
            pushMessage.notiOpenContent = data.get(PushMessageKey.KEY_NOTI_OPEN_CONTENT);
            pushMessage.transData = q0a.b(data.get("trans_data"));
            pushMessage.timeStamp = data.get(PushMessageKey.KEY_TCM_MSG_TIMESTAMP);
            pushMessage.notiSmallIcon = data.get(PushMessageKey.KEY_NOTI_SMALL_ICON);
            pushMessage.displayPolicy = q0a.d(data.get(PushMessageKey.KEY_DISPLAY_POLICY));
            pushMessage.appName = data.get("app_name");
            pushMessage.layoutStyleId = q0a.d(data.get(PushMessageKey.KEY_APP_LAYOUT_STYLE_ID));
            pushMessage.channelId = data.get(PushMessageKey.KEY_APP_CHANNEL_ID);
            pushMessage.channelName = data.get(PushMessageKey.KEY_APP_CHANNEL_NAME);
            pushMessage.iconColor = data.get(PushMessageKey.KEY_NOTI_SMALL_ICON_COLOR);
            pushMessage.impUrlList = data.get(PushMessageKey.KEY_NOTI_IMP_URLS);
            pushMessage.clickUrlList = data.get(PushMessageKey.KEY_NOTI_CLICK_URLS);
            pushMessage.isHeadsUp = q0a.d(data.get(PushMessageKey.KEY_NOTI_IS_HEADSUP));
            pushMessage.retraceMsgId = q0a.e(data.get(PushMessageKey.KEY_NOTI_RETRACE_MSG_ID));
            pushMessage.notiExtensionBtn = data.get(PushMessageKey.KEY_NOTI_BTN_EX);
            pushMessage.notiBtnBgColor = data.get(PushMessageKey.KEY_NOTI_BTN_BG_COLOR);
            pushMessage.notiBtnTxtColor = data.get(PushMessageKey.KEY_NOTI_BTN_WORD_COLOR);
            pushMessage.notiOptionalIcon = data.get(PushMessageKey.KEY_NOTI_OPTIONAL_ICON);
            pushMessage.priority = q0a.d(data.get(PushMessageKey.KEY_TCM_MSG_PRIORITY));
            pushMessage.sdkShow = q0a.d(data.get(PushMessageKey.KEY_TCM_MSG_SDKSHOW));
            pushMessage.floatNotice = data.get(PushMessageKey.KEY_NOTI_FLOAT_NOTICE);
            pushMessage.materialId = data.get(PushMessageKey.KEY_TCM_MATERIAL_ID);
            pushMessage.seq = data.get(PushMessageKey.KEY_TCM_SEQ);
            pushMessage.sourceType = data.get(PushMessageKey.KEY_TCM_SOURCE_TYPE);
            pushMessage.scheduleDate = data.get(PushMessageKey.KEY_TCM_SCHEDULE_DATE);
            pushMessage.tag = data.get(PushMessageKey.KEY_TCM_TAG);
            pushMessage.eventType = q0a.d(data.get(PushMessageKey.KEY_TCM_EVENT_TYPE));
            pushMessage.eventParams = data.get(PushMessageKey.KEY_TCM_EVENT_PARAMS);
            pushMessage.customDisplay = data.get(PushMessageKey.KEY_TCM_CUSTOM_DISPLAY);
        }
        return pushMessage;
    }
}

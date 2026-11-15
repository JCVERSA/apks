package com.transsion.push.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushMessageKey;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;
import defpackage.q0a;
import defpackage.qab;
import defpackage.xj1;

@Deprecated
public class FCMMessageReceiver extends BroadcastReceiver {
    public static boolean c(Intent intent) {
        return "com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction()) || "com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction());
    }

    public final boolean a(PushMessage pushMessage) {
        return pushMessage.messageId > 0 && pushMessage.type > 0 && !TextUtils.isEmpty(pushMessage.pkgId);
    }

    public final PushMessage b(Bundle bundle) {
        PushMessage pushMessage = new PushMessage();
        pushMessage.messageId = q0a.e(bundle.getString(PushMessageKey.KEY_TCM_MSG_ID));
        pushMessage.type = q0a.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_TYPE));
        pushMessage.pkgId = bundle.getString(PushMessageKey.KEY_TCM_MSG_PKG);
        pushMessage.packageName = bundle.getString(PushMessageKey.KEY_TCM_MSG_PKGNAME);
        try {
            pushMessage.rpkg = xj1.a().getPackageName();
        } catch (Exception unused) {
            pushMessage.rpkg = "";
        }
        pushMessage.notiType = q0a.d(bundle.getString(PushMessageKey.KEY_NOTI_TYPE));
        pushMessage.notiExType = q0a.c(bundle.getString(PushMessageKey.KEY_NOTI_EX_TYPE));
        pushMessage.msgTtl = q0a.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_TTL));
        pushMessage.ignoreExpire = q0a.d(bundle.getString(PushMessageKey.KEY_NOTI_IGNORE_EXPIRE));
        pushMessage.groupId = bundle.getString(PushMessageKey.KEY_APP_GROUP_ID);
        pushMessage.groupMaxCount = bundle.getString(PushMessageKey.KEY_APP_GROUP_MAX_COUNT);
        pushMessage.notiTitle = bundle.getString(PushMessageKey.KEY_NOTI_TITLE);
        pushMessage.notiDes = bundle.getString(PushMessageKey.KEY_NOTI_DESC);
        pushMessage.notiImg = bundle.getString(PushMessageKey.KEY_NOTI_IMG);
        pushMessage.notiIcon = bundle.getString(PushMessageKey.KEY_NOTI_ICON);
        pushMessage.notiBtn = bundle.getString(PushMessageKey.KEY_NOTI_BTN);
        pushMessage.notiImgEx = bundle.getString(PushMessageKey.KEY_NOTI_IMG_EX);
        pushMessage.notiTitleEx = bundle.getString(PushMessageKey.KEY_NOTI_TITLE_EX);
        pushMessage.notiTxtEx = bundle.getString(PushMessageKey.KEY_NOTI_TXT_EX);
        pushMessage.notiOpenType = q0a.d(bundle.getString(PushMessageKey.KEY_NOTI_OPEN_TYPE));
        pushMessage.notiOpenContent = bundle.getString(PushMessageKey.KEY_NOTI_OPEN_CONTENT);
        pushMessage.transData = q0a.b(bundle.getString("trans_data"));
        pushMessage.timeStamp = bundle.getString(PushMessageKey.KEY_TCM_MSG_TIMESTAMP);
        pushMessage.notiSmallIcon = bundle.getString(PushMessageKey.KEY_NOTI_SMALL_ICON);
        pushMessage.displayPolicy = q0a.d(bundle.getString(PushMessageKey.KEY_DISPLAY_POLICY));
        pushMessage.appName = bundle.getString("app_name");
        pushMessage.layoutStyleId = q0a.d(bundle.getString(PushMessageKey.KEY_APP_LAYOUT_STYLE_ID));
        pushMessage.channelId = bundle.getString(PushMessageKey.KEY_APP_CHANNEL_ID);
        pushMessage.channelName = bundle.getString(PushMessageKey.KEY_APP_CHANNEL_NAME);
        pushMessage.iconColor = bundle.getString(PushMessageKey.KEY_NOTI_SMALL_ICON_COLOR);
        pushMessage.impUrlList = bundle.getString(PushMessageKey.KEY_NOTI_IMP_URLS);
        pushMessage.clickUrlList = bundle.getString(PushMessageKey.KEY_NOTI_CLICK_URLS);
        pushMessage.isHeadsUp = q0a.d(bundle.getString(PushMessageKey.KEY_NOTI_IS_HEADSUP));
        pushMessage.retraceMsgId = q0a.e(bundle.getString(PushMessageKey.KEY_NOTI_RETRACE_MSG_ID));
        pushMessage.notiExtensionBtn = bundle.getString(PushMessageKey.KEY_NOTI_BTN_EX);
        pushMessage.notiBtnBgColor = bundle.getString(PushMessageKey.KEY_NOTI_BTN_BG_COLOR);
        pushMessage.notiBtnTxtColor = bundle.getString(PushMessageKey.KEY_NOTI_BTN_WORD_COLOR);
        pushMessage.notiOptionalIcon = bundle.getString(PushMessageKey.KEY_NOTI_OPTIONAL_ICON);
        pushMessage.priority = q0a.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_PRIORITY));
        pushMessage.sdkShow = q0a.d(bundle.getString(PushMessageKey.KEY_TCM_MSG_SDKSHOW));
        pushMessage.floatNotice = bundle.getString(PushMessageKey.KEY_NOTI_FLOAT_NOTICE);
        pushMessage.materialId = bundle.getString(PushMessageKey.KEY_TCM_MATERIAL_ID);
        pushMessage.seq = bundle.getString(PushMessageKey.KEY_TCM_SEQ);
        pushMessage.sourceType = bundle.getString(PushMessageKey.KEY_TCM_SOURCE_TYPE);
        pushMessage.scheduleDate = bundle.getString(PushMessageKey.KEY_TCM_SCHEDULE_DATE);
        pushMessage.tag = bundle.getString(PushMessageKey.KEY_TCM_TAG);
        pushMessage.eventType = q0a.d(bundle.getString(PushMessageKey.KEY_TCM_EVENT_TYPE));
        pushMessage.eventParams = bundle.getString(PushMessageKey.KEY_TCM_EVENT_PARAMS);
        pushMessage.customDisplay = bundle.getString(PushMessageKey.KEY_TCM_CUSTOM_DISPLAY);
        return pushMessage;
    }

    public final void d(Context context, Intent intent) {
        String strB;
        PushManager.getInstance().init(context.getApplicationContext());
        Tracker.getInstance().trackBroadcastInfoeye();
        if (intent == null || intent.getExtras() == null || !c(intent)) {
            return;
        }
        Tracker.getInstance().trackBroadcastGcmInfoeye();
        PushMessage pushMessageB = b(intent.getExtras());
        PushLogUtils.LOG.g("Receiving FCM messages packageName:" + context.getPackageName() + "  " + pushMessageB);
        if (!a(pushMessageB)) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
                return;
            }
            return;
        }
        if (isOrderedBroadcast()) {
            abortBroadcast();
            setResultCode(-1);
        }
        Tracker.getInstance().trackMessage(pushMessageB.messageId, pushMessageB.type, pushMessageB.timeStamp, TtmlNode.COMBINE_ALL, 0);
        try {
            strB = qab.b(pushMessageB);
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
        ServiceUtils.startTargetIntentService(context.getApplicationContext(), bundle);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        xj1.b(context.getApplicationContext());
        d(context, intent);
    }
}

package com.transsion.push.helper;

import android.net.Uri;
import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.MsgShowStatus;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.PushConfigHelper;
import com.transsion.push.bean.PushSimbaConfig;
import ij.v;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class a {

    public static final a f48764a = new a();

    private a() {
    }

    public final void a(String str, String str2, String str3, String str4, Uri uri, boolean z10, String str5, String moduleName, String str6) {
        Intrinsics.h(moduleName, "moduleName");
        boolean zE = e();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str6 == null) {
            str6 = "";
        }
        linkedHashMap.put("screen_status", str6);
        if (str == null) {
            str = "";
        }
        linkedHashMap.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, str);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("channel_id", str2);
        if (str3 == null) {
            str3 = "";
        }
        linkedHashMap.put(EventConstants.KEY_SOURCE, str3);
        if (str4 == null) {
            str4 = "";
        }
        linkedHashMap.put(PushConstants.EXTRA_PUSH_MESSAGE_TYPE, str4);
        if (str5 == null) {
            str5 = "";
        }
        linkedHashMap.put(TtmlNode.TAG_STYLE, str5);
        linkedHashMap.put("are_notify_enabled", zE ? "1" : "0");
        linkedHashMap.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, String.valueOf(uri));
        linkedHashMap.put("is_permanent", String.valueOf(z10));
        linkedHashMap.put("module_name", moduleName);
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        qi.h.f69682a.q("notification", MsgStyle.SOURCE_PUSH, linkedHashMap);
    }

    public final void c(MsgBean msgBean, String str, String str2) {
        Intrinsics.h(msgBean, "msgBean");
        boolean zE = e();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String messageId = msgBean.getMessageId();
        if (messageId == null) {
            messageId = "";
        }
        linkedHashMap.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, messageId);
        String source = msgBean.getSource();
        if (source == null) {
            source = "";
        }
        linkedHashMap.put(EventConstants.KEY_SOURCE, source);
        String type = msgBean.getType();
        if (type == null) {
            type = "";
        }
        linkedHashMap.put(PushConstants.EXTRA_PUSH_MESSAGE_TYPE, type);
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("channel_id", str);
        linkedHashMap.put("are_notify_enabled", zE ? "1" : "0");
        String style = msgBean.getStyle();
        if (style == null) {
            style = "";
        }
        linkedHashMap.put(TtmlNode.TAG_STYLE, style);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put(TrackingKey.SHOW_STATUS, str2);
        String deeplink = msgBean.getDeeplink();
        linkedHashMap.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, deeplink != null ? deeplink : "");
        linkedHashMap.put("screen_status", String.valueOf(v.f62124a.a()));
        linkedHashMap.put("is_permanent", String.valueOf(msgBean.getIsPermanent()));
        linkedHashMap.put(EventConstants.KEY_ACTION, "exposure");
        qi.h.f69682a.q("notification", MsgStyle.SOURCE_PUSH, linkedHashMap);
    }

    public final void d(MsgBean msgBean) {
        Intrinsics.h(msgBean, "msgBean");
        boolean zE = e();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String messageId = msgBean.getMessageId();
        if (messageId == null) {
            messageId = "";
        }
        linkedHashMap.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, messageId);
        String source = msgBean.getSource();
        if (source == null) {
            source = "";
        }
        linkedHashMap.put(EventConstants.KEY_SOURCE, source);
        String type = msgBean.getType();
        if (type == null) {
            type = "";
        }
        linkedHashMap.put(PushConstants.EXTRA_PUSH_MESSAGE_TYPE, type);
        linkedHashMap.put("are_notify_enabled", zE ? "1" : "0");
        String style = msgBean.getStyle();
        if (style == null) {
            style = "";
        }
        linkedHashMap.put(TtmlNode.TAG_STYLE, style);
        String deeplink = msgBean.getDeeplink();
        linkedHashMap.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, deeplink != null ? deeplink : "");
        linkedHashMap.put(EventConstants.KEY_ACTION, "receive");
        qi.h.f69682a.q("notification", MsgStyle.SOURCE_PUSH, linkedHashMap);
    }

    public final boolean e() {
        try {
            return t.b(Utils.a()).a();
        } catch (Exception unused) {
            return true;
        }
    }

    public final void f(String msgId, String url, String str, String str2, String pushType, String str3) {
        Intrinsics.h(msgId, "msgId");
        Intrinsics.h(url, "url");
        Intrinsics.h(pushType, "pushType");
        PushManager pushManager = PushManager.getInstance();
        Long lX = StringsKt.x(msgId);
        pushManager.trackClick(lX != null ? lX.longValue() : 0L);
    }

    public final void g(String str, String str2, String str3, String str4, String str5, String pushType) {
        Long lX;
        Intrinsics.h(pushType, "pushType");
        PushManager.getInstance().trackShow((str == null || (lX = StringsKt.x(str)) == null) ? 0L : lX.longValue(), MsgShowStatus.INSTANCE.isShowStatus(str5) ? 0 : 7);
    }

    public final void h(String str, String url, String channelType) {
        Long lX;
        Intrinsics.h(url, "url");
        Intrinsics.h(channelType, "channelType");
        PushManager.getInstance().trackArrive((str == null || (lX = StringsKt.x(str)) == null) ? 0L : lX.longValue());
    }

    public final void i(String requestTime) {
        Intrinsics.h(requestTime, "requestTime");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "local_push_request");
        PushConfigHelper pushConfigHelper = PushConfigHelper.INSTANCE;
        linkedHashMap.put("hash_time", String.valueOf(pushConfigHelper.getHashTime()));
        linkedHashMap.put(TrackingKey.REQUEST_TIME, requestTime);
        PushSimbaConfig simbaConfig = pushConfigHelper.getSimbaConfig();
        linkedHashMap.put("config_enable", String.valueOf(simbaConfig != null ? Boolean.valueOf(simbaConfig.getRequestHashEnable()) : null));
        qi.h.f69682a.z("notification", linkedHashMap);
    }
}

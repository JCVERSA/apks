package com.transsion.push.tpush;

import android.content.Intent;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/transsion/push/tpush/MBFirebaseMessagingService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "<init>", "()V", "", "token", "", "t", "(Ljava/lang/String;)V", "Lcom/google/firebase/messaging/RemoteMessage;", "message", CampaignEx.JSON_KEY_AD_R, "(Lcom/google/firebase/messaging/RemoteMessage;)V", CampaignEx.JSON_KEY_AD_Q, "Landroid/content/Intent;", "intent", "f", "(Landroid/content/Intent;)V", "h", "a", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MBFirebaseMessagingService extends FirebaseMessagingService {
    @Override
    public void f(Intent intent) {
        super.f(intent);
        wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "firebase handleIntent", false, 4, null);
    }

    @Override
    public void q() {
        super.q();
        wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "onDeletedMessages", false, 4, null);
    }

    @Override
    public void r(RemoteMessage message) {
        Intrinsics.h(message, "message");
        super.r(message);
        wf.a.C0922a c0922a = wf.a.f74274a;
        RemoteMessage.b notification = message.getNotification();
        String strB = notification != null ? notification.b() : null;
        wf.a.C0922a.f(c0922a, "FCM_PUSH", "firebase onNewMessage " + strB + ", " + message.getData(), false, 4, null);
        message.getData().isEmpty();
    }

    @Override
    public void t(String token) {
        Intrinsics.h(token, "token");
        super.t(token);
        wf.a.C0922a.f(wf.a.f74274a, "FCM_PUSH", "firebase onNew token " + token, false, 4, null);
        f fVarI = e.f48869a.i();
        if (fVarI != null) {
            fVarI.a(token);
        }
    }
}

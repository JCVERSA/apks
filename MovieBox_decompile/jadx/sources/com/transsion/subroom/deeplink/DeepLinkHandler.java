package com.transsion.subroom.deeplink;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.report.f;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsion.push.bean.PushConfigHelper;
import com.transsion.push.helper.PushPermanentManager;
import com.transsion.push.notification.ToolbarNotificationUtils;
import com.transsion.push.utils.NotificationUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0017\u0010\tJ\u000f\u0010\u0018\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/transsion/subroom/deeplink/DeepLinkHandler;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/transsion/baselib/report/f;", "<init>", "()V", "Landroid/content/Intent;", "intent", "", "S", "(Landroid/content/Intent;)V", "P", "", "R", "()Ljava/lang/String;", "messageId", "", "isPermanent", "V", "(Ljava/lang/String;Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onNewIntent", "onResume", "onPause", "onDestroy", "a", "Ljava/lang/String;", "TAG", "Lcom/transsion/subroom/deeplink/d;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "Q", "()Lcom/transsion/subroom/deeplink/d;", "mLaunchViewModel", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DeepLinkHandler extends AppCompatActivity implements f {

    private final String TAG = "deeplink_Handler";

    private final Lazy mLaunchViewModel;

    public DeepLinkHandler() {
        final Function0 function0 = null;
        this.mLaunchViewModel = new ViewModelLazy(Reflection.b(d.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final void P() {
        String stringExtra = getIntent().getStringExtra("extra_notification_group_tag");
        int intExtra = getIntent().getIntExtra("extra_notification_id", 0);
        String strR = R();
        String stringExtra2 = getIntent().getStringExtra("MESSAGE_TYPE");
        String stringExtra3 = getIntent().getStringExtra("extra_channel_id");
        String stringExtra4 = getIntent().getStringExtra("extra_message_style");
        String stringExtra5 = getIntent().getStringExtra("extra_screen_status");
        String stringExtra6 = getIntent().getStringExtra("extra_source");
        boolean z10 = intExtra == 111;
        Uri data = getIntent().getData();
        if (strR == null) {
            strR = null;
            stringExtra2 = data != null ? data.getQueryParameter("msg_type") : null;
            if (data != null) {
                strR = data.getQueryParameter("msgId");
            }
        }
        String str = stringExtra2;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "clearNotification， notificationId:" + intExtra + " messageId " + ((Object) strR) + " messageType " + ((Object) str) + " source" + stringExtra6, false, 4, null);
        if (strR != null) {
            if (Intrinsics.c(stringExtra6, MsgStyle.SOURCE_FCM_PUSH)) {
                com.transsion.push.helper.a.f48764a.f(strR, String.valueOf(data), stringExtra3, stringExtra4, Intrinsics.c(str, MsgType.ONLINE_JSON_PUSH.getType()) ? "2" : "1", stringExtra5);
            } else {
                com.transsion.push.helper.a.f48764a.a(strR, stringExtra3, stringExtra6, str, data, z10, (128 & 64) != 0 ? "" : stringExtra4, (128 & 128) != 0 ? "" : null, (128 & 256) != 0 ? "" : stringExtra5);
            }
        }
        V(strR, z10);
        if (!z10) {
            NotificationUtil.f48898a.q(getApplicationContext(), stringExtra, intExtra);
            return;
        }
        if (PushConfigHelper.INSTANCE.isAbType()) {
            PushPermanentManager.f48745a.p(String.valueOf(data));
            return;
        }
        NotificationUtil notificationUtil = NotificationUtil.f48898a;
        Context applicationContext = getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        notificationUtil.Y(applicationContext, strR, true);
    }

    private final d Q() {
        return (d) this.mLaunchViewModel.getValue();
    }

    private final String R() {
        return getIntent().getStringExtra("extra_message_id");
    }

    private final void S(Intent intent) {
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "appLinkData " + data + " type=" + intent.getType(), false, 4, null);
        try {
            P();
            ToolbarNotificationUtils.f48776a.v(intent);
            Q().i(this, data, new Function0() {
                @Override
                public final Object invoke() {
                    return DeepLinkHandler.U(this.f52644a);
                }
            });
            if (data.getBooleanQueryParameter("withoutAd", false)) {
                return;
            }
            overridePendingTransition(0, 0);
            finish();
        } catch (Exception e10) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "处理 appLinkData " + data + " 异常:" + e10.getMessage(), false, 4, null);
            finish();
        }
    }

    public static final Unit U(DeepLinkHandler deepLinkHandler) {
        deepLinkHandler.overridePendingTransition(0, 0);
        deepLinkHandler.finish();
        return Unit.f64096a;
    }

    private final void V(String messageId, boolean isPermanent) {
        k.d(o0.a(y0.b()), null, null, new DeepLinkHandler$updateMsgStatus$1(messageId, this, isPermanent, null), 3, null);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        Intrinsics.g(intent, "getIntent(...)");
        S(intent);
        com.transsion.baseui.activity.k.d(null, this, 1, null);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.baseui.activity.k.f(null, this, 1, null);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        S(intent);
    }

    @Override
    protected void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.k(null, this, 1, null);
    }

    @Override
    protected void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.o(null, this, 1, null);
    }
}

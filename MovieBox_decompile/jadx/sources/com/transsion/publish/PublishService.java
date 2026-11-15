package com.transsion.publish;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.publish.api.bean.RequestPostEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 #2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\u0016\u001a\u00020\u00132\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0003R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010 R\u0016\u0010\"\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001d¨\u0006$"}, d2 = {"Lcom/transsion/publish/PublishService;", "Landroid/app/Service;", "<init>", "()V", "Landroid/content/Intent;", "intent", "", "c", "(Landroid/content/Intent;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/Runnable;", "runnable", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/Runnable;)V", "onCreate", "p0", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "onDestroy", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "I", "NOTIFICATION_ID", "Lcom/transsion/publish/api/bean/RequestPostEntity;", "Lcom/transsion/publish/api/bean/RequestPostEntity;", "entity", "sourceType", "e", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PublishService extends Service {

    private static boolean f48210f;

    private Context context;

    private int NOTIFICATION_ID = 100012;

    private RequestPostEntity entity;

    private int sourceType;

    public static final Companion INSTANCE = new Companion(null);

    private static String f48211g = "PublishService";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, RequestPostEntity entity, int i10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(entity, "entity");
            Intent intent = new Intent(context, (Class<?>) PublishService.class);
            intent.putExtra("entity", entity);
            intent.putExtra("sourceType", i10);
            context.startService(intent);
        }

        private Companion() {
        }
    }

    private final void b(Runnable runnable) {
        p.f48365b.a().d(runnable);
    }

    private final void c(Intent intent) {
        f48210f = true;
        Intrinsics.e(intent);
        Serializable serializableExtra = intent.getSerializableExtra("entity");
        this.sourceType = intent.getIntExtra("sourceType", 0);
        if (serializableExtra != null && (serializableExtra instanceof RequestPostEntity)) {
            this.entity = (RequestPostEntity) serializableExtra;
        }
        d();
    }

    private final void d() {
        if (this.entity == null) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, f48211g, "disposePost", false, 4, null);
        wf.a.C0922a.f(c0922a, f48211g, String.valueOf(this.entity), false, 4, null);
        PublishManager publishManagerA = PublishManager.INSTANCE.a();
        RequestPostEntity requestPostEntity = this.entity;
        Intrinsics.e(requestPostEntity);
        publishManagerA.publish(requestPostEntity, this.sourceType);
    }

    public static final void e(PublishService publishService, Intent intent) {
        publishService.c(intent);
    }

    @Override
    public IBinder onBind(Intent p10) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.context = getApplicationContext();
    }

    @Override
    public void onDestroy() {
        wf.a.C0922a.f(wf.a.f74274a, f48211g, "onDestroy", false, 4, null);
        f48210f = false;
        stopForeground(true);
        super.onDestroy();
    }

    @Override
    public int onStartCommand(final Intent intent, int flags, int startId) {
        wf.a.C0922a.f(wf.a.f74274a, f48211g, "onStartCommand", false, 4, null);
        b(new Runnable() {
            @Override
            public final void run() {
                PublishService.e(this.f48360a, intent);
            }
        });
        return super.onStartCommand(intent, flags, startId);
    }
}

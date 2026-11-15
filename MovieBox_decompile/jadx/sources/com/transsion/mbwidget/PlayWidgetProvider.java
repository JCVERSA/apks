package com.transsion.mbwidget;

import android.app.Application;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.mbwidget.data.WidgetDataManager;
import com.transsion.mbwidget.utils.BitmapUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/transsion/mbwidget/PlayWidgetProvider;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/appwidget/AppWidgetManager;", "appWidgetManager", "", "appWidgetIds", "", "onUpdate", "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "onDisabled", "(Landroid/content/Context;)V", "onEnabled", "a", "Companion", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PlayWidgetProvider extends AppWidgetProvider {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00c6 A[Catch: all -> 0x0049, TryCatch #0 {all -> 0x0049, blocks: (B:13:0x0044, B:31:0x00b9, B:33:0x00bd, B:38:0x00cf, B:43:0x0116, B:44:0x0124, B:37:0x00c6), top: B:52:0x0044 }] */
        /* JADX WARN: Code duplicated, block: B:43:0x0116 A[Catch: all -> 0x0049, TryCatch #0 {all -> 0x0049, blocks: (B:13:0x0044, B:31:0x00b9, B:33:0x00bd, B:38:0x00cf, B:43:0x0116, B:44:0x0124, B:37:0x00c6), top: B:52:0x0044 }] */
        /* JADX WARN: Code duplicated, block: B:49:0x013b  */
        /* JADX WARN: Code duplicated, block: B:7:0x0017  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v28, types: [T, android.app.PendingIntent] */
        public final Object b(Context context, RemoteViews remoteViews, int i10, Continuation continuation) {
            PlayWidgetProvider$Companion$bindHistory$1 playWidgetProvider$Companion$bindHistory$1;
            Context context2;
            int i11;
            RemoteViews remoteViews2;
            VideoDetailPlayBean videoDetailPlayBean;
            Ref.ObjectRef objectRef;
            Context context3;
            Ref.ObjectRef objectRef2;
            int i12;
            RemoteViews remoteViews3;
            VideoDetailPlayBean videoDetailPlayBean2;
            PendingIntent pendingIntentM;
            Bitmap bitmapB;
            if (continuation instanceof PlayWidgetProvider$Companion$bindHistory$1) {
                playWidgetProvider$Companion$bindHistory$1 = (PlayWidgetProvider$Companion$bindHistory$1) continuation;
                int i13 = playWidgetProvider$Companion$bindHistory$1.label;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    playWidgetProvider$Companion$bindHistory$1.label = i13 - Integer.MIN_VALUE;
                } else {
                    playWidgetProvider$Companion$bindHistory$1 = new PlayWidgetProvider$Companion$bindHistory$1(this, continuation);
                }
            } else {
                playWidgetProvider$Companion$bindHistory$1 = new PlayWidgetProvider$Companion$bindHistory$1(this, continuation);
            }
            Object objP = playWidgetProvider$Companion$bindHistory$1.result;
            Object objF = IntrinsicsKt.f();
            int i14 = playWidgetProvider$Companion$bindHistory$1.label;
            try {
                if (i14 == 0) {
                    ResultKt.b(objP);
                    WidgetDataManager widgetDataManager = WidgetDataManager.f44888a;
                    context2 = context;
                    playWidgetProvider$Companion$bindHistory$1.L$0 = context2;
                    playWidgetProvider$Companion$bindHistory$1.L$1 = remoteViews;
                    i11 = i10;
                    playWidgetProvider$Companion$bindHistory$1.I$0 = i11;
                    playWidgetProvider$Companion$bindHistory$1.label = 1;
                    objP = widgetDataManager.p(playWidgetProvider$Companion$bindHistory$1);
                    if (objP == objF) {
                        return objF;
                    }
                    remoteViews2 = remoteViews;
                } else {
                    if (i14 != 1) {
                        if (i14 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i12 = playWidgetProvider$Companion$bindHistory$1.I$0;
                        objectRef2 = (Ref.ObjectRef) playWidgetProvider$Companion$bindHistory$1.L$3;
                        videoDetailPlayBean2 = (VideoDetailPlayBean) playWidgetProvider$Companion$bindHistory$1.L$2;
                        remoteViews3 = (RemoteViews) playWidgetProvider$Companion$bindHistory$1.L$1;
                        context3 = (Context) playWidgetProvider$Companion$bindHistory$1.L$0;
                        try {
                            ResultKt.b(objP);
                            bitmapB = (Bitmap) objP;
                            if (bitmapB != null || bitmapB.getByteCount() == 0) {
                                bitmapB = BitmapUtils.f44915a.b(R$mipmap.bg_img_widget_small);
                            }
                            remoteViews3.setImageViewBitmap(R$id.widget_img, vf.a.a(Utils.a(), bitmapB, lj.a.b(140), lj.a.b(154), false, lj.a.b(16)));
                            objectRef2.element = WidgetDataManager.f44888a.v(context3, false, Boxing.d(i12), videoDetailPlayBean2.getSubjectId());
                            com.transsion.mbwidget.utils.a.f44916a.d("subject", videoDetailPlayBean2.getSubjectId());
                            videoDetailPlayBean = videoDetailPlayBean2;
                            if (videoDetailPlayBean == null) {
                                com.transsion.mbwidget.utils.a.e(com.transsion.mbwidget.utils.a.f44916a, "root", null, 2, null);
                                remoteViews3.setImageViewResource(R$id.widget_img, R$mipmap.bg_img_widget_small);
                            }
                            Result.m453constructorimpl(Unit.f64096a);
                        } catch (Throwable th2) {
                            th = th2;
                            Result.Companion companion = Result.INSTANCE;
                            Result.m453constructorimpl(ResultKt.a(th));
                        }
                        int i15 = R$id.widget_root;
                        pendingIntentM = (PendingIntent) objectRef2.element;
                        if (pendingIntentM == null) {
                            pendingIntentM = WidgetDataManager.f44888a.m(context3, false, Boxing.d(i12));
                        }
                        remoteViews3.setOnClickPendingIntent(i15, pendingIntentM);
                        remoteViews3.setOnClickPendingIntent(R$id.widget_search, WidgetDataManager.f44888a.s(context3, false, Boxing.d(i12)));
                        com.transsion.mbwidget.utils.a.e(com.transsion.mbwidget.utils.a.f44916a, "search", null, 2, null);
                        return Unit.f64096a;
                    }
                    int i16 = playWidgetProvider$Companion$bindHistory$1.I$0;
                    remoteViews2 = (RemoteViews) playWidgetProvider$Companion$bindHistory$1.L$1;
                    Context context4 = (Context) playWidgetProvider$Companion$bindHistory$1.L$0;
                    ResultKt.b(objP);
                    i11 = i16;
                    context2 = context4;
                }
                Result.Companion companion2 = Result.INSTANCE;
                if (videoDetailPlayBean != null) {
                    BitmapUtils bitmapUtils = BitmapUtils.f44915a;
                    Application applicationA = Utils.a();
                    Intrinsics.g(applicationA, "getApp(...)");
                    String coverUrl = videoDetailPlayBean.getCoverUrl();
                    int iB = lj.a.b(154);
                    playWidgetProvider$Companion$bindHistory$1.L$0 = context2;
                    playWidgetProvider$Companion$bindHistory$1.L$1 = remoteViews2;
                    playWidgetProvider$Companion$bindHistory$1.L$2 = videoDetailPlayBean;
                    playWidgetProvider$Companion$bindHistory$1.L$3 = objectRef;
                    playWidgetProvider$Companion$bindHistory$1.I$0 = i11;
                    playWidgetProvider$Companion$bindHistory$1.label = 2;
                    Object objD = bitmapUtils.d(applicationA, coverUrl, iB, playWidgetProvider$Companion$bindHistory$1);
                    if (objD == objF) {
                        return objF;
                    }
                    i12 = i11;
                    RemoteViews remoteViews4 = remoteViews2;
                    videoDetailPlayBean2 = videoDetailPlayBean;
                    objP = objD;
                    context3 = context2;
                    objectRef2 = objectRef;
                    remoteViews3 = remoteViews4;
                    bitmapB = (Bitmap) objP;
                    if (bitmapB != null) {
                        bitmapB = BitmapUtils.f44915a.b(R$mipmap.bg_img_widget_small);
                    } else {
                        bitmapB = BitmapUtils.f44915a.b(R$mipmap.bg_img_widget_small);
                    }
                    remoteViews3.setImageViewBitmap(R$id.widget_img, vf.a.a(Utils.a(), bitmapB, lj.a.b(140), lj.a.b(154), false, lj.a.b(16)));
                    objectRef2.element = WidgetDataManager.f44888a.v(context3, false, Boxing.d(i12), videoDetailPlayBean2.getSubjectId());
                    com.transsion.mbwidget.utils.a.f44916a.d("subject", videoDetailPlayBean2.getSubjectId());
                    videoDetailPlayBean = videoDetailPlayBean2;
                } else {
                    context3 = context2;
                    objectRef2 = objectRef;
                    i12 = i11;
                    remoteViews3 = remoteViews2;
                }
                if (videoDetailPlayBean == null) {
                    com.transsion.mbwidget.utils.a.e(com.transsion.mbwidget.utils.a.f44916a, "root", null, 2, null);
                    remoteViews3.setImageViewResource(R$id.widget_img, R$mipmap.bg_img_widget_small);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th3) {
                th = th3;
                context3 = context2;
                objectRef2 = objectRef;
                i12 = i11;
                remoteViews3 = remoteViews2;
                Result.Companion companion3 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th));
            }
            videoDetailPlayBean = (VideoDetailPlayBean) objP;
            objectRef = new Ref.ObjectRef();
            int i17 = R$id.widget_root;
            pendingIntentM = (PendingIntent) objectRef2.element;
            if (pendingIntentM == null) {
                pendingIntentM = WidgetDataManager.f44888a.m(context3, false, Boxing.d(i12));
            }
            remoteViews3.setOnClickPendingIntent(i17, pendingIntentM);
            remoteViews3.setOnClickPendingIntent(R$id.widget_search, WidgetDataManager.f44888a.s(context3, false, Boxing.d(i12)));
            com.transsion.mbwidget.utils.a.e(com.transsion.mbwidget.utils.a.f44916a, "search", null, 2, null);
            return Unit.f64096a;
        }

        public final void c(Context context, AppWidgetManager appWidgetManager, int i10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(appWidgetManager, "appWidgetManager");
            k.d(o0.a(y0.b()), null, null, new PlayWidgetProvider$Companion$updateWidget$1(i10, context, appWidgetManager, null), 3, null);
        }

        private Companion() {
        }
    }

    @Override
    public void onDisabled(Context context) {
        super.onDisabled(context);
        com.transsion.mbwidget.utils.a.l(com.transsion.mbwidget.utils.a.f44916a, "history_desk_widget", false, null, 4, null);
    }

    @Override
    public void onEnabled(Context context) {
        super.onEnabled(context);
        com.transsion.mbwidget.utils.a.l(com.transsion.mbwidget.utils.a.f44916a, "history_desk_widget", true, null, 4, null);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        super.onReceive(context, intent);
        String action = intent.getAction();
        Bundle extras = intent.getExtras();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Play onReceive:");
        sb2.append(action);
        sb2.append(", ");
        sb2.append(extras);
        if (Intrinsics.c("com.transsion.mbwidget.play.ACTION_CLICK", intent.getAction())) {
            com.transsion.mbwidget.utils.a.f44916a.c(intent);
            String stringExtra = intent.getStringExtra("key_deeplink_widget");
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setFlags(ASTNode.DEOP);
            intent2.setData(Uri.parse(stringExtra));
            context.startActivity(intent2);
        }
    }

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appWidgetManager, "appWidgetManager");
        Intrinsics.h(appWidgetIds, "appWidgetIds");
        for (int i10 : appWidgetIds) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("appWidgetId:");
            sb2.append(i10);
            INSTANCE.c(context, appWidgetManager, i10);
        }
    }
}

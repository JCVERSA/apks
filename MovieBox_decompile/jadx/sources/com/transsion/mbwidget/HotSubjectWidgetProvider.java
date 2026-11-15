package com.transsion.mbwidget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.transsion.mbwidget.data.WidgetDataManager;
import com.transsion.mbwidget.utils.BitmapUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u0017\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/transsion/mbwidget/HotSubjectWidgetProvider;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "Landroid/content/Context;", "context", "", "refreshId", "", "widgetId", "", "e", "(Landroid/content/Context;Ljava/lang/String;I)V", "Landroid/appwidget/AppWidgetManager;", "appWidgetManager", "", "appWidgetIds", "onUpdate", "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "onDeleted", "(Landroid/content/Context;[I)V", "onDisabled", "(Landroid/content/Context;)V", "onEnabled", "a", "Companion", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HotSubjectWidgetProvider extends AppWidgetProvider {

    public static final Companion INSTANCE = new Companion(null);

    private static final List f44862b = CollectionsKt.o(Integer.valueOf(R$id.work_title1), Integer.valueOf(R$id.work_title2), Integer.valueOf(R$id.work_title3));

    private static final List f44863c = CollectionsKt.o(Integer.valueOf(R$id.work_img1), Integer.valueOf(R$id.work_img2), Integer.valueOf(R$id.work_img3));

    private static final List f44864d = CollectionsKt.o(Integer.valueOf(R$id.work_root1), Integer.valueOf(R$id.work_root2), Integer.valueOf(R$id.work_root3));

    private static final List f44865e = CollectionsKt.o(Integer.valueOf(R$id.work_tag1), Integer.valueOf(R$id.work_tag2), Integer.valueOf(R$id.work_tag3));

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:50:0x012a A[Catch: all -> 0x0101, TryCatch #0 {all -> 0x0101, blocks: (B:74:0x0227, B:48:0x0123, B:50:0x012a, B:53:0x0138, B:55:0x017e, B:60:0x0189, B:62:0x0194, B:63:0x0198, B:70:0x0200, B:47:0x011b, B:39:0x00f6, B:41:0x00fa, B:44:0x0104, B:35:0x00da), top: B:82:0x00da }] */
        /* JADX WARN: Code duplicated, block: B:52:0x0136  */
        /* JADX WARN: Code duplicated, block: B:55:0x017e A[Catch: all -> 0x0101, TryCatch #0 {all -> 0x0101, blocks: (B:74:0x0227, B:48:0x0123, B:50:0x012a, B:53:0x0138, B:55:0x017e, B:60:0x0189, B:62:0x0194, B:63:0x0198, B:70:0x0200, B:47:0x011b, B:39:0x00f6, B:41:0x00fa, B:44:0x0104, B:35:0x00da), top: B:82:0x00da }] */
        /* JADX WARN: Code duplicated, block: B:59:0x0187  */
        /* JADX WARN: Code duplicated, block: B:62:0x0194 A[Catch: all -> 0x0101, TryCatch #0 {all -> 0x0101, blocks: (B:74:0x0227, B:48:0x0123, B:50:0x012a, B:53:0x0138, B:55:0x017e, B:60:0x0189, B:62:0x0194, B:63:0x0198, B:70:0x0200, B:47:0x011b, B:39:0x00f6, B:41:0x00fa, B:44:0x0104, B:35:0x00da), top: B:82:0x00da }] */
        /* JADX WARN: Code duplicated, block: B:65:0x01ae A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x01af  */
        /* JADX WARN: Code duplicated, block: B:7:0x001b  */
        /* JADX WARN: Code duplicated, block: B:91:0x0138 A[SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v16, types: [android.widget.RemoteViews] */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v27 */
        /* JADX WARN: Type inference failed for: r1v28 */
        /* JADX WARN: Type inference failed for: r1v29 */
        /* JADX WARN: Type inference failed for: r6v0, types: [int] */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public final java.lang.Object c(android.content.Context r19, android.widget.RemoteViews r20, int r21, java.lang.String r22, kotlin.coroutines.Continuation r23) {
            /*
                Method dump skipped, instruction units count: 670
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.mbwidget.HotSubjectWidgetProvider.Companion.c(android.content.Context, android.widget.RemoteViews, int, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object d(String str, int i10, Continuation continuation) {
            HotSubjectWidgetProvider$Companion$getCoverBitmap$1 hotSubjectWidgetProvider$Companion$getCoverBitmap$1;
            if (continuation instanceof HotSubjectWidgetProvider$Companion$getCoverBitmap$1) {
                hotSubjectWidgetProvider$Companion$getCoverBitmap$1 = (HotSubjectWidgetProvider$Companion$getCoverBitmap$1) continuation;
                int i11 = hotSubjectWidgetProvider$Companion$getCoverBitmap$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    hotSubjectWidgetProvider$Companion$getCoverBitmap$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    hotSubjectWidgetProvider$Companion$getCoverBitmap$1 = new HotSubjectWidgetProvider$Companion$getCoverBitmap$1(this, continuation);
                }
            } else {
                hotSubjectWidgetProvider$Companion$getCoverBitmap$1 = new HotSubjectWidgetProvider$Companion$getCoverBitmap$1(this, continuation);
            }
            Object objK = hotSubjectWidgetProvider$Companion$getCoverBitmap$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = hotSubjectWidgetProvider$Companion$getCoverBitmap$1.label;
            if (i12 == 0) {
                ResultKt.b(objK);
                WidgetDataManager widgetDataManager = WidgetDataManager.f44888a;
                int iB = lj.a.b(68);
                hotSubjectWidgetProvider$Companion$getCoverBitmap$1.I$0 = i10;
                hotSubjectWidgetProvider$Companion$getCoverBitmap$1.label = 1;
                objK = widgetDataManager.k(str, iB, hotSubjectWidgetProvider$Companion$getCoverBitmap$1);
                if (objK == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = hotSubjectWidgetProvider$Companion$getCoverBitmap$1.I$0;
                ResultKt.b(objK);
            }
            Bitmap bitmapC = (Bitmap) objK;
            wf.a.f74274a.c("DeskWidget_", "bindList, i:" + i10 + ", bitmap:" + (bitmapC != null ? Boxing.d(bitmapC.getByteCount()) : null), true);
            if (bitmapC == null || bitmapC.getByteCount() == 0) {
                bitmapC = BitmapUtils.f44915a.c();
            }
            Bitmap bitmapA = vf.a.a(Utils.a(), bitmapC, lj.a.b(68), lj.a.b(95), false, lj.a.b(5));
            return bitmapA == null ? bitmapC : bitmapA;
        }

        public static void f(Companion companion, Context context, AppWidgetManager appWidgetManager, int i10, String str, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                str = null;
            }
            companion.e(context, appWidgetManager, i10, str);
        }

        public final void e(Context context, AppWidgetManager appWidgetManager, int i10, String str) {
            Intrinsics.h(context, "context");
            Intrinsics.h(appWidgetManager, "appWidgetManager");
            k.d(o0.a(y0.b()), null, null, new HotSubjectWidgetProvider$Companion$updateWidget$1(i10, str, context, appWidgetManager, null), 3, null);
        }

        private Companion() {
        }
    }

    private final void e(Context context, String refreshId, int widgetId) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        if (widgetId == 0) {
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) HotSubjectWidgetProvider.class));
            Intrinsics.g(appWidgetIds, "getAppWidgetIds(...)");
            Integer numT = ArraysKt.T(appWidgetIds);
            widgetId = numT != null ? numT.intValue() : 0;
        }
        Companion companion = INSTANCE;
        Intrinsics.e(appWidgetManager);
        companion.e(context, appWidgetManager, widgetId, refreshId);
    }

    @Override
    public void onDeleted(Context context, int[] appWidgetIds) {
        super.onDeleted(context, appWidgetIds);
        wf.a.f74274a.c("DeskWidget_", "HotSubjectWidgetProvider_onDeleted: " + appWidgetIds, true);
    }

    @Override
    public void onDisabled(Context context) {
        super.onDisabled(context);
        wf.a.f74274a.c("DeskWidget_", "HotSubjectWidgetProvider-onDisabled: Hot", true);
        com.transsion.mbwidget.utils.a.l(com.transsion.mbwidget.utils.a.f44916a, "hot_desk_widget", false, null, 4, null);
    }

    @Override
    public void onEnabled(Context context) {
        super.onEnabled(context);
        wf.a.f74274a.c("DeskWidget_", "HotSubjectWidgetProvider-onEnabled: Hot", true);
        com.transsion.mbwidget.utils.a.l(com.transsion.mbwidget.utils.a.f44916a, "hot_desk_widget", true, null, 4, null);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        super.onReceive(context, intent);
        wf.a.f74274a.c("DeskWidget_", "HotSubjectWidgetProvider onReceive:" + intent.getAction() + ", moduleName:" + intent.getStringExtra("key_module_name"), true);
        String action = intent.getAction();
        int intExtra = intent.getIntExtra("appWidgetId", 0);
        if (Intrinsics.c("com.transsion.mbwidget.hot.ACTION_CLICK", action)) {
            e(context, intent.getStringExtra("key_subject_id_widget"), intExtra);
            com.transsion.mbwidget.utils.a.f44916a.h(intent);
            String stringExtra = intent.getStringExtra("key_deeplink_widget");
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setFlags(ASTNode.DEOP);
            intent2.setData(Uri.parse(stringExtra));
            context.startActivity(intent2);
        }
    }

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        Object objM453constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(appWidgetManager, "appWidgetManager");
        Intrinsics.h(appWidgetIds, "appWidgetIds");
        for (int i10 : appWidgetIds) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion.f(INSTANCE, context, appWidgetManager, i10, null, 8, null);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                wf.a.C0922a.l(wf.a.f74274a, "DeskWidget_", "HotSubjectWidgetProvider,error:" + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
            }
        }
    }
}

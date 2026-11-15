package com.transsion.mbwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.SizeF;
import android.widget.RemoteViews;
import com.transsion.mbwidget.data.SportMatch;
import com.transsion.mbwidget.data.SportType;
import com.transsion.mbwidget.data.SportWidgetDataManager;
import com.transsion.mbwidget.data.WidgetDataManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/appwidget/AppWidgetManager;", "appWidgetManager", "", "appWidgetIds", "", "onUpdate", "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V", "", "appWidgetId", "Landroid/os/Bundle;", "newOptions", "onAppWidgetOptionsChanged", "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "onDisabled", "(Landroid/content/Context;)V", "onEnabled", "a", "Companion", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SportSchedulePreviewWidgetProvider extends AppWidgetProvider {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {

        private static final class a {

            private final String f44868a;

            private final int f44869b;

            private final int f44870c;

            public a(String name, int i10, int i11) {
                Intrinsics.h(name, "name");
                this.f44868a = name;
                this.f44869b = i10;
                this.f44870c = i11;
            }

            public final int a() {
                return this.f44870c;
            }

            public final String b() {
                return this.f44868a;
            }

            public final int c() {
                return this.f44869b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return Intrinsics.c(this.f44868a, aVar.f44868a) && this.f44869b == aVar.f44869b && this.f44870c == aVar.f44870c;
            }

            public int hashCode() {
                return (((this.f44868a.hashCode() * 31) + this.f44869b) * 31) + this.f44870c;
            }

            public String toString() {
                return "ReferenceSize(name=" + this.f44868a + ", widthDp=" + this.f44869b + ", heightDp=" + this.f44870c + ")";
            }
        }

        public class b {

            public static final int[] f44871a;

            static {
                int[] iArr = new int[SportType.values().length];
                try {
                    iArr[SportType.FOOTBALL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SportType.BASKETBALL.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SportType.CRICKET.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f44871a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void e(RemoteViews remoteViews, int i10, int i11) {
            if (Build.VERSION.SDK_INT < 31) {
                return;
            }
            float f10 = i10;
            remoteViews.setViewLayoutWidth(R$id.widget_upcoming_container, f10, 1);
            float f11 = i11;
            remoteViews.setViewLayoutHeight(R$id.widget_upcoming_container, f11, 1);
            remoteViews.setViewLayoutWidth(R$id.widget_default_container, f10, 1);
            remoteViews.setViewLayoutHeight(R$id.widget_default_container, f11, 1);
        }

        /* JADX WARN: Code duplicated, block: B:54:0x0179  */
        /* JADX WARN: Code duplicated, block: B:8:0x001c  */
        public final Object f(Context context, RemoteViews remoteViews, int i10, SportMatch sportMatch, Continuation continuation) {
            SportSchedulePreviewWidgetProvider$Companion$bindMatch$1 sportSchedulePreviewWidgetProvider$Companion$bindMatch$1;
            String str;
            Context context2;
            int i11;
            SportMatch sportMatch2;
            Context context3;
            String deeplink;
            RemoteViews remoteViews2 = remoteViews;
            SportMatch sportMatch3 = sportMatch;
            if (continuation instanceof SportSchedulePreviewWidgetProvider$Companion$bindMatch$1) {
                sportSchedulePreviewWidgetProvider$Companion$bindMatch$1 = (SportSchedulePreviewWidgetProvider$Companion$bindMatch$1) continuation;
                int i12 = sportSchedulePreviewWidgetProvider$Companion$bindMatch$1.label;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    sportSchedulePreviewWidgetProvider$Companion$bindMatch$1.label = i12 - Integer.MIN_VALUE;
                } else {
                    sportSchedulePreviewWidgetProvider$Companion$bindMatch$1 = new SportSchedulePreviewWidgetProvider$Companion$bindMatch$1(this, continuation);
                }
            } else {
                sportSchedulePreviewWidgetProvider$Companion$bindMatch$1 = new SportSchedulePreviewWidgetProvider$Companion$bindMatch$1(this, continuation);
            }
            SportSchedulePreviewWidgetProvider$Companion$bindMatch$1 sportSchedulePreviewWidgetProvider$Companion$bindMatch$2 = sportSchedulePreviewWidgetProvider$Companion$bindMatch$1;
            Object obj = sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.result;
            Object objF = IntrinsicsKt.f();
            int i13 = sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.label;
            if (i13 != 0) {
                if (i13 == 1) {
                    int i14 = sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.I$0;
                    SportMatch sportMatch4 = (SportMatch) sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$2;
                    RemoteViews remoteViews3 = (RemoteViews) sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$1;
                    Context context4 = (Context) sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$0;
                    ResultKt.b(obj);
                    i11 = i14;
                    sportMatch3 = sportMatch4;
                    remoteViews2 = remoteViews3;
                    context2 = context4;
                } else {
                    if (i13 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    int i15 = sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.I$0;
                    sportMatch2 = (SportMatch) sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$2;
                    RemoteViews remoteViews4 = (RemoteViews) sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$1;
                    Context context5 = (Context) sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$0;
                    ResultKt.b(obj);
                    i11 = i15;
                    remoteViews2 = remoteViews4;
                    context3 = context5;
                }
                deeplink = sportMatch2.getDeeplink();
                String matchId = sportMatch2.getMatchId();
                if (deeplink != null || deeplink.length() == 0) {
                    remoteViews2.setOnClickPendingIntent(R$id.widget_root, i(context3, i11));
                } else {
                    remoteViews2.setOnClickPendingIntent(R$id.widget_root, j(context3, i11, deeplink, matchId, "match"));
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            if (sportMatch3 == null) {
                p(context, remoteViews, i10);
                return Unit.f64096a;
            }
            wf.a.C0922a.f(wf.a.f74274a, "SportWidget_", "The match data is " + sportMatch3 + ", " + sportMatch.getMatchId(), false, 4, null);
            SportWidgetDataManager sportWidgetDataManager = SportWidgetDataManager.f44879a;
            boolean z10 = (sportWidgetDataManager.m(sportMatch3) || sportWidgetDataManager.l(sportMatch3)) ? false : true;
            remoteViews2.setViewVisibility(R$id.widget_upcoming_container, 0);
            remoteViews2.setViewVisibility(R$id.widget_default_container, 8);
            remoteViews2.setViewVisibility(R$id.widget_upcoming_label, z10 ? 0 : 8);
            int i16 = b.f44871a[sportMatch.getSportType().ordinal()];
            if (i16 == 1) {
                str = "football";
            } else if (i16 == 2) {
                str = "basketball";
            } else {
                if (i16 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                str = "cricket";
            }
            n(context, remoteViews, R$id.widget_upcoming_container, R$id.widget_bg_layer2, str);
            remoteViews2.setTextViewText(R$id.widget_match_time, g(sportMatch.getMatchTime()));
            remoteViews2.setTextViewText(R$id.widget_team1_name, sportMatch.getTeam1Name());
            remoteViews2.setTextViewText(R$id.widget_team2_name, sportMatch.getTeam2Name());
            int i17 = R$id.widget_team1_logo;
            String team1Logo = sportMatch.getTeam1Logo();
            int iB = lj.a.b(28);
            context2 = context;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$0 = context2;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$1 = remoteViews2;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$2 = sportMatch3;
            i11 = i10;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.I$0 = i11;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.label = 1;
            if (m(remoteViews, i17, team1Logo, iB, sportSchedulePreviewWidgetProvider$Companion$bindMatch$2) == objF) {
                return objF;
            }
            int i18 = R$id.widget_team2_logo;
            String team2Logo = sportMatch3.getTeam2Logo();
            int iB2 = lj.a.b(28);
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$0 = context2;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$1 = remoteViews2;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.L$2 = sportMatch3;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.I$0 = i11;
            sportSchedulePreviewWidgetProvider$Companion$bindMatch$2.label = 2;
            if (m(remoteViews2, i18, team2Logo, iB2, sportSchedulePreviewWidgetProvider$Companion$bindMatch$2) == objF) {
                return objF;
            }
            sportMatch2 = sportMatch3;
            context3 = context2;
            deeplink = sportMatch2.getDeeplink();
            String matchId2 = sportMatch2.getMatchId();
            if (deeplink != null) {
                remoteViews2.setOnClickPendingIntent(R$id.widget_root, i(context3, i11));
            } else {
                remoteViews2.setOnClickPendingIntent(R$id.widget_root, i(context3, i11));
            }
            return Unit.f64096a;
        }

        private final String g(long j10) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Date date = new Date(j10);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            int i10 = calendar.get(6);
            calendar.setTime(new Date(jCurrentTimeMillis));
            if (i10 == calendar.get(6)) {
                String str = new SimpleDateFormat("HH:mm", Locale.ENGLISH).format(date);
                Intrinsics.e(str);
                return str;
            }
            String str2 = new SimpleDateFormat("MM/dd HH:mm", Locale.ENGLISH).format(date);
            Intrinsics.e(str2);
            return str2;
        }

        private final Pair h(Bundle bundle) {
            int width = bundle.getInt("appWidgetMinWidth", 0);
            int i10 = bundle.getInt("appWidgetMinHeight", 0);
            int height = bundle.getInt("appWidgetMaxHeight", 0);
            if (width <= 0) {
                width = 138;
            }
            int i11 = i10 > 0 ? i10 : 145;
            if (Build.VERSION.SDK_INT >= 31) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("appWidgetSizes");
                if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                    Iterator it = parcelableArrayList.iterator();
                    if (!it.hasNext()) {
                        throw new NoSuchElementException();
                    }
                    Object next = it.next();
                    if (it.hasNext()) {
                        float f10 = width;
                        float fAbs = Math.abs(((SizeF) next).getWidth() - f10);
                        do {
                            Object next2 = it.next();
                            float fAbs2 = Math.abs(((SizeF) next2).getWidth() - f10);
                            if (Float.compare(fAbs, fAbs2) > 0) {
                                next = next2;
                                fAbs = fAbs2;
                            }
                        } while (it.hasNext());
                    }
                    SizeF sizeF = (SizeF) next;
                    width = (int) sizeF.getWidth();
                    height = (int) sizeF.getHeight();
                } else if (height <= 0) {
                    height = i11;
                }
            } else {
                if (height > 0) {
                    i10 = height;
                } else if (i10 <= 0) {
                    i10 = 145;
                }
                height = i10;
            }
            return TuplesKt.a(Integer.valueOf(width), Integer.valueOf(height));
        }

        private final PendingIntent i(Context context, int i10) {
            return j(context, i10, "", null, "root");
        }

        private final PendingIntent j(Context context, int i10, String str, String str2, String str3) {
            Intent intent = new Intent(context, (Class<?>) SportSchedulePreviewWidgetProvider.class);
            intent.setAction("com.transsion.mbwidget.sport.ACTION_CLICK");
            intent.putExtra("appWidgetId", i10);
            intent.putExtra("key_deeplink_widget", str);
            intent.putExtra("key_module_name", str3);
            if (str2 != null && str2.length() != 0) {
                intent.putExtra("key_match_id_widget", str2);
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(context, (int) System.currentTimeMillis(), intent, Build.VERSION.SDK_INT >= 31 ? 201326592 : ASTNode.NOJIT);
            Intrinsics.g(broadcast, "getBroadcast(...)");
            return broadcast;
        }

        private final int k(Context context, String str, String str2) {
            return context.getResources().getIdentifier(str, str2, context.getPackageName());
        }

        static int l(Companion companion, Context context, String str, String str2, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str2 = "mipmap";
            }
            return companion.k(context, str, str2);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object m(RemoteViews remoteViews, int i10, String str, int i11, Continuation continuation) {
            SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1 sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1;
            if (continuation instanceof SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1) {
                sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1 = (SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1) continuation;
                int i12 = sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.label;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.label = i12 - Integer.MIN_VALUE;
                } else {
                    sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1 = new SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1(this, continuation);
                }
            } else {
                sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1 = new SportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1(this, continuation);
            }
            Object objK = sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.result;
            Object objF = IntrinsicsKt.f();
            int i13 = sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.label;
            try {
                if (i13 == 0) {
                    ResultKt.b(objK);
                    if (str == null || str.length() == 0) {
                        return Unit.f64096a;
                    }
                    WidgetDataManager widgetDataManager = WidgetDataManager.f44888a;
                    sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.L$0 = remoteViews;
                    sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.L$1 = str;
                    sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.I$0 = i10;
                    sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.label = 1;
                    objK = widgetDataManager.k(str, i11, sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1);
                    if (objK == objF) {
                        return objF;
                    }
                } else {
                    if (i13 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i10 = sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.I$0;
                    str = (String) sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.L$1;
                    remoteViews = (RemoteViews) sportSchedulePreviewWidgetProvider$Companion$loadTeamLogo$1.L$0;
                    ResultKt.b(objK);
                }
                Bitmap bitmap = (Bitmap) objK;
                if (bitmap == null || bitmap.isRecycled()) {
                    wf.a.C0922a.l(wf.a.f74274a, "SportWidget_", "Failed to load team logo: " + str, false, 4, null);
                } else {
                    remoteViews.setImageViewBitmap(i10, bitmap);
                }
            } catch (Exception e10) {
                wf.a.C0922a.k(wf.a.f74274a, "SportWidget_", "Error loading team logo (" + str + "): " + e10.getMessage(), e10, false, 8, null);
            }
            return Unit.f64096a;
        }

        private final void n(Context context, RemoteViews remoteViews, int i10, int i11, String str) {
            try {
                int iL = l(this, context, "bg_" + str + "_layer1", null, 4, null);
                if (iL != 0) {
                    remoteViews.setInt(i10, "setBackgroundResource", iL);
                }
                int iL2 = l(this, context, "bg_" + str + "_layer2", null, 4, null);
                if (iL2 != 0) {
                    remoteViews.setImageViewResource(i11, iL2);
                }
            } catch (Exception e10) {
                wf.a.C0922a.k(wf.a.f74274a, "SportWidget_", "Error in dual layer rendering (" + str + "): " + e10.getMessage(), e10, false, 8, null);
            }
        }

        private final a o(int i10, int i11) {
            List<a> listO = CollectionsKt.o(new a("4x6", 138, 145), new a("4x7", 138, 139), new a("5x6", Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 138), new a("5x9", 176, 174));
            a aVar = (a) CollectionsKt.i0(listO);
            int i12 = Integer.MAX_VALUE;
            int i13 = Integer.MAX_VALUE;
            for (a aVar2 : listO) {
                int iAbs = Math.abs(aVar2.c() - i10);
                int iAbs2 = Math.abs(aVar2.a() - i11);
                if (iAbs < i12 || (iAbs == i12 && iAbs2 < i13)) {
                    aVar = aVar2;
                    i12 = iAbs;
                    i13 = iAbs2;
                }
            }
            return aVar;
        }

        public final void p(Context context, RemoteViews remoteViews, int i10) {
            remoteViews.setViewVisibility(R$id.widget_upcoming_container, 8);
            remoteViews.setViewVisibility(R$id.widget_default_container, 0);
            n(context, remoteViews, R$id.widget_default_container, R$id.widget_fallback_layer2, "default");
            PendingIntent pendingIntentI = i(context, i10);
            remoteViews.setOnClickPendingIntent(R$id.widget_watch_now_btn, pendingIntentI);
            remoteViews.setOnClickPendingIntent(R$id.widget_root, pendingIntentI);
        }

        public static void r(Companion companion, Context context, AppWidgetManager appWidgetManager, int i10, boolean z10, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                z10 = true;
            }
            companion.q(context, appWidgetManager, i10, z10);
        }

        public final void q(Context context, AppWidgetManager appWidgetManager, int i10, boolean z10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(appWidgetManager, "appWidgetManager");
            Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i10);
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "SportWidget_", "=== Widget Size Debug ===", false, 4, null);
            c0922a.c("SportWidget_", "Raw size from system: " + appWidgetOptions.getInt("appWidgetMinWidth", 0) + "dp x " + appWidgetOptions.getInt("appWidgetMinHeight", 0) + "dp", true);
            wf.a.C0922a.f(c0922a, "SportWidget_", "Design table standard (4x6): 138dp x 145dp", false, 4, null);
            wf.a.C0922a.f(c0922a, "SportWidget_", "Max size from system: " + appWidgetOptions.getInt("appWidgetMaxWidth", 0) + "dp x " + appWidgetOptions.getInt("appWidgetMaxHeight", 0) + "dp", false, 4, null);
            if (Build.VERSION.SDK_INT >= 31) {
                wf.a.C0922a.f(c0922a, "SportWidget_", "SizeF options: " + appWidgetOptions.getParcelableArrayList("appWidgetSizes"), false, 4, null);
            }
            Intrinsics.e(appWidgetOptions);
            Pair pairH = h(appWidgetOptions);
            int iIntValue = ((Number) pairH.component1()).intValue();
            int iIntValue2 = ((Number) pairH.component2()).intValue();
            a aVarO = o(iIntValue, iIntValue2);
            int iMin = Math.min(iIntValue, aVarO.c());
            int iA = (int) (aVarO.a() * 0.75f);
            int iL = RangesKt.l(iIntValue2, iA, aVarO.a());
            wf.a.C0922a.f(c0922a, "SportWidget_", "Base size: " + iIntValue + "dp x " + iIntValue2 + "dp", false, 4, null);
            c0922a.c("SportWidget_", "Reference size: " + aVarO.b() + " (" + aVarO.c() + "dp x " + aVarO.a() + "dp)", true);
            c0922a.c("SportWidget_", "Applied size: " + iMin + "dp x " + iL + "dp (minContentHeight=" + iA + ")", true);
            wf.a.C0922a.f(c0922a, "SportWidget_", "========================", false, 4, null);
            k.d(o0.a(y0.b()), null, null, new SportSchedulePreviewWidgetProvider$Companion$updateWidget$1(context, iMin, iL, i10, z10, appWidgetManager, null), 3, null);
        }

        private Companion() {
        }
    }

    @Override
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int appWidgetId, Bundle newOptions) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appWidgetManager, "appWidgetManager");
        Intrinsics.h(newOptions, "newOptions");
        super.onAppWidgetOptionsChanged(context, appWidgetManager, appWidgetId, newOptions);
        wf.a.C0922a.f(wf.a.f74274a, "SportWidget_", "SportWidgetProvider onAppWidgetOptionsChanged: appWidgetId=" + appWidgetId, false, 4, null);
        Companion.r(INSTANCE, context, appWidgetManager, appWidgetId, false, 8, null);
    }

    @Override
    public void onDisabled(Context context) {
        super.onDisabled(context);
        com.transsion.mbwidget.utils.a.l(com.transsion.mbwidget.utils.a.f44916a, "sport_desk_widget", false, null, 4, null);
        SportWidgetDataManager.f44879a.o();
    }

    @Override
    public void onEnabled(Context context) {
        super.onEnabled(context);
        com.transsion.mbwidget.utils.a.l(com.transsion.mbwidget.utils.a.f44916a, "sport_desk_widget", true, null, 4, null);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        super.onReceive(context, intent);
        if (Intrinsics.c("android.intent.action.LOCALE_CHANGED", intent.getAction())) {
            wf.a.C0922a.f(wf.a.f74274a, "SportWidget_", "Locale changed, refresh all sport widgets", false, 4, null);
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) SportSchedulePreviewWidgetProvider.class));
            Intrinsics.e(appWidgetIds);
            for (int i10 : appWidgetIds) {
                Companion companion = INSTANCE;
                Intrinsics.e(appWidgetManager);
                companion.q(context, appWidgetManager, i10, false);
            }
            return;
        }
        if (Intrinsics.c("com.transsion.mbwidget.sport.ACTION_CLICK", intent.getAction())) {
            com.transsion.mbwidget.utils.a.f44916a.f(intent);
            SportWidgetDataManager.f44879a.p();
            String stringExtra = intent.getStringExtra("key_deeplink_widget");
            wf.a.C0922a.f(wf.a.f74274a, "SportWidget_", "Sport widget clicked, deeplink: " + stringExtra, false, 4, null);
            if (stringExtra != null && stringExtra.length() != 0) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setFlags(ASTNode.DEOP);
                intent2.setData(Uri.parse(stringExtra));
                context.startActivity(intent2);
                return;
            }
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                return;
            }
            launchIntentForPackage.addFlags(ASTNode.DEOP);
            context.startActivity(launchIntentForPackage);
        }
    }

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appWidgetManager, "appWidgetManager");
        Intrinsics.h(appWidgetIds, "appWidgetIds");
        int[] appWidgetIds2 = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) SportSchedulePreviewWidgetProvider.class));
        Intrinsics.e(appWidgetIds2);
        if (appWidgetIds2.length == 0) {
            return;
        }
        Set setK0 = ArraysKt.K0(appWidgetIds);
        if (setK0.size() == 1) {
            SportWidgetDataManager.f44879a.e();
        }
        for (int i10 : appWidgetIds2) {
            boolean zContains = setK0.contains(Integer.valueOf(i10));
            wf.a.C0922a.f(wf.a.f74274a, "SportWidget_", "SportWidgetProvider onUpdate: appWidgetId=" + i10 + " reportExposure=" + zContains, false, 4, null);
            INSTANCE.q(context, appWidgetManager, i10, zContains);
        }
    }
}

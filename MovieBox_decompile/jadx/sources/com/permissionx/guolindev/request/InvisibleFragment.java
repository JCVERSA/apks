package com.permissionx.guolindev.request;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.a;
import androidx.activity.result.b;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import cf.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.permissionx.guolindev.dialog.RationaleDialog;
import com.permissionx.guolindev.request.InvisibleFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f.h;
import f.i;
import f.j;
import gf.e;
import gf.f;
import gf.o0;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u00020\b2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0019\u001a\u00020\b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ+\u0010!\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001d2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u001d\u0010#\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b#\u0010$J\u001d\u0010%\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b%\u0010$J\u001d\u0010&\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b&\u0010$J\u001d\u0010'\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b'\u0010$J\u001f\u0010(\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001fH\u0007¢\u0006\u0004\b(\u0010$J\u001d\u0010)\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b)\u0010$J\u001d\u0010*\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b*\u0010$J\u001d\u0010+\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b+\u0010$J\u001d\u0010,\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b,\u0010$J\r\u0010-\u001a\u00020\b¢\u0006\u0004\b-\u0010\u0003J\u000f\u0010.\u001a\u00020\bH\u0016¢\u0006\u0004\b.\u0010\u0003R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107R.\u0010>\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 ;*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010:0:098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\"\u0010@\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010\u00050\u0005098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010=R\"\u0010C\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010=R\"\u0010E\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010=R\"\u0010G\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010=R\"\u0010I\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010=R\"\u0010K\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010=R\"\u0010M\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010=R\"\u0010O\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010\u00050\u0005098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010=R\"\u0010Q\u001a\u0010\u0012\f\u0012\n ;*\u0004\u0018\u00010A0A098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010=¨\u0006R"}, d2 = {"Lcom/permissionx/guolindev/request/InvisibleFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", "", "", "grantResults", "", "H0", "(Ljava/util/Map;)V", "granted", "z0", "(Z)V", "M0", "N0", "F0", "D0", "I0", "K0", "B0", "w0", "()Z", "Lkotlin/Function0;", "callback", "P0", "(Lkotlin/jvm/functions/Function0;)V", "Lgf/o0;", "permissionBuilder", "", "permissions", "Lgf/e;", "chainTask", "i1", "(Lgf/o0;Ljava/util/Set;Lgf/e;)V", "s1", "(Lgf/o0;Lgf/e;)V", "R0", "o1", "r1", "c1", "Z0", "h1", "l1", "W0", "x0", "onDestroy", "Landroid/os/Handler;", "a", "Landroid/os/Handler;", "handler", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lgf/o0;", "pb", "c", "Lgf/e;", "task", "Landroidx/activity/result/b;", "", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/activity/result/b;", "requestNormalPermissionLauncher", "e", "requestBackgroundLocationLauncher", "Landroid/content/Intent;", "f", "requestSystemAlertWindowLauncher", "g", "requestWriteSettingsLauncher", "h", "requestManageExternalStorageLauncher", "i", "requestInstallPackagesLauncher", "j", "requestNotificationLauncher", CampaignEx.JSON_KEY_AD_K, "requestPipLauncher", "l", "requestBodySensorsBackgroundLauncher", "m", "forwardToSettingsLauncher", "PermissionX_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InvisibleFragment extends Fragment {

    private final Handler handler = new Handler(Looper.getMainLooper());

    private o0 pb;

    private e task;

    private final b requestNormalPermissionLauncher;

    private final b requestBackgroundLocationLauncher;

    private final b requestSystemAlertWindowLauncher;

    private final b requestWriteSettingsLauncher;

    private final b requestManageExternalStorageLauncher;

    private final b requestInstallPackagesLauncher;

    private final b requestNotificationLauncher;

    private final b requestPipLauncher;

    private final b requestBodySensorsBackgroundLauncher;

    private final b forwardToSettingsLauncher;

    public InvisibleFragment() {
        b bVarRegisterForActivityResult = registerForActivityResult(new h(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.d1(this.f60997a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestNormalPermissionLauncher = bVarRegisterForActivityResult;
        b bVarRegisterForActivityResult2 = registerForActivityResult(new i(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.S0(this.f61055a, (Boolean) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult2, "registerForActivityResult(...)");
        this.requestBackgroundLocationLauncher = bVarRegisterForActivityResult2;
        b bVarRegisterForActivityResult3 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.m1(this.f60981a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult3, "registerForActivityResult(...)");
        this.requestSystemAlertWindowLauncher = bVarRegisterForActivityResult3;
        b bVarRegisterForActivityResult4 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.p1(this.f60982a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult4, "registerForActivityResult(...)");
        this.requestWriteSettingsLauncher = bVarRegisterForActivityResult4;
        b bVarRegisterForActivityResult5 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.a1(this.f60988a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult5, "registerForActivityResult(...)");
        this.requestManageExternalStorageLauncher = bVarRegisterForActivityResult5;
        b bVarRegisterForActivityResult6 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.X0(this.f60989a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult6, "registerForActivityResult(...)");
        this.requestInstallPackagesLauncher = bVarRegisterForActivityResult6;
        b bVarRegisterForActivityResult7 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.f1(this.f60992a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult7, "registerForActivityResult(...)");
        this.requestNotificationLauncher = bVarRegisterForActivityResult7;
        b bVarRegisterForActivityResult8 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.j1(this.f60995a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult8, "registerForActivityResult(...)");
        this.requestPipLauncher = bVarRegisterForActivityResult8;
        b bVarRegisterForActivityResult9 = registerForActivityResult(new i(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.U0(this.f60996a, (Boolean) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult9, "registerForActivityResult(...)");
        this.requestBodySensorsBackgroundLauncher = bVarRegisterForActivityResult9;
        b bVarRegisterForActivityResult10 = registerForActivityResult(new j(), new a() {
            @Override
            public final void a(Object obj) {
                InvisibleFragment.y0(this.f60998a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult10, "registerForActivityResult(...)");
        this.forwardToSettingsLauncher = bVarRegisterForActivityResult10;
    }

    public static final Unit A0(boolean z10, InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (z10) {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.f61036j.add("android.permission.ACCESS_BACKGROUND_LOCATION");
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            o0Var2.f61037k.remove("android.permission.ACCESS_BACKGROUND_LOCATION");
            o0 o0Var3 = invisibleFragment.pb;
            if (o0Var3 == null) {
                Intrinsics.y("pb");
                o0Var3 = null;
            }
            o0Var3.f61038l.remove("android.permission.ACCESS_BACKGROUND_LOCATION");
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else {
            boolean zShouldShowRequestPermissionRationale = invisibleFragment.shouldShowRequestPermissionRationale("android.permission.ACCESS_BACKGROUND_LOCATION");
            o0 o0Var4 = invisibleFragment.pb;
            if (o0Var4 == null) {
                Intrinsics.y("pb");
                o0Var4 = null;
            }
            o0Var4.getClass();
            o0 o0Var5 = invisibleFragment.pb;
            if (o0Var5 == null) {
                Intrinsics.y("pb");
                o0Var5 = null;
            }
            if (o0Var5.f61043q == null || !zShouldShowRequestPermissionRationale) {
                o0 o0Var6 = invisibleFragment.pb;
                if (o0Var6 == null) {
                    Intrinsics.y("pb");
                    o0Var6 = null;
                }
                o0Var6.getClass();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add("android.permission.ACCESS_BACKGROUND_LOCATION");
                o0 o0Var7 = invisibleFragment.pb;
                if (o0Var7 == null) {
                    Intrinsics.y("pb");
                    o0Var7 = null;
                }
                if (o0Var7.f61043q == null) {
                    o0 o0Var8 = invisibleFragment.pb;
                    if (o0Var8 == null) {
                        Intrinsics.y("pb");
                        o0Var8 = null;
                    }
                    o0Var8.getClass();
                    Intrinsics.e(null);
                    e eVar3 = invisibleFragment.task;
                    if (eVar3 == null) {
                        Intrinsics.y("task");
                        eVar3 = null;
                    }
                    eVar3.b();
                    throw null;
                }
                o0 o0Var9 = invisibleFragment.pb;
                if (o0Var9 == null) {
                    Intrinsics.y("pb");
                    o0Var9 = null;
                }
                df.b bVar = o0Var9.f61043q;
                Intrinsics.e(bVar);
                e eVar4 = invisibleFragment.task;
                if (eVar4 == null) {
                    Intrinsics.y("task");
                    eVar4 = null;
                }
                bVar.a(eVar4.b(), arrayList, false, false);
                o0 o0Var10 = invisibleFragment.pb;
                if (o0Var10 == null) {
                    Intrinsics.y("pb");
                    o0Var10 = null;
                }
                if (!o0Var10.f61034h) {
                }
            }
            e eVar5 = invisibleFragment.task;
            if (eVar5 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar5;
            }
            eVar.finish();
        }
        return Unit.f64096a;
    }

    private final void B0(final boolean granted) {
        if (w0()) {
            P0(new Function0() {
                @Override
                public final Object invoke() {
                    return InvisibleFragment.C0(granted, this);
                }
            });
        }
    }

    public static final Unit C0(boolean z10, InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (z10) {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.f61036j.add("android.permission.BODY_SENSORS_BACKGROUND");
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            o0Var2.f61037k.remove("android.permission.BODY_SENSORS_BACKGROUND");
            o0 o0Var3 = invisibleFragment.pb;
            if (o0Var3 == null) {
                Intrinsics.y("pb");
                o0Var3 = null;
            }
            o0Var3.f61038l.remove("android.permission.BODY_SENSORS_BACKGROUND");
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else {
            boolean zShouldShowRequestPermissionRationale = invisibleFragment.shouldShowRequestPermissionRationale("android.permission.BODY_SENSORS_BACKGROUND");
            o0 o0Var4 = invisibleFragment.pb;
            if (o0Var4 == null) {
                Intrinsics.y("pb");
                o0Var4 = null;
            }
            o0Var4.getClass();
            o0 o0Var5 = invisibleFragment.pb;
            if (o0Var5 == null) {
                Intrinsics.y("pb");
                o0Var5 = null;
            }
            if (o0Var5.f61043q == null || !zShouldShowRequestPermissionRationale) {
                o0 o0Var6 = invisibleFragment.pb;
                if (o0Var6 == null) {
                    Intrinsics.y("pb");
                    o0Var6 = null;
                }
                o0Var6.getClass();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add("android.permission.BODY_SENSORS_BACKGROUND");
                o0 o0Var7 = invisibleFragment.pb;
                if (o0Var7 == null) {
                    Intrinsics.y("pb");
                    o0Var7 = null;
                }
                if (o0Var7.f61043q == null) {
                    o0 o0Var8 = invisibleFragment.pb;
                    if (o0Var8 == null) {
                        Intrinsics.y("pb");
                        o0Var8 = null;
                    }
                    o0Var8.getClass();
                    Intrinsics.e(null);
                    e eVar3 = invisibleFragment.task;
                    if (eVar3 == null) {
                        Intrinsics.y("task");
                        eVar3 = null;
                    }
                    eVar3.b();
                    throw null;
                }
                o0 o0Var9 = invisibleFragment.pb;
                if (o0Var9 == null) {
                    Intrinsics.y("pb");
                    o0Var9 = null;
                }
                df.b bVar = o0Var9.f61043q;
                Intrinsics.e(bVar);
                e eVar4 = invisibleFragment.task;
                if (eVar4 == null) {
                    Intrinsics.y("task");
                    eVar4 = null;
                }
                bVar.a(eVar4.b(), arrayList, false, false);
                o0 o0Var10 = invisibleFragment.pb;
                if (o0Var10 == null) {
                    Intrinsics.y("pb");
                    o0Var10 = null;
                }
                if (!o0Var10.f61034h) {
                }
            }
            e eVar5 = invisibleFragment.task;
            if (eVar5 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar5;
            }
            eVar.finish();
        }
        return Unit.f64096a;
    }

    private final void D0() {
        if (w0()) {
            P0(new Function0() {
                @Override
                public final Object invoke() {
                    return InvisibleFragment.E0(this.f61059a);
                }
            });
        }
    }

    public static final Unit E0(InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (Build.VERSION.SDK_INT < 26) {
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else if (invisibleFragment.requireActivity().getPackageManager().canRequestPackageInstalls()) {
            e eVar3 = invisibleFragment.task;
            if (eVar3 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar3;
            }
            eVar.finish();
        } else {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.getClass();
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            if (o0Var2.f61043q != null) {
                o0 o0Var3 = invisibleFragment.pb;
                if (o0Var3 == null) {
                    Intrinsics.y("pb");
                    o0Var3 = null;
                }
                if (o0Var3.f61043q == null) {
                    o0 o0Var4 = invisibleFragment.pb;
                    if (o0Var4 == null) {
                        Intrinsics.y("pb");
                        o0Var4 = null;
                    }
                    o0Var4.getClass();
                    Intrinsics.e(null);
                    e eVar4 = invisibleFragment.task;
                    if (eVar4 == null) {
                        Intrinsics.y("task");
                        eVar4 = null;
                    }
                    eVar4.b();
                    CollectionsKt.e("android.permission.REQUEST_INSTALL_PACKAGES");
                    throw null;
                }
                o0 o0Var5 = invisibleFragment.pb;
                if (o0Var5 == null) {
                    Intrinsics.y("pb");
                    o0Var5 = null;
                }
                df.b bVar = o0Var5.f61043q;
                Intrinsics.e(bVar);
                e eVar5 = invisibleFragment.task;
                if (eVar5 == null) {
                    Intrinsics.y("task");
                } else {
                    eVar = eVar5;
                }
                bVar.a(eVar.b(), CollectionsKt.e("android.permission.REQUEST_INSTALL_PACKAGES"), false, false);
            }
        }
        return Unit.f64096a;
    }

    private final void F0() {
        if (w0()) {
            P0(new Function0() {
                @Override
                public final Object invoke() {
                    return InvisibleFragment.G0(this.f61064a);
                }
            });
        }
    }

    public static final Unit G0(InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (Build.VERSION.SDK_INT < 30) {
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else if (Environment.isExternalStorageManager()) {
            e eVar3 = invisibleFragment.task;
            if (eVar3 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar3;
            }
            eVar.finish();
        } else {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.getClass();
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            if (o0Var2.f61043q != null) {
                o0 o0Var3 = invisibleFragment.pb;
                if (o0Var3 == null) {
                    Intrinsics.y("pb");
                    o0Var3 = null;
                }
                if (o0Var3.f61043q == null) {
                    o0 o0Var4 = invisibleFragment.pb;
                    if (o0Var4 == null) {
                        Intrinsics.y("pb");
                        o0Var4 = null;
                    }
                    o0Var4.getClass();
                    Intrinsics.e(null);
                    e eVar4 = invisibleFragment.task;
                    if (eVar4 == null) {
                        Intrinsics.y("task");
                        eVar4 = null;
                    }
                    eVar4.b();
                    CollectionsKt.e("android.permission.MANAGE_EXTERNAL_STORAGE");
                    throw null;
                }
                o0 o0Var5 = invisibleFragment.pb;
                if (o0Var5 == null) {
                    Intrinsics.y("pb");
                    o0Var5 = null;
                }
                df.b bVar = o0Var5.f61043q;
                Intrinsics.e(bVar);
                e eVar5 = invisibleFragment.task;
                if (eVar5 == null) {
                    Intrinsics.y("task");
                } else {
                    eVar = eVar5;
                }
                bVar.a(eVar.b(), CollectionsKt.e("android.permission.MANAGE_EXTERNAL_STORAGE"), false, false);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:195:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:196:0x02fc  */
    private final void H0(Map grantResults) {
        o0 o0Var;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || !w0()) {
            return;
        }
        o0 o0Var2 = this.pb;
        o0 o0Var3 = null;
        e eVar = null;
        if (o0Var2 == null) {
            Intrinsics.y("pb");
            o0Var2 = null;
        }
        o0Var2.f61036j.clear();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : grantResults.entrySet()) {
            String str = (String) entry.getKey();
            if (((Boolean) entry.getValue()).booleanValue()) {
                o0 o0Var4 = this.pb;
                if (o0Var4 == null) {
                    Intrinsics.y("pb");
                    o0Var4 = null;
                }
                o0Var4.f61036j.add(str);
                o0 o0Var5 = this.pb;
                if (o0Var5 == null) {
                    Intrinsics.y("pb");
                    o0Var5 = null;
                }
                o0Var5.f61037k.remove(str);
                o0 o0Var6 = this.pb;
                if (o0Var6 == null) {
                    Intrinsics.y("pb");
                    o0Var6 = null;
                }
                o0Var6.f61038l.remove(str);
            } else if (shouldShowRequestPermissionRationale(str)) {
                arrayList.add(str);
                o0 o0Var7 = this.pb;
                if (o0Var7 == null) {
                    Intrinsics.y("pb");
                    o0Var7 = null;
                }
                o0Var7.f61037k.add(str);
            } else {
                arrayList2.add(str);
                o0 o0Var8 = this.pb;
                if (o0Var8 == null) {
                    Intrinsics.y("pb");
                    o0Var8 = null;
                }
                o0Var8.f61038l.add(str);
                o0 o0Var9 = this.pb;
                if (o0Var9 == null) {
                    Intrinsics.y("pb");
                    o0Var9 = null;
                }
                o0Var9.f61037k.remove(str);
            }
        }
        if (Build.VERSION.SDK_INT >= 34) {
            o0 o0Var10 = this.pb;
            if (o0Var10 == null) {
                Intrinsics.y("pb");
                o0Var10 = null;
            }
            if (o0Var10.f61036j.contains("android.permission.READ_MEDIA_VISUAL_USER_SELECTED")) {
                o0 o0Var11 = this.pb;
                if (o0Var11 == null) {
                    Intrinsics.y("pb");
                    o0Var11 = null;
                }
                if (o0Var11.f61037k.contains("android.permission.READ_MEDIA_IMAGES")) {
                    o0 o0Var12 = this.pb;
                    if (o0Var12 == null) {
                        Intrinsics.y("pb");
                        o0Var12 = null;
                    }
                    o0Var12.f61037k.remove("android.permission.READ_MEDIA_IMAGES");
                    arrayList.remove("android.permission.READ_MEDIA_IMAGES");
                    o0 o0Var13 = this.pb;
                    if (o0Var13 == null) {
                        Intrinsics.y("pb");
                        o0Var13 = null;
                    }
                    o0Var13.f61040n.add("android.permission.READ_MEDIA_IMAGES");
                } else {
                    o0 o0Var14 = this.pb;
                    if (o0Var14 == null) {
                        Intrinsics.y("pb");
                        o0Var14 = null;
                    }
                    if (o0Var14.f61038l.contains("android.permission.READ_MEDIA_IMAGES")) {
                        o0 o0Var15 = this.pb;
                        if (o0Var15 == null) {
                            Intrinsics.y("pb");
                            o0Var15 = null;
                        }
                        o0Var15.f61038l.remove("android.permission.READ_MEDIA_IMAGES");
                        arrayList2.remove("android.permission.READ_MEDIA_IMAGES");
                        o0 o0Var16 = this.pb;
                        if (o0Var16 == null) {
                            Intrinsics.y("pb");
                            o0Var16 = null;
                        }
                        o0Var16.f61040n.add("android.permission.READ_MEDIA_IMAGES");
                    }
                }
                o0 o0Var17 = this.pb;
                if (o0Var17 == null) {
                    Intrinsics.y("pb");
                    o0Var17 = null;
                }
                if (o0Var17.f61037k.contains("android.permission.READ_MEDIA_VIDEO")) {
                    o0 o0Var18 = this.pb;
                    if (o0Var18 == null) {
                        Intrinsics.y("pb");
                        o0Var18 = null;
                    }
                    o0Var18.f61037k.remove("android.permission.READ_MEDIA_VIDEO");
                    arrayList.remove("android.permission.READ_MEDIA_VIDEO");
                    o0 o0Var19 = this.pb;
                    if (o0Var19 == null) {
                        Intrinsics.y("pb");
                        o0Var19 = null;
                    }
                    o0Var19.f61040n.add("android.permission.READ_MEDIA_VIDEO");
                } else {
                    o0 o0Var20 = this.pb;
                    if (o0Var20 == null) {
                        Intrinsics.y("pb");
                        o0Var20 = null;
                    }
                    if (o0Var20.f61038l.contains("android.permission.READ_MEDIA_VIDEO")) {
                        o0 o0Var21 = this.pb;
                        if (o0Var21 == null) {
                            Intrinsics.y("pb");
                            o0Var21 = null;
                        }
                        o0Var21.f61038l.remove("android.permission.READ_MEDIA_VIDEO");
                        arrayList2.remove("android.permission.READ_MEDIA_VIDEO");
                        o0 o0Var22 = this.pb;
                        if (o0Var22 == null) {
                            Intrinsics.y("pb");
                            o0Var22 = null;
                        }
                        o0Var22.f61040n.add("android.permission.READ_MEDIA_VIDEO");
                    }
                }
            }
        }
        ArrayList<String> arrayList3 = new ArrayList();
        o0 o0Var23 = this.pb;
        if (o0Var23 == null) {
            Intrinsics.y("pb");
            o0Var23 = null;
        }
        arrayList3.addAll(o0Var23.f61037k);
        o0 o0Var24 = this.pb;
        if (o0Var24 == null) {
            Intrinsics.y("pb");
            o0Var24 = null;
        }
        arrayList3.addAll(o0Var24.f61038l);
        for (String str2 : arrayList3) {
            if (c.f16930a.f(activity, str2)) {
                o0 o0Var25 = this.pb;
                if (o0Var25 == null) {
                    Intrinsics.y("pb");
                    o0Var25 = null;
                }
                o0Var25.f61037k.remove(str2);
                o0 o0Var26 = this.pb;
                if (o0Var26 == null) {
                    Intrinsics.y("pb");
                    o0Var26 = null;
                }
                o0Var26.f61036j.add(str2);
            }
        }
        o0 o0Var27 = this.pb;
        if (o0Var27 == null) {
            Intrinsics.y("pb");
            o0Var27 = null;
        }
        int size = o0Var27.f61036j.size();
        o0 o0Var28 = this.pb;
        if (o0Var28 == null) {
            Intrinsics.y("pb");
            o0Var28 = null;
        }
        if (size == o0Var28.f61031e.size()) {
            e eVar2 = this.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
            return;
        }
        o0 o0Var29 = this.pb;
        if (o0Var29 == null) {
            Intrinsics.y("pb");
            o0Var29 = null;
        }
        o0Var29.getClass();
        o0 o0Var30 = this.pb;
        if (o0Var30 == null) {
            Intrinsics.y("pb");
            o0Var30 = null;
        }
        if (o0Var30.f61043q != null && !arrayList.isEmpty()) {
            o0 o0Var31 = this.pb;
            if (o0Var31 == null) {
                Intrinsics.y("pb");
                o0Var31 = null;
            }
            if (o0Var31.f61043q == null) {
                o0 o0Var32 = this.pb;
                if (o0Var32 == null) {
                    Intrinsics.y("pb");
                    o0Var32 = null;
                }
                o0Var32.getClass();
                Intrinsics.e(null);
                e eVar3 = this.task;
                if (eVar3 == null) {
                    Intrinsics.y("task");
                    eVar3 = null;
                }
                eVar3.b();
                o0 o0Var33 = this.pb;
                if (o0Var33 == null) {
                    Intrinsics.y("pb");
                    o0Var33 = null;
                }
                new ArrayList(o0Var33.f61037k);
                throw null;
            }
            o0 o0Var34 = this.pb;
            if (o0Var34 == null) {
                Intrinsics.y("pb");
                o0Var34 = null;
            }
            df.b bVar = o0Var34.f61043q;
            Intrinsics.e(bVar);
            e eVar4 = this.task;
            if (eVar4 == null) {
                Intrinsics.y("task");
                eVar4 = null;
            }
            f fVarB = eVar4.b();
            o0 o0Var35 = this.pb;
            if (o0Var35 == null) {
                Intrinsics.y("pb");
                o0Var35 = null;
            }
            bVar.a(fVarB, new ArrayList(o0Var35.f61037k), false, false);
            o0 o0Var36 = this.pb;
            if (o0Var36 == null) {
                Intrinsics.y("pb");
                o0Var36 = null;
            }
            o0Var36.f61039m.addAll(arrayList2);
            o0 o0Var37 = this.pb;
            if (o0Var37 == null) {
                Intrinsics.y("pb");
                o0Var37 = null;
            }
            if (!o0Var37.f61034h) {
            }
            o0Var = this.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
            } else {
                o0Var3 = o0Var;
            }
            o0Var3.f61034h = false;
        }
        o0 o0Var38 = this.pb;
        if (o0Var38 == null) {
            Intrinsics.y("pb");
            o0Var38 = null;
        }
        o0Var38.getClass();
        o0 o0Var39 = this.pb;
        if (o0Var39 == null) {
            Intrinsics.y("pb");
            o0Var39 = null;
        }
        for (String str3 : o0Var39.f61040n) {
            o0 o0Var40 = this.pb;
            if (o0Var40 == null) {
                Intrinsics.y("pb");
                o0Var40 = null;
            }
            o0Var40.f61037k.add(str3);
        }
        o0 o0Var41 = this.pb;
        if (o0Var41 == null) {
            Intrinsics.y("pb");
            o0Var41 = null;
        }
        o0Var41.f61040n.clear();
        e eVar5 = this.task;
        if (eVar5 == null) {
            Intrinsics.y("task");
            eVar5 = null;
        }
        eVar5.finish();
        o0Var = this.pb;
        if (o0Var == null) {
            Intrinsics.y("pb");
        } else {
            o0Var3 = o0Var;
        }
        o0Var3.f61034h = false;
    }

    private final void I0() {
        final FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || !w0()) {
            return;
        }
        P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.J0(activity, this);
            }
        });
    }

    public static final Unit J0(FragmentActivity fragmentActivity, InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (Build.VERSION.SDK_INT < 26) {
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else if (c.f16930a.b(fragmentActivity)) {
            e eVar3 = invisibleFragment.task;
            if (eVar3 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar3;
            }
            eVar.finish();
        } else {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.getClass();
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            if (o0Var2.f61043q != null) {
                o0 o0Var3 = invisibleFragment.pb;
                if (o0Var3 == null) {
                    Intrinsics.y("pb");
                    o0Var3 = null;
                }
                if (o0Var3.f61043q == null) {
                    o0 o0Var4 = invisibleFragment.pb;
                    if (o0Var4 == null) {
                        Intrinsics.y("pb");
                        o0Var4 = null;
                    }
                    o0Var4.getClass();
                    Intrinsics.e(null);
                    e eVar4 = invisibleFragment.task;
                    if (eVar4 == null) {
                        Intrinsics.y("task");
                        eVar4 = null;
                    }
                    eVar4.b();
                    CollectionsKt.e("android.permission.POST_NOTIFICATIONS");
                    throw null;
                }
                o0 o0Var5 = invisibleFragment.pb;
                if (o0Var5 == null) {
                    Intrinsics.y("pb");
                    o0Var5 = null;
                }
                df.b bVar = o0Var5.f61043q;
                Intrinsics.e(bVar);
                e eVar5 = invisibleFragment.task;
                if (eVar5 == null) {
                    Intrinsics.y("task");
                } else {
                    eVar = eVar5;
                }
                bVar.a(eVar.b(), CollectionsKt.e("android.permission.POST_NOTIFICATIONS"), false, false);
            }
        }
        return Unit.f64096a;
    }

    private final void K0() {
        final FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || !w0()) {
            return;
        }
        P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.L0(activity, this);
            }
        });
    }

    public static final Unit L0(FragmentActivity fragmentActivity, InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (Build.VERSION.SDK_INT < 26) {
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else if (c.f16930a.c(fragmentActivity)) {
            e eVar3 = invisibleFragment.task;
            if (eVar3 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar3;
            }
            eVar.finish();
        } else {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.getClass();
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            if (o0Var2.f61043q != null) {
                o0 o0Var3 = invisibleFragment.pb;
                if (o0Var3 == null) {
                    Intrinsics.y("pb");
                    o0Var3 = null;
                }
                if (o0Var3.f61043q == null) {
                    o0 o0Var4 = invisibleFragment.pb;
                    if (o0Var4 == null) {
                        Intrinsics.y("pb");
                        o0Var4 = null;
                    }
                    o0Var4.getClass();
                    Intrinsics.e(null);
                    e eVar4 = invisibleFragment.task;
                    if (eVar4 == null) {
                        Intrinsics.y("task");
                        eVar4 = null;
                    }
                    eVar4.b();
                    CollectionsKt.e("android.permission.PICTURE_IN_PICTURE");
                    throw null;
                }
                o0 o0Var5 = invisibleFragment.pb;
                if (o0Var5 == null) {
                    Intrinsics.y("pb");
                    o0Var5 = null;
                }
                df.b bVar = o0Var5.f61043q;
                Intrinsics.e(bVar);
                e eVar5 = invisibleFragment.task;
                if (eVar5 == null) {
                    Intrinsics.y("task");
                } else {
                    eVar = eVar5;
                }
                bVar.a(eVar.b(), CollectionsKt.e("android.permission.PICTURE_IN_PICTURE"), false, true);
            }
        }
        return Unit.f64096a;
    }

    private final void M0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || !w0()) {
            return;
        }
        e eVar = null;
        if (Settings.canDrawOverlays(activity)) {
            e eVar2 = this.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
            return;
        }
        o0 o0Var = this.pb;
        if (o0Var == null) {
            Intrinsics.y("pb");
            o0Var = null;
        }
        o0Var.getClass();
        o0 o0Var2 = this.pb;
        if (o0Var2 == null) {
            Intrinsics.y("pb");
            o0Var2 = null;
        }
        if (o0Var2.f61043q != null) {
            o0 o0Var3 = this.pb;
            if (o0Var3 == null) {
                Intrinsics.y("pb");
                o0Var3 = null;
            }
            if (o0Var3.f61043q != null) {
                o0 o0Var4 = this.pb;
                if (o0Var4 == null) {
                    Intrinsics.y("pb");
                    o0Var4 = null;
                }
                df.b bVar = o0Var4.f61043q;
                Intrinsics.e(bVar);
                e eVar3 = this.task;
                if (eVar3 == null) {
                    Intrinsics.y("task");
                } else {
                    eVar = eVar3;
                }
                bVar.a(eVar.b(), CollectionsKt.e("android.permission.SYSTEM_ALERT_WINDOW"), false, false);
                return;
            }
            o0 o0Var5 = this.pb;
            if (o0Var5 == null) {
                Intrinsics.y("pb");
                o0Var5 = null;
            }
            o0Var5.getClass();
            Intrinsics.e(null);
            e eVar4 = this.task;
            if (eVar4 == null) {
                Intrinsics.y("task");
                eVar4 = null;
            }
            eVar4.b();
            CollectionsKt.e("android.permission.SYSTEM_ALERT_WINDOW");
            throw null;
        }
    }

    private final void N0() {
        final FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || !w0()) {
            return;
        }
        P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.O0(activity, this);
            }
        });
    }

    public static final Unit O0(FragmentActivity fragmentActivity, InvisibleFragment invisibleFragment) {
        e eVar = null;
        if (Settings.System.canWrite(fragmentActivity)) {
            e eVar2 = invisibleFragment.task;
            if (eVar2 == null) {
                Intrinsics.y("task");
            } else {
                eVar = eVar2;
            }
            eVar.finish();
        } else {
            o0 o0Var = invisibleFragment.pb;
            if (o0Var == null) {
                Intrinsics.y("pb");
                o0Var = null;
            }
            o0Var.getClass();
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
                o0Var2 = null;
            }
            if (o0Var2.f61043q != null) {
                o0 o0Var3 = invisibleFragment.pb;
                if (o0Var3 == null) {
                    Intrinsics.y("pb");
                    o0Var3 = null;
                }
                if (o0Var3.f61043q == null) {
                    o0 o0Var4 = invisibleFragment.pb;
                    if (o0Var4 == null) {
                        Intrinsics.y("pb");
                        o0Var4 = null;
                    }
                    o0Var4.getClass();
                    Intrinsics.e(null);
                    e eVar3 = invisibleFragment.task;
                    if (eVar3 == null) {
                        Intrinsics.y("task");
                        eVar3 = null;
                    }
                    eVar3.b();
                    CollectionsKt.e("android.permission.WRITE_SETTINGS");
                    throw null;
                }
                o0 o0Var5 = invisibleFragment.pb;
                if (o0Var5 == null) {
                    Intrinsics.y("pb");
                    o0Var5 = null;
                }
                df.b bVar = o0Var5.f61043q;
                Intrinsics.e(bVar);
                e eVar4 = invisibleFragment.task;
                if (eVar4 == null) {
                    Intrinsics.y("task");
                } else {
                    eVar = eVar4;
                }
                bVar.a(eVar.b(), CollectionsKt.e("android.permission.WRITE_SETTINGS"), false, false);
            }
        }
        return Unit.f64096a;
    }

    private final void P0(final Function0 callback) {
        this.handler.post(new Runnable() {
            @Override
            public final void run() {
                InvisibleFragment.Q0(callback);
            }
        });
    }

    public static final void Q0(Function0 function0) {
        function0.invoke();
    }

    public static final void S0(final InvisibleFragment invisibleFragment, final Boolean granted) {
        Intrinsics.h(granted, "granted");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.T0(this.f61047a, granted);
            }
        });
    }

    public static final Unit T0(InvisibleFragment invisibleFragment, Boolean bool) {
        Intrinsics.e(bool);
        invisibleFragment.z0(bool.booleanValue());
        return Unit.f64096a;
    }

    public static final void U0(final InvisibleFragment invisibleFragment, final Boolean granted) {
        Intrinsics.h(granted, "granted");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.V0(this.f61024a, granted);
            }
        });
    }

    public static final Unit V0(InvisibleFragment invisibleFragment, Boolean bool) {
        Intrinsics.e(bool);
        invisibleFragment.B0(bool.booleanValue());
        return Unit.f64096a;
    }

    public static final void X0(final InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.Y0(this.f61019a);
            }
        });
    }

    public static final Unit Y0(InvisibleFragment invisibleFragment) {
        invisibleFragment.D0();
        return Unit.f64096a;
    }

    public static final void a1(final InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.b1(this.f61045a);
            }
        });
    }

    public static final Unit b1(InvisibleFragment invisibleFragment) {
        invisibleFragment.F0();
        return Unit.f64096a;
    }

    public static final void d1(final InvisibleFragment invisibleFragment, final Map grantResults) {
        Intrinsics.h(grantResults, "grantResults");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.e1(this.f61005a, grantResults);
            }
        });
    }

    public static final Unit e1(InvisibleFragment invisibleFragment, Map map) {
        Intrinsics.e(map);
        invisibleFragment.H0(map);
        return Unit.f64096a;
    }

    public static final void f1(final InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.g1(this.f61013a);
            }
        });
    }

    public static final Unit g1(InvisibleFragment invisibleFragment) {
        invisibleFragment.I0();
        return Unit.f64096a;
    }

    public static final void j1(final InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.k1(this.f61050a);
            }
        });
    }

    public static final Unit k1(InvisibleFragment invisibleFragment) {
        invisibleFragment.K0();
        return Unit.f64096a;
    }

    public static final void m1(final InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.n1(this.f60999a);
            }
        });
    }

    public static final Unit n1(InvisibleFragment invisibleFragment) {
        invisibleFragment.M0();
        return Unit.f64096a;
    }

    public static final void p1(final InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        invisibleFragment.P0(new Function0() {
            @Override
            public final Object invoke() {
                return InvisibleFragment.q1(this.f61011a);
            }
        });
    }

    public static final Unit q1(InvisibleFragment invisibleFragment) {
        invisibleFragment.N0();
        return Unit.f64096a;
    }

    private final boolean w0() {
        if (this.pb != null && this.task != null && getContext() != null) {
            return true;
        }
        Log.w("PermissionX", "PermissionBuilder and ChainTask should not be null at this time, so we can do nothing in this case.");
        return false;
    }

    public static final void y0(InvisibleFragment invisibleFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (invisibleFragment.w0()) {
            e eVar = invisibleFragment.task;
            o0 o0Var = null;
            if (eVar == null) {
                Intrinsics.y("task");
                eVar = null;
            }
            o0 o0Var2 = invisibleFragment.pb;
            if (o0Var2 == null) {
                Intrinsics.y("pb");
            } else {
                o0Var = o0Var2;
            }
            eVar.a(new ArrayList(o0Var.f61041o));
        }
    }

    private final void z0(final boolean granted) {
        if (w0()) {
            P0(new Function0() {
                @Override
                public final Object invoke() {
                    return InvisibleFragment.A0(granted, this);
                }
            });
        }
    }

    public final void R0(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        this.requestBackgroundLocationLauncher.a("android.permission.ACCESS_BACKGROUND_LOCATION");
    }

    public final void W0(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        this.requestBodySensorsBackgroundLauncher.a("android.permission.BODY_SENSORS_BACKGROUND");
    }

    public final void Z0(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Build.VERSION.SDK_INT < 26) {
            D0();
            return;
        }
        try {
            Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
            intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
            this.requestWriteSettingsLauncher.a(intent);
        } catch (Throwable unused) {
            D0();
        }
    }

    public final void c1(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager()) {
            F0();
            return;
        }
        try {
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
            if (intent.resolveActivity(requireActivity().getPackageManager()) == null) {
                intent = new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION");
                if (intent.resolveActivity(requireActivity().getPackageManager()) == null) {
                    F0();
                    return;
                }
            }
            this.requestManageExternalStorageLauncher.a(intent);
        } catch (Throwable unused) {
            F0();
        }
    }

    public final void h1(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Build.VERSION.SDK_INT < 26) {
            D0();
            return;
        }
        try {
            Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", requireActivity().getPackageName());
            this.requestNotificationLauncher.a(intent);
        } catch (Throwable unused) {
            D0();
        }
    }

    public final void i1(o0 permissionBuilder, Set permissions, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        this.requestNormalPermissionLauncher.a(permissions.toArray(new String[0]));
    }

    public final void l1(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Build.VERSION.SDK_INT < 26) {
            K0();
            return;
        }
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            Context context = getContext();
            intent.setData(Uri.fromParts("package", context != null ? context.getPackageName() : null, null));
            this.requestPipLauncher.a(intent);
        } catch (Throwable unused) {
            K0();
        }
    }

    public final void o1(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Settings.canDrawOverlays(activity)) {
            M0();
            return;
        }
        try {
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
            intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
            this.requestSystemAlertWindowLauncher.a(intent);
        } catch (Throwable unused) {
            M0();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (w0()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                o0 o0Var = this.pb;
                Unit unit = null;
                if (o0Var == null) {
                    Intrinsics.y("pb");
                    o0Var = null;
                }
                RationaleDialog rationaleDialog = o0Var.f61030d;
                if (rationaleDialog != null) {
                    rationaleDialog.dismissAllowingStateLoss();
                    unit = Unit.f64096a;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void r1(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        this.pb = permissionBuilder;
        this.task = chainTask;
        if (Settings.System.canWrite(activity)) {
            N0();
            return;
        }
        try {
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(Uri.parse("package:" + requireActivity().getPackageName()));
            this.requestWriteSettingsLauncher.a(intent);
        } catch (Throwable unused) {
            N0();
        }
    }

    public final void s1(o0 permissionBuilder, e chainTask) {
        Intrinsics.h(permissionBuilder, "permissionBuilder");
        Intrinsics.h(chainTask, "chainTask");
        this.pb = permissionBuilder;
        this.task = chainTask;
    }

    public final void x0() {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", requireActivity().getPackageName(), null));
            this.forwardToSettingsLauncher.a(intent);
        } catch (Throwable unused) {
        }
    }
}

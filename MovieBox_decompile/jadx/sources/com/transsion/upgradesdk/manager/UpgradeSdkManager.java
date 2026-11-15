package com.transsion.upgradesdk.manager;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.ga.AthenaAnalytics;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import nu.b;
import pu.a;
import qu.c;
import qu.d;
import qu.e;
import tu.i;
import tu.l;
import tu.n;

public class UpgradeSdkManager {
    private static UpgradeSdkManager INSTANCE;

    public static class DialogParams {
        private WeakReference<Activity> activityRef;
        public UpgradeDialogCallback callback;
        public Integer cancelButtonTextColor;
        public Integer confirmButtonTextColor;
        public int dialogStyle = 0;
        public boolean isManualClick;

        public DialogParams(Activity activity, boolean z10, UpgradeDialogCallback upgradeDialogCallback) {
            this.activityRef = new WeakReference<>(activity);
            this.isManualClick = z10;
            this.callback = upgradeDialogCallback;
        }

        public Activity getActivity() {
            WeakReference<Activity> weakReference = this.activityRef;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }
    }

    private UpgradeSdkManager() {
    }

    public static synchronized UpgradeSdkManager getInstance() {
        try {
            if (INSTANCE == null) {
                INSTANCE = new UpgradeSdkManager();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return INSTANCE;
    }

    public void checkUpgradeTask(UpgradeInfoCallback upgradeInfoCallback) {
        qu.f fVarA = qu.f.f70259o.a();
        try {
            fVarA.f70266f = upgradeInfoCallback;
            if (!fVarA.f70268h) {
                if (upgradeInfoCallback != null) {
                    upgradeInfoCallback.onRequestFail("Not Install Palm Store");
                }
                l.a(2, 7, null, null, 28);
                return;
            }
            l.c(2, 1, null, "3", null, null, null, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            List listF = fVarA.f();
            if (listF == null) {
                fVarA.b(1);
            } else {
                fVarA.f70272l = true;
                fVarA.c(listF);
            }
            ((ru.f) ru.f.f71355f.getValue()).a();
        } catch (Error e10) {
            e10.printStackTrace();
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("check error");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("check error");
            }
        }
    }

    public void dismissUpgradeDialog() {
        qu.f.f70259o.a().d();
    }

    public UpgradeDialogCallback getUpgradeSdkCallback(boolean z10) {
        return new e(qu.f.f70259o.a(), z10);
    }

    public void init(Application application, String str, boolean z10) {
        d dVar = qu.f.f70259o;
        qu.f fVarA = dVar.a();
        try {
            AthenaAnalytics.Q(application, "updatesdk", 1044, false, false);
            Application application2 = null;
            if (application != null && !TextUtils.isEmpty(str)) {
                Intrinsics.h(application, "<set-?>");
                a.f69263a = application;
                fVarA.f70264d = z10;
                b bVarF = n.f(application);
                Intrinsics.h(bVarF, "<set-?>");
                fVarA.f70261a = bVarF;
                if (TextUtils.isEmpty(fVarA.e().f67359a)) {
                    l.a(1, 2, "2", null, 24);
                    return;
                }
                if (!n.d()) {
                    fVarA.f70268h = false;
                    l.a(1, 2, "3", null, 24);
                    return;
                }
                tu.h hVar = i.f72841b;
                Application application3 = a.f69263a;
                if (application3 == null) {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                    application3 = null;
                }
                i iVarA = hVar.a(application3);
                Intrinsics.h("KV_UPGRADE_LAST_POP", "key");
                MMKV mmkv = iVarA.f72843a;
                fVarA.f70263c = mmkv != null ? mmkv.d("KV_UPGRADE_LAST_POP", false) : false;
                c.f70252d.a().b(application);
                Application application4 = a.f69263a;
                if (application4 != null) {
                    application2 = application4;
                } else {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                }
                i iVarA2 = hVar.a(application2);
                Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                MMKV mmkv2 = iVarA2.f72843a;
                fVarA.f70265e = mmkv2 != null ? mmkv2.d("KV_UPGRADE_IS_FORCE", false) : false;
                b bVarE = fVarA.e();
                Intrinsics.e(str);
                bVarE.getClass();
                Intrinsics.h(str, "<set-?>");
                bVarE.f67365g = str;
                String msg = "init Finish: " + fVarA.e();
                Intrinsics.h("UpgradeSdkManager", "tag");
                Intrinsics.h(msg, "msg");
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (!tu.g.f72839a && jCurrentTimeMillis - tu.g.f72840b >= 5000) {
                    tu.g.f72840b = jCurrentTimeMillis;
                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                        tu.g.f72839a = true;
                    }
                    boolean z11 = tu.g.f72839a;
                }
                boolean z12 = dVar.a().f70264d;
                fVarA.a();
                return;
            }
            l.a(1, 2, "1", null, 24);
        } catch (Error | Exception unused) {
        }
    }

    public void showUpgradeDialog(DialogParams dialogParams) {
        Bundle arguments;
        su.i iVar;
        Bundle arguments2;
        com.transsion.upgradesdk.page.f fVar;
        Activity activity = dialogParams.getActivity();
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        qu.f fVarA = qu.f.f70259o.a();
        boolean z10 = dialogParams.isManualClick;
        UpgradeDialogCallback upgradeDialogCallback = dialogParams.callback;
        int i10 = dialogParams.dialogStyle;
        Integer num = dialogParams.cancelButtonTextColor;
        Integer num2 = dialogParams.confirmButtonTextColor;
        tu.g.b("UpgradeSdkManager", "调用开始显示升级弹窗");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - fVarA.f70274n < 500) {
                tu.g.b("UpgradeSdkManager", "升级弹窗阻塞 - 快速点击");
                return;
            }
            fVarA.f70274n = jCurrentTimeMillis;
            String str = z10 ? "1" : "2";
            com.transsion.upgradesdk.bean.c cVar = com.transsion.upgradesdk.bean.c.DEFAULT;
            l.c(4, 1, null, str, cVar, null, null, 100);
            if (activity.isDestroyed()) {
                tu.g.b("UpgradeSdkManager", "升级弹窗阻塞 - 非当前页面显示");
                l.b(4, 3, "1", str, cVar);
                return;
            }
            if (!fVarA.f70268h) {
                l.b(4, 3, "3", str, cVar);
                return;
            }
            fVarA.f70267g = upgradeDialogCallback;
            new WeakReference(activity);
            if (fVarA.f70262b != null) {
                if (!fVarA.f70265e && !fVarA.f70263c) {
                    l.b(4, 3, "2", str, cVar);
                    tu.g.b("UpgradeSdkManager", "无新版本，不显示升级弹窗");
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("isManualClick", z10);
                bundle.putInt("dialogStyle", i10);
                if (num != null) {
                    bundle.putInt("cancelButtonTextColor", num.intValue());
                }
                if (num2 != null) {
                    bundle.putInt("confirmButtonTextColor", num2.intValue());
                }
                if (!(activity instanceof FragmentActivity)) {
                    su.i iVar2 = fVarA.f70270j;
                    if (iVar2 == null || (arguments = iVar2.getArguments()) == null || arguments.getInt("dialogStyle") != i10 || ((iVar = fVarA.f70270j) != null && iVar.isVisible())) {
                        su.i iVar3 = fVarA.f70270j;
                        if (iVar3 != null) {
                            iVar3.dismissAllowingStateLoss();
                        }
                        fVarA.f70270j = null;
                        fVarA.f70270j = new su.i();
                        tu.g.b("UpgradeSdkManager", "创建新的升级弹窗V4实例，样式: " + i10);
                    }
                    su.i iVar4 = fVarA.f70270j;
                    if (iVar4 != null) {
                        if (iVar4.isVisible()) {
                            tu.g.b("UpgradeSdkManager", "升级弹窗  -  已展示");
                            l.b(4, 3, "4", str, cVar);
                            return;
                        } else {
                            tu.g.b("UpgradeSdkManager", "升级弹窗  -  开始展示升级弹窗");
                            iVar4.setArguments(bundle);
                            iVar4.show(activity.getFragmentManager(), iVar4.getTag());
                            l.c(4, 2, null, str, cVar, null, null, 100);
                            return;
                        }
                    }
                    return;
                }
                com.transsion.upgradesdk.page.f fVar2 = fVarA.f70269i;
                if (fVar2 == null || (arguments2 = fVar2.getArguments()) == null || arguments2.getInt("dialogStyle") != i10 || ((fVar = fVarA.f70269i) != null && fVar.isVisible())) {
                    com.transsion.upgradesdk.page.f fVar3 = fVarA.f70269i;
                    if (fVar3 != null) {
                        fVar3.dismissAllowingStateLoss();
                    }
                    fVarA.f70269i = null;
                    fVarA.f70269i = new com.transsion.upgradesdk.page.f();
                    tu.g.b("UpgradeSdkManager", "创建新的升级弹窗实例，样式: " + i10);
                }
                com.transsion.upgradesdk.page.f fVar4 = fVarA.f70269i;
                if (fVar4 != null) {
                    if (fVar4.isVisible()) {
                        tu.g.b("UpgradeSdkManager", "升级弹窗  -  已展示");
                        l.b(4, 3, "4", str, cVar);
                        return;
                    }
                    tu.g.b("UpgradeSdkManager", "升级弹窗  -  开始展示升级弹窗");
                    fVar4.setArguments(bundle);
                    FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
                    Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                    fVar4.Z(supportFragmentManager);
                    l.c(4, 2, null, str, cVar, null, null, 100);
                }
            }
        } catch (Error unused) {
        } catch (Exception e10) {
            l.b(4, 3, "5", e10.toString(), com.transsion.upgradesdk.bean.c.DEFAULT);
        }
    }
}

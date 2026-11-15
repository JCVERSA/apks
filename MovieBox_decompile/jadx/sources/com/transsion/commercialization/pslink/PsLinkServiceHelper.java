package com.transsion.commercialization.pslink;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.google.gson.reflect.TypeToken;
import com.transsnet.launcherlib.PalmStoreDownLoadTaskInfo;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class PsLinkServiceHelper {

    private static ww.b f42645b;

    private static long f42647d;

    public static final PsLinkServiceHelper f42644a = new PsLinkServiceHelper();

    private static CopyOnWriteArrayList f42646c = new CopyOnWriteArrayList();

    private static final ServiceConnection f42648e = new a();

    public static final class a implements ServiceConnection {
        a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Intrinsics.h(componentName, "componentName");
            Intrinsics.h(iBinder, "iBinder");
            com.transsion.commercialization.pslink.a aVar = com.transsion.commercialization.pslink.a.f42649a;
            PsLinkServiceHelper psLinkServiceHelper = PsLinkServiceHelper.f42644a;
            aVar.a(psLinkServiceHelper.j() + " --> onServiceConnected() --> 连接成功 --> componentName = " + componentName);
            psLinkServiceHelper.l(iBinder);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            Intrinsics.h(componentName, "componentName");
            com.transsion.commercialization.pslink.a.f42649a.b(PsLinkServiceHelper.f42644a.j() + " --> onServiceDisconnected() --> 断开连接 --> componentName = " + componentName);
            PsLinkServiceHelper.f42645b = null;
            PsLinkInstallReceiver.INSTANCE.b();
        }
    }

    private PsLinkServiceHelper() {
    }

    public final String j() {
        String simpleName = PsLinkServiceHelper.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void l(IBinder iBinder) {
        Object objM453constructorimpl;
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            ww.b bVarX0 = ww.b.a.X0(iBinder);
            f42645b = bVarX0;
            if (bVarX0 != null) {
                bVarX0.j(new ww.a.AbstractBinderC0929a() {
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Code duplicated, block: B:17:0x004a  */
                    /* JADX WARN: Code duplicated, block: B:19:0x005c  */
                    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public void M0(String callBackName, String param) {
                        String pkgName;
                        Intrinsics.h(callBackName, "callBackName");
                        Intrinsics.h(param, "param");
                        Object obj = null;
                        switch (callBackName) {
                            case "addTask":
                            case "onAction":
                                Object objE = o.e(param, new TypeToken<PalmStoreDownLoadTaskInfo>() {
                                }.getType());
                                PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo = (PalmStoreDownLoadTaskInfo) objE;
                                obj = objE;
                                pkgName = palmStoreDownLoadTaskInfo != null ? palmStoreDownLoadTaskInfo.getPkgName() : null;
                                break;
                            case "removeTask":
                                pkgName = ((PalmStoreDownLoadTaskInfo) o.e(param, new TypeToken<PalmStoreDownLoadTaskInfo>() {
                                }.getType())).getPkgName();
                                break;
                            case "onProgress":
                                Object objE2 = o.e(param, new TypeToken<PalmStoreDownLoadTaskInfo>() {
                                }.getType());
                                PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo2 = (PalmStoreDownLoadTaskInfo) objE2;
                                obj = objE2;
                                pkgName = palmStoreDownLoadTaskInfo2 != null ? palmStoreDownLoadTaskInfo2.getPkgName() : null;
                                break;
                            default:
                                pkgName = "";
                                break;
                        }
                        if (!Intrinsics.c(callBackName, "onProgress") || System.currentTimeMillis() - PsLinkServiceHelper.f42647d >= 1000) {
                            PsLinkServiceHelper psLinkServiceHelper = PsLinkServiceHelper.f42644a;
                            PsLinkServiceHelper.f42647d = System.currentTimeMillis();
                            Iterator it = PsLinkServiceHelper.f42646c.iterator();
                            while (it.hasNext()) {
                                ((b) it.next()).a(callBackName, param, (PalmStoreDownLoadTaskInfo) obj, pkgName);
                            }
                        }
                    }
                }, "Moviebox");
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.commercialization.pslink.a.f42649a.b(f42644a.j() + " --> register() --> it = " + Log.getStackTraceString(thM456exceptionOrNullimpl));
    }

    public final void g(b psLinkCallBackCommon) {
        Intrinsics.h(psLinkCallBackCommon, "psLinkCallBackCommon");
        if (f42646c.contains(psLinkCallBackCommon)) {
            return;
        }
        f42646c.add(psLinkCallBackCommon);
    }

    public final void h() {
        Object objM453constructorimpl;
        if (f42645b != null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.commercialization.pslink.a aVar = com.transsion.commercialization.pslink.a.f42649a;
            PsLinkServiceHelper psLinkServiceHelper = f42644a;
            aVar.a(psLinkServiceHelper.j() + " --> bindService() --> 开始bindService .... ");
            Intent intent = new Intent();
            intent.setClassName(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, "com.transsnet.launcherlib.services.DispenseCommonService");
            boolean zBindService = Utils.a().bindService(intent, f42648e, 1);
            aVar.a(psLinkServiceHelper.j() + " --> bindService() --> 开始bindService .... --> isConnect = " + zBindService);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            com.transsion.commercialization.pslink.a.f42649a.b(f42644a.j() + " --> bindService() --> " + Log.getStackTraceString(thM456exceptionOrNullimpl));
        }
        PsLinkInstallReceiver.INSTANCE.a();
    }

    public final CopyOnWriteArrayList i() {
        return f42646c;
    }

    public final boolean k() {
        return f42645b == null;
    }

    public final void m(b psLinkCallBackCommon) {
        Intrinsics.h(psLinkCallBackCommon, "psLinkCallBackCommon");
        f42646c.remove(psLinkCallBackCommon);
    }
}

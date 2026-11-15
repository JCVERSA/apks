package com.transsnet.downloader.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsnet.downloader.R$string;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class DownloadSDCardUtil {

    public static final DownloadSDCardUtil f57674a = new DownloadSDCardUtil();

    private static final String f57675b;

    private static boolean f57676c;

    private static boolean f57677d;

    private static final DownloadSDCardUtil$sdcardBroadcastReceiver$1 f57678e;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.transsnet.downloader.util.DownloadSDCardUtil$sdcardBroadcastReceiver$1] */
    static {
        String string = Utils.a().getString(R$string.sdcard_name);
        Intrinsics.g(string, "getString(...)");
        f57675b = string;
        f57678e = new BroadcastReceiver() {
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @Override
            public void onReceive(Context context, Intent intent) {
                Intrinsics.h(intent, "intent");
                String action = intent.getAction();
                if (action != null) {
                    switch (action.hashCode()) {
                        case -1665311200:
                            if (!action.equals("android.intent.action.MEDIA_REMOVED")) {
                                return;
                            }
                            break;
                        case -1514214344:
                            if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                                DownloadSDCardUtil.f57674a.d(true);
                                wf.a.f74274a.c("DownloadSDCard", "SD/TF卡已插入", true);
                                DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent("", "", false, false, 12, null);
                                AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
                                FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
                                String name = DownloadRefreshEvent.class.getName();
                                Intrinsics.g(name, "getName(...)");
                                flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
                                yw.e eVar = new yw.e(true, false);
                                FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
                                String name2 = yw.e.class.getName();
                                Intrinsics.g(name2, "getName(...)");
                                flowEventBus2.postEvent(name2, eVar, 0L);
                                return;
                            }
                            return;
                        case -963871873:
                            if (!action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                                return;
                            }
                            break;
                        case 2045140818:
                            if (!action.equals("android.intent.action.MEDIA_BAD_REMOVAL")) {
                                return;
                            }
                            break;
                        default:
                            return;
                    }
                    DownloadSDCardUtil.f57674a.d(false);
                    wf.a.f74274a.c("DownloadSDCard", "SD/TF卡已拔出", true);
                    DownloadRefreshEvent downloadRefreshEvent2 = new DownloadRefreshEvent("", "", false, false, 12, null);
                    AppScopeVMlProvider appScopeVMlProvider2 = AppScopeVMlProvider.INSTANCE;
                    FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
                    String name3 = DownloadRefreshEvent.class.getName();
                    Intrinsics.g(name3, "getName(...)");
                    flowEventBus3.postEvent(name3, downloadRefreshEvent2, 0L);
                    yw.e eVar2 = new yw.e(true, false);
                    FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
                    String name4 = yw.e.class.getName();
                    Intrinsics.g(name4, "getName(...)");
                    flowEventBus4.postEvent(name4, eVar2, 0L);
                }
            }
        };
    }

    private DownloadSDCardUtil() {
    }

    public final List a() {
        ArrayList arrayList = new ArrayList();
        try {
            List<yw.f> listB = b();
            if (listB.size() < 2) {
                return arrayList;
            }
            String strB = "";
            for (yw.f fVar : listB) {
                if (!fVar.c()) {
                    strB = fVar.b();
                    break;
                }
            }
            if (strB.length() == 0) {
                return arrayList;
            }
            int i10 = 0;
            boolean z10 = listB.size() > 2;
            for (yw.f fVar2 : listB) {
                if (fVar2.c()) {
                    i10++;
                    String strB2 = fVar2.b();
                    String str = File.separator;
                    ui.b.a aVar = ui.b.f73084a;
                    arrayList.add(new yw.b(strB2 + str + aVar.f(), str + aVar.f(), z10 ? f57675b + " " + i10 + " " : f57675b, 2, fVar2.a(), 3));
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public final List b() {
        int i10 = 1;
        Object systemService = Utils.a().getSystemService(PlaceTypes.STORAGE);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.storage.StorageManager");
        StorageManager storageManager = (StorageManager) systemService;
        ArrayList arrayList = new ArrayList();
        Object[] objArr = null;
        if (Build.VERSION.SDK_INT >= 24) {
            List storageVolumes = storageManager.getStorageVolumes();
            Intrinsics.g(storageVolumes, "getStorageVolumes(...)");
            try {
                Iterator it = storageVolumes.iterator();
                while (it.hasNext()) {
                    StorageVolume storageVolumeA = com.cloud.tmc.miniutils.util.i.a(it.next());
                    boolean zIsRemovable = storageVolumeA.isRemovable();
                    boolean zIsEmulated = storageVolumeA.isEmulated();
                    String state = storageVolumeA.getState();
                    if (zIsRemovable) {
                        f57677d = true;
                    }
                    try {
                        Class<?> cls = Class.forName(storageVolumeA.getClass().getName());
                        try {
                            Method declaredMethod = cls.getDeclaredMethod("getPath", null);
                            declaredMethod.setAccessible(true);
                            Object objInvoke = declaredMethod.invoke(storageVolumeA, null);
                            Intrinsics.f(objInvoke, "null cannot be cast to non-null type kotlin.String");
                            Intrinsics.e(state);
                            arrayList.add(new yw.f((String) objInvoke, state, zIsRemovable, zIsEmulated));
                        } catch (Throwable unused) {
                            Field declaredField = cls.getDeclaredField("mPath");
                            declaredField.setAccessible(true);
                            Object obj = declaredField.get(storageVolumeA);
                            if (obj != null) {
                                String string = obj.toString();
                                Intrinsics.e(state);
                                arrayList.add(new yw.f(string, state, zIsRemovable, zIsEmulated));
                            }
                            Unit unit = Unit.f64096a;
                        }
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        Unit unit2 = Unit.f64096a;
                    }
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        } else {
            try {
                Class<?> cls2 = Class.forName("android.os.storage.StorageVolume");
                Method method = cls2.getMethod("getPath", null);
                Method method2 = cls2.getMethod("isRemovable", null);
                Method method3 = cls2.getMethod("isEmulated", null);
                Method method4 = StorageManager.class.getMethod("getVolumeState", String.class);
                Object objInvoke2 = StorageManager.class.getMethod("getVolumeList", null).invoke(storageManager, null);
                int length = Array.getLength(objInvoke2);
                int i11 = 0;
                while (i11 < length) {
                    Object obj2 = Array.get(objInvoke2, i11);
                    Object objInvoke3 = method.invoke(obj2, objArr);
                    Intrinsics.f(objInvoke3, "null cannot be cast to non-null type kotlin.String");
                    String str = (String) objInvoke3;
                    Object objInvoke4 = method2.invoke(obj2, objArr);
                    Intrinsics.f(objInvoke4, "null cannot be cast to non-null type kotlin.Boolean");
                    boolean zBooleanValue = ((Boolean) objInvoke4).booleanValue();
                    Object objInvoke5 = method3.invoke(obj2, objArr);
                    Intrinsics.f(objInvoke5, "null cannot be cast to non-null type kotlin.Boolean");
                    boolean zBooleanValue2 = ((Boolean) objInvoke5).booleanValue();
                    Object[] objArr2 = new Object[i10];
                    objArr2[0] = str;
                    Object objInvoke6 = method4.invoke(storageManager, objArr2);
                    Intrinsics.f(objInvoke6, "null cannot be cast to non-null type kotlin.String");
                    arrayList.add(new yw.f(str, (String) objInvoke6, zBooleanValue, zBooleanValue2));
                    i11++;
                    i10 = 1;
                    objArr = null;
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
        }
        return arrayList;
    }

    public final void c() {
        if (f57676c) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addDataScheme(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE);
        if (Build.VERSION.SDK_INT >= 33) {
            Utils.a().registerReceiver(f57678e, intentFilter, 2);
        } else {
            Utils.a().registerReceiver(f57678e, intentFilter);
        }
        f57676c = true;
    }

    public final void d(boolean z10) {
        f57677d = z10;
    }

    public final void e() {
        try {
            if (f57676c) {
                f57676c = false;
                Utils.a().unregisterReceiver(f57678e);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}

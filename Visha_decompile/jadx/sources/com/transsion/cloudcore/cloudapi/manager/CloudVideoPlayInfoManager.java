package com.transsion.cloudcore.cloudapi.manager;

import android.app.Application;
import android.net.Uri;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileVideoPlayInfo;
import com.transsion.cloud_drive.base.api.model.FileVideoPlayInfoResult;
import com.transsion.cloud_drive.base.api.model.FileVideoTemplate;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.dbhelpder.VideoCloudCacheHelper;
import defpackage.a41;
import defpackage.e74;
import defpackage.fi1;
import defpackage.i81;
import defpackage.j1a;
import defpackage.k29;
import defpackage.my5;
import defpackage.r0a;
import defpackage.se;
import defpackage.srb;
import defpackage.vb;
import defpackage.xm9;
import defpackage.y45;
import defpackage.zf1;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.comparisons.a;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.time.DateUtils;

public final class CloudVideoPlayInfoManager implements VideoCloudCacheHelper.b {
    public static final CloudVideoPlayInfoManager a;
    public static final HashMap b;
    public static final HashMap c;
    public static final HashMap d;
    public static final HashMap e;
    public static final HashMap f;
    public static final HashMap g;
    public static final HashMap h;
    public static final HashMap i;
    public static final HashMap j;
    public static int k;

    static {
        CloudVideoPlayInfoManager cloudVideoPlayInfoManager = new CloudVideoPlayInfoManager();
        a = cloudVideoPlayInfoManager;
        b = new HashMap();
        c = new HashMap();
        d = new HashMap();
        e = new HashMap();
        f = new HashMap();
        g = new HashMap();
        h = new HashMap();
        i = new HashMap();
        j = new HashMap();
        cloudVideoPlayInfoManager.L();
        cloudVideoPlayInfoManager.m();
        VideoCloudCacheHelper.f(cloudVideoPlayInfoManager);
        LogUtils.v("init CloudVideoPlayInfoManager setCloudVideoInfoHelper: " + cloudVideoPlayInfoManager);
    }

    public static final zfb A(String str, FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        if (!fileVideoPlayInfoResult.getPlayInfo().getTemplateList().isEmpty()) {
            CloudVideoPlayInfoManager cloudVideoPlayInfoManager = a;
            y45.g(fileVideoPlayInfoResult);
            cloudVideoPlayInfoManager.Z(str, fileVideoPlayInfoResult);
            cloudVideoPlayInfoManager.T(str, System.currentTimeMillis() + 86400000);
            cloudVideoPlayInfoManager.H(str);
            FileVideoTemplate fileVideoTemplateA = srb.a.a(fileVideoPlayInfoResult.getPlayInfo().getTemplateList());
            if (fileVideoTemplateA != null) {
                cloudVideoPlayInfoManager.Y(str, fileVideoTemplateA.getTemplateId());
            }
            cloudVideoPlayInfoManager.b0(str);
        }
        return zfb.a;
    }

    public static final void B(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb I(String str, FileInfo fileInfo) {
        CloudVideoPlayInfoManager cloudVideoPlayInfoManager = a;
        y45.g(fileInfo);
        cloudVideoPlayInfoManager.U(str, fileInfo);
        cloudVideoPlayInfoManager.V(str, System.currentTimeMillis() + DateUtils.MILLIS_PER_HOUR);
        cloudVideoPlayInfoManager.b0(str);
        return zfb.a;
    }

    public static final void J(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static void X(CloudVideoPlayInfoManager cloudVideoPlayInfoManager, String str, long j2, Runnable runnable, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            runnable = null;
        }
        cloudVideoPlayInfoManager.W(str, j2, runnable);
    }

    public static final zfb w(String str, FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        if (i.get(str) == null) {
            a.H(str);
        }
        return zfb.a;
    }

    public static final void x(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb y(String str, FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        if (!fileVideoPlayInfoResult.getPlayInfo().getTemplateList().isEmpty()) {
            h.put(str, fileVideoPlayInfoResult);
            CloudVideoPlayInfoManager cloudVideoPlayInfoManager = a;
            cloudVideoPlayInfoManager.H(str);
            FileVideoTemplate fileVideoTemplateA = srb.a.a(fileVideoPlayInfoResult.getPlayInfo().getTemplateList());
            if (fileVideoTemplateA != null) {
                cloudVideoPlayInfoManager.Y(str, fileVideoTemplateA.getTemplateId());
            }
        }
        return zfb.a;
    }

    public static final void z(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public final FileVideoPlayInfoResult C(String str) {
        y45.j(str, "fileId");
        try {
            return (FileVideoPlayInfoResult) v(str).u(10L, TimeUnit.SECONDS).b();
        } catch (Exception e2) {
            Log.e("CloudVideoPlayInfoManager", "Failed to get video info for fileId: " + str, e2);
            return null;
        }
    }

    public final FileShareInfo D(String str) {
        y45.j(str, "fileId");
        return (FileShareInfo) g.get(str);
    }

    public final void E() {
    }

    public final boolean F(String str) {
        y45.j(str, "fileId");
        Long l = (Long) j.get(str);
        return l != null && l.longValue() > System.currentTimeMillis();
    }

    public final boolean G(String str) {
        y45.j(str, "fileId");
        Long l = (Long) c.get(str);
        return l != null && l.longValue() > System.currentTimeMillis();
    }

    public final void H(final String str) {
        y45.j(str, "fileId");
        a41 a41Var = a41.a;
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        xm9 xm9VarB = a41Var.c(applicationA).b(str);
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudVideoPlayInfoManager.I(str, (FileInfo) obj);
            }
        };
        xm9VarB.e(new zf1() {
            @Override
            public final void accept(Object obj) {
                CloudVideoPlayInfoManager.J(e74Var, obj);
            }
        }).r(k29.c()).m(vb.a()).n();
    }

    public final void K(String str, String str2) {
        y45.j(str, "fileId");
        HashMap map = i;
        FileInfo fileInfo = (FileInfo) map.get(str);
        if (str2 == null || fileInfo == null || r0a.i(str2)) {
            return;
        }
        List listE1 = i81.e1(j1a.N0(fileInfo.getNamePath(), new char[]{IOUtils.DIR_SEPARATOR_UNIX}, false, 0, 6, null));
        listE1.set(listE1.size() - 1, str2);
        fileInfo.setNamePath(i81.y0(listE1, "/", null, null, 0, null, null, 62, null));
        map.put(str, FileInfo.copy$default(fileInfo, null, str2, null, null, 13, null));
    }

    public final void L() {
        try {
            String strM = MMKV.p().m("CloudVideoPlayInfoManagercloud_video_info", "");
            if (strM != null && strM.length() > 0) {
                Object objC = fi1.c(strM, new TypeToken<HashMap<String, FileVideoPlayInfoResult>>() {
                }.getType());
                y45.i(objC, "fromJson(...)");
                HashMap map = b;
                map.putAll((HashMap) objC);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored video info cache: " + map.size() + " items");
            }
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore video info cache: " + e2.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_video_info");
        }
        try {
            String strM2 = MMKV.p().m("CloudVideoPlayInfoManagercloud_video_info_expire", "");
            if (strM2 != null && strM2.length() > 0) {
                Object objC2 = fi1.c(strM2, new TypeToken<HashMap<String, Long>>() {
                }.getType());
                y45.i(objC2, "fromJson(...)");
                HashMap map2 = c;
                map2.putAll((HashMap) objC2);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored expire time cache: " + map2.size() + " items");
            }
        } catch (Exception e3) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore expire time cache: " + e3.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_video_info_expire");
        }
        try {
            String strM3 = MMKV.p().m("CloudVideoPlayInfoManagercloud_video_info_position", "");
            if (strM3 != null && strM3.length() > 0) {
                Object objC3 = fi1.c(strM3, new TypeToken<HashMap<String, Long>>() {
                }.getType());
                y45.i(objC3, "fromJson(...)");
                HashMap map3 = d;
                map3.putAll((HashMap) objC3);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored position cache: " + map3.size() + " items");
            }
        } catch (Exception e4) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore position cache: " + e4.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_video_info_position");
        }
        try {
            String strM4 = MMKV.p().m("CloudVideoPlayInfoManagercloud_video_access_time", "");
            if (strM4 != null && strM4.length() > 0) {
                Object objC4 = fi1.c(strM4, new TypeToken<HashMap<String, Long>>() {
                }.getType());
                y45.i(objC4, "fromJson(...)");
                HashMap map4 = e;
                map4.putAll((HashMap) objC4);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored access time cache: " + map4.size() + " items");
            }
        } catch (Exception e5) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore access time cache: " + e5.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_video_access_time");
        }
        try {
            String strM5 = MMKV.p().m("CloudVideoPlayInfoManagercloud_video_template", "");
            if (strM5 != null && strM5.length() > 0) {
                Object objC5 = fi1.c(strM5, new TypeToken<HashMap<String, String>>() {
                }.getType());
                y45.i(objC5, "fromJson(...)");
                HashMap map5 = f;
                map5.putAll((HashMap) objC5);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored template cache: " + map5.size() + " items");
            }
        } catch (Exception e6) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore template cache: " + e6.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_video_template");
        }
        try {
            String strM6 = MMKV.p().m("CloudVideoPlayInfoManagercloud_file_info", "");
            if (strM6 != null && strM6.length() > 0) {
                Object objC6 = fi1.c(strM6, new TypeToken<HashMap<String, FileInfo>>() {
                }.getType());
                y45.i(objC6, "fromJson(...)");
                HashMap map6 = i;
                map6.putAll((HashMap) objC6);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored file info cache: " + map6.size() + " items");
            }
        } catch (Exception e7) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore file info cache: " + e7.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_file_info");
        }
        try {
            String strM7 = MMKV.p().m("CloudVideoPlayInfoManagercloud_file_info_expire", "");
            if (strM7 != null && strM7.length() > 0) {
                Object objC7 = fi1.c(strM7, new TypeToken<HashMap<String, Long>>() {
                }.getType());
                y45.i(objC7, "fromJson(...)");
                HashMap map7 = j;
                map7.putAll((HashMap) objC7);
                LogUtils.j("CloudVideoPlayInfoManager", "Restored file info expire time cache: " + map7.size() + " items");
            }
        } catch (Exception e8) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to restore file info expire time cache: " + e8.getMessage());
            MMKV.p().J("CloudVideoPlayInfoManagercloud_file_info_expire");
        }
        LogUtils.j("CloudVideoPlayInfoManager", "Cache restore completed - INFO: " + b.size() + ", EXPIRE: " + c.size() + ", POSITION: " + d.size() + ", ACCESS: " + e.size() + ", TEMPLATE: " + f.size() + ", FILE_INFO: " + i.size() + ", FILE_INFO_EXPIRE: " + j.size());
    }

    public final void M() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_video_access_time", fi1.e(e));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved access time to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save access time to cache: " + e2.getMessage());
        }
    }

    public final void N() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_video_info_expire", fi1.e(c));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved expire time to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save expire time to cache: " + e2.getMessage());
        }
    }

    public final void O() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_file_info_expire", fi1.e(j));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved file info expire time to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save file info expire time to cache: " + e2.getMessage());
        }
    }

    public final void P() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_file_info", fi1.e(i));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved file info to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save file info to cache: " + e2.getMessage());
        }
    }

    public final void Q() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_video_info", fi1.e(b));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved video info to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save video info to cache: " + e2.getMessage());
        }
    }

    public final void R() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_video_info_position", fi1.e(d));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved position to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save position to cache: " + e2.getMessage());
        }
    }

    public final void S() {
        try {
            MMKV.p().w("CloudVideoPlayInfoManagercloud_video_template", fi1.e(f));
            LogUtils.j("CloudVideoPlayInfoManager", "Saved template selection to cache");
        } catch (Exception e2) {
            LogUtils.m("CloudVideoPlayInfoManager", "Failed to save template selection to cache: " + e2.getMessage());
        }
    }

    public final void T(String str, long j2) {
        y45.j(str, "fileId");
        c.put(str, Long.valueOf(j2));
        N();
    }

    public final void U(String str, FileInfo fileInfo) {
        y45.j(str, "fileId");
        y45.j(fileInfo, "info");
        l();
        i.put(str, fileInfo);
        b0(str);
        P();
    }

    public final void V(String str, long j2) {
        y45.j(str, "fileId");
        j.put(str, Long.valueOf(j2));
        O();
    }

    public final void W(String str, long j2, Runnable runnable) {
        y45.j(str, "fileId");
        HashMap map = d;
        Long l = (Long) map.get(str);
        long jLongValue = l != null ? l.longValue() : 0L;
        if (Math.abs(j2 - jLongValue) > 500) {
            LogUtils.v("Position changed from " + jLongValue + " to " + j2 + ", updating cache...");
            map.put(str, Long.valueOf(j2));
            R();
            if (runnable != null) {
                runnable.run();
            }
        }
        b0(str);
    }

    public final void Y(String str, String str2) {
        y45.j(str, "fileId");
        y45.j(str2, "templateId");
        f.put(str, str2);
        b0(str);
        S();
        LogUtils.j("CloudVideoPlayInfoManager", "Set template ID for file: " + str + ", template: " + str2);
    }

    public final void Z(String str, FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        y45.j(str, "fileId");
        y45.j(fileVideoPlayInfoResult, "info");
        k();
        b.put(str, fileVideoPlayInfoResult);
        b0(str);
        Q();
    }

    @Override
    public MediaItem a(String str) {
        FileShareInfo fileShareInfo = (FileShareInfo) g.get(str);
        if (fileShareInfo == null) {
            return null;
        }
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = -1;
        mediaItem.data = fileShareInfo.getFileId();
        mediaItem.displayName = fileShareInfo.getFileName();
        mediaItem.title = fileShareInfo.getFileName();
        mediaItem.size = fileShareInfo.getFileSize();
        mediaItem.parentPath = fileShareInfo.getShareCreatorId();
        mediaItem.thumbnailUrl = fileShareInfo.getFileCoverUrl();
        FileVideoPlayInfoResult fileVideoPlayInfoResult = (FileVideoPlayInfoResult) h.get(str);
        mediaItem.uri = Uri.parse(fileVideoPlayInfoResult != null ? a.s(fileVideoPlayInfoResult) : null);
        mediaItem.isKtFile = true;
        return mediaItem;
    }

    public final void a0(String str, FileShareInfo fileShareInfo) {
        y45.j(str, "fileId");
        y45.j(fileShareInfo, "shareInfo");
        g.put(str, fileShareInfo);
    }

    @Override
    public VideoCloudCacheHelper.a b(String str) {
        y45.j(str, "fileId");
        VideoCloudCacheHelper.a aVar = new VideoCloudCacheHelper.a();
        FileVideoPlayInfoResult fileVideoPlayInfoResultC = C(str);
        if (fileVideoPlayInfoResultC != null) {
            aVar.a = a.s(fileVideoPlayInfoResultC);
        }
        return aVar;
    }

    public final void b0(String str) {
        e.put(str, Long.valueOf(System.currentTimeMillis()));
        int i2 = k + 1;
        k = i2;
        if (i2 >= 10) {
            M();
            k = 0;
            LogUtils.j("CloudVideoPlayInfoManager", "Batch saved access time after 10 updates");
        }
    }

    public final void k() {
        int size = b.size();
        if (size >= 80) {
            LogUtils.j("CloudVideoPlayInfoManager", "Cache size (" + size + ") reached cleanup threshold (80), starting eviction");
            q();
        }
    }

    public final void l() {
        int size = i.size();
        if (size >= 80) {
            LogUtils.j("CloudVideoPlayInfoManager", "File info cache size (" + size + ") reached cleanup threshold (80), starting eviction");
            p();
        }
    }

    public final void m() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList<String> arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        for (Map.Entry entry : c.entrySet()) {
            String str = (String) entry.getKey();
            if (((Number) entry.getValue()).longValue() <= jCurrentTimeMillis) {
                arrayList.add(str);
            }
        }
        for (Map.Entry entry2 : j.entrySet()) {
            String str2 = (String) entry2.getKey();
            if (((Number) entry2.getValue()).longValue() <= jCurrentTimeMillis) {
                arrayList2.add(str2);
            }
        }
        for (String str3 : arrayList) {
            b.remove(str3);
            c.remove(str3);
            e.remove(str3);
        }
        for (String str4 : arrayList2) {
            i.remove(str4);
            j.remove(str4);
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            return;
        }
        Q();
        N();
        M();
        P();
        O();
        k = 0;
        LogUtils.j("CloudVideoPlayInfoManager", "Cleared expired cache for " + arrayList.size() + " video files and " + arrayList2.size() + " file info entries");
    }

    public final void n(String str) {
        b.remove(str);
        c.remove(str);
        e.remove(str);
    }

    public final void o(String str) {
        i.remove(str);
        j.remove(str);
    }

    public final void p() {
        int size = i.size() - 60;
        if (size <= 0) {
            return;
        }
        List listT0 = i81.T0(my5.E(e), new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d((Long) ((Pair) t).getSecond(), (Long) ((Pair) t2).getSecond());
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator it = listT0.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) ((Pair) it.next()).component1();
            if (i2 >= size) {
                break;
            }
            if (!F(str)) {
                o(str);
                arrayList.add(str);
                i2++;
            }
        }
        if (i2 < size) {
            Iterator it2 = listT0.iterator();
            while (it2.hasNext()) {
                String str2 = (String) ((Pair) it2.next()).component1();
                if (i2 >= size) {
                    break;
                }
                if (!arrayList.contains(str2)) {
                    o(str2);
                    arrayList.add(str2);
                    i2++;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        P();
        O();
        LogUtils.j("CloudVideoPlayInfoManager", "File info LRU eviction completed: evicted " + arrayList.size() + " files, current size: " + i.size());
    }

    public final void q() {
        int size = b.size() - 60;
        if (size <= 0) {
            return;
        }
        List listT0 = i81.T0(my5.E(e), new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d((Long) ((Pair) t).getSecond(), (Long) ((Pair) t2).getSecond());
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator it = listT0.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) ((Pair) it.next()).component1();
            if (i2 >= size) {
                break;
            }
            if (!G(str)) {
                n(str);
                arrayList.add(str);
                i2++;
            }
        }
        if (i2 < size) {
            Iterator it2 = listT0.iterator();
            while (it2.hasNext()) {
                String str2 = (String) ((Pair) it2.next()).component1();
                if (i2 >= size) {
                    break;
                }
                if (!arrayList.contains(str2)) {
                    n(str2);
                    arrayList.add(str2);
                    i2++;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Q();
        N();
        M();
        k = 0;
        LogUtils.j("CloudVideoPlayInfoManager", "LRU eviction completed: evicted " + arrayList.size() + " files, current size: " + b.size());
    }

    public final String r(String str) {
        y45.j(str, "fileId");
        FileInfo fileInfo = (FileInfo) i.get(str);
        return fileInfo != null ? fileInfo.getNamePath() : str;
    }

    public final String s(FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        y45.j(fileVideoPlayInfoResult, "videoPlayInfoResult");
        String strU = u(fileVideoPlayInfoResult.getFileId());
        for (FileVideoTemplate fileVideoTemplate : fileVideoPlayInfoResult.getPlayInfo().getTemplateList()) {
            if (y45.e(fileVideoTemplate.getTemplateId(), strU)) {
                return fileVideoTemplate.getUrl();
            }
        }
        return "";
    }

    public final long t(String str) {
        y45.j(str, "fileId");
        Long l = (Long) d.get(str);
        long jLongValue = l != null ? l.longValue() : 0L;
        return jLongValue > 100 ? jLongValue - 100 : jLongValue;
    }

    public final String u(String str) {
        FileVideoPlayInfo playInfo;
        List<FileVideoTemplate> templateList;
        FileVideoTemplate fileVideoTemplateA;
        y45.j(str, "fileId");
        b0(str);
        String str2 = (String) f.get(str);
        if (str2 != null) {
            return str2;
        }
        FileVideoPlayInfoResult fileVideoPlayInfoResult = (FileVideoPlayInfoResult) b.get(str);
        String templateId = null;
        if (fileVideoPlayInfoResult != null && (playInfo = fileVideoPlayInfoResult.getPlayInfo()) != null && (templateList = playInfo.getTemplateList()) != null && (fileVideoTemplateA = srb.a.a(templateList)) != null) {
            templateId = fileVideoTemplateA.getTemplateId();
        }
        return templateId;
    }

    public final xm9 v(final String str) {
        y45.j(str, "fileId");
        FileVideoPlayInfoResult fileVideoPlayInfoResult = (FileVideoPlayInfoResult) b.get(str);
        if (fileVideoPlayInfoResult != null && G(str)) {
            b0(str);
            xm9 xm9VarK = xm9.k(fileVideoPlayInfoResult);
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return CloudVideoPlayInfoManager.w(str, (FileVideoPlayInfoResult) obj);
                }
            };
            xm9 xm9VarE = xm9VarK.e(new zf1() {
                @Override
                public final void accept(Object obj) {
                    CloudVideoPlayInfoManager.x(e74Var, obj);
                }
            });
            y45.i(xm9VarE, "doOnSuccess(...)");
            return xm9VarE;
        }
        FileVideoPlayInfoResult fileVideoPlayInfoResult2 = (FileVideoPlayInfoResult) h.get(str);
        if (fileVideoPlayInfoResult2 != null) {
            xm9 xm9VarK2 = xm9.k(fileVideoPlayInfoResult2);
            y45.i(xm9VarK2, "just(...)");
            return xm9VarK2;
        }
        FileShareInfo fileShareInfo = (FileShareInfo) g.get(str);
        if (fileShareInfo != null) {
            a41 a41Var = a41.a;
            Application applicationA = se.a();
            y45.i(applicationA, "getApp(...)");
            xm9 xm9VarF = a41Var.c(applicationA).f(str, fileShareInfo);
            final e74 e74Var2 = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return CloudVideoPlayInfoManager.y(str, (FileVideoPlayInfoResult) obj);
                }
            };
            xm9 xm9VarE2 = xm9VarF.e(new zf1() {
                @Override
                public final void accept(Object obj) {
                    CloudVideoPlayInfoManager.z(e74Var2, obj);
                }
            });
            y45.i(xm9VarE2, "doOnSuccess(...)");
            return xm9VarE2;
        }
        a41 a41Var2 = a41.a;
        Application applicationA2 = se.a();
        y45.i(applicationA2, "getApp(...)");
        xm9 xm9VarL = a41Var2.c(applicationA2).l(str);
        final e74 e74Var3 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudVideoPlayInfoManager.A(str, (FileVideoPlayInfoResult) obj);
            }
        };
        xm9 xm9VarE3 = xm9VarL.e(new zf1() {
            @Override
            public final void accept(Object obj) {
                CloudVideoPlayInfoManager.B(e74Var3, obj);
            }
        });
        y45.i(xm9VarE3, "doOnSuccess(...)");
        return xm9VarE3;
    }
}

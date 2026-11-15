package com.transsion.lib_web.download_render.init;

import cm.f;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import com.transsion.lib_web.download_render.data.config.ConfigData;
import com.transsion.mb.config.manager.ConfigBean;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import pl.h;

public final class a implements c {

    public static final C0604a f44811a = new C0604a(null);

    private static long f44812b = 104857600;

    private static long f44813c = 2592000000L;

    private static long f44814d = 2592000000L;

    public static final class C0604a {
        public C0604a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0604a() {
        }
    }

    private final void a(Map map) {
        String url;
        String path;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long size = 0;
        Object value = null;
        for (Map.Entry entry : map.entrySet()) {
            size += ((FileInfo) entry.getValue()).getSize();
            if (jCurrentTimeMillis > ((FileInfo) entry.getValue()).getUsedTime()) {
                jCurrentTimeMillis = ((FileInfo) entry.getValue()).getUsedTime();
                value = entry.getValue();
            }
        }
        if (size > f44812b) {
            FileInfo fileInfo = (FileInfo) value;
            h.f69205a.a("DR_", "<cacheSizeCheck> deleteFile url: " + (fileInfo != null ? fileInfo.getUrl() : null));
            String str = "";
            if (fileInfo == null || (url = fileInfo.getUrl()) == null) {
                url = "";
            }
            if (fileInfo != null && (path = fileInfo.getPath()) != null) {
                str = path;
            }
            b(url, new File(str));
            com.transsion.lib_web.download_render.c.f44800a.d(fileInfo != null ? fileInfo.getUrl() : null);
            TypeIntrinsics.d(map).remove(fileInfo != null ? fileInfo.getUrl() : null);
            a(map);
        }
    }

    private final void b(String str, File file) {
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        Intrinsics.e(file2);
                        b(str, file2);
                        file2.delete();
                    } else {
                        String absolutePath = file2.getAbsolutePath();
                        file2.delete();
                        Intrinsics.e(absolutePath);
                        int iO0 = StringsKt.o0(absolutePath, "https:", 0, false, 6, null);
                        if (iO0 != -1) {
                            String strSubstring = absolutePath.substring(iO0, absolutePath.length());
                            Intrinsics.g(strSubstring, "substring(...)");
                            com.transsion.lib_web.download_render.c.f44800a.c(str, StringsKt.Q(strSubstring, "https:/", "https://", false, 4, null));
                        }
                    }
                }
            }
            file.delete();
        }
    }

    private final long c(File file) {
        long length;
        long j10 = 0;
        if (!file.exists()) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    Intrinsics.e(file2);
                    length = c(file2);
                } else {
                    length = file2.length();
                }
                j10 += length;
            }
        }
        return j10;
    }

    private final void d(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (System.currentTimeMillis() - ((FileInfo) entry.getValue()).getUsedTime() > f44813c && System.currentTimeMillis() - ((FileInfo) entry.getValue()).getUpgradeTime() > f44814d) {
                h.f69205a.a("DR_", "<validTimeCheck> deleteFile url: " + ((FileInfo) entry.getValue()).getUrl());
                b(((FileInfo) entry.getValue()).getUrl(), new File(((FileInfo) entry.getValue()).getPath()));
                com.transsion.lib_web.download_render.c.f44800a.d(((FileInfo) entry.getValue()).getUrl());
                it.remove();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    @Override
    public void invoke() {
        List<PageData> listL;
        Long upgradeTime;
        Long usedTime;
        String str;
        String value;
        try {
            ConfigBean configBeanD = f.d(f.f17019c.a(), "dr_config", false, 2, null);
            if (configBeanD == null || (value = configBeanD.getValue()) == null) {
                str = "{}";
            } else {
                str = StringsKt.q0(value) ? null : value;
                if (str == null) {
                    str = "{}";
                }
            }
            ConfigData configData = (ConfigData) o.d(str, ConfigData.class);
            f44812b = RangesKt.f(configData.getMaxCacheSize(), 0L);
            f44813c = RangesKt.f(configData.getMaxUsedTime(), 0L);
            f44814d = RangesKt.f(configData.getMaxUpgradeTime(), 0L);
            h.f69205a.a("DR_Config", "config:" + str + ", maxCacheSize:" + f44812b + ", maxUsedTime:" + f44813c + ", maxUpgradeTime:" + f44814d);
        } catch (Throwable unused) {
        }
        try {
            com.transsion.lib_web.download_render.utils.c cVar = com.transsion.lib_web.download_render.utils.c.f44820a;
            String absolutePath = new File(Utils.a().getFilesDir(), "DownloadRender").getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            List<File> listC = cVar.c(absolutePath);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (File file : listC) {
                long jC = c(new File(Utils.a().getFilesDir(), "DownloadRender"));
                com.transsion.lib_web.download_render.c cVar2 = com.transsion.lib_web.download_render.c.f44800a;
                String strI = cVar2.i(file.getName());
                if (strI == null) {
                    strI = String.valueOf(System.currentTimeMillis());
                }
                PageData pageDataG = cVar2.g(strI);
                long jLongValue = (pageDataG == null || (usedTime = pageDataG.getUsedTime()) == null) ? 0L : usedTime.longValue();
                long jLongValue2 = (pageDataG == null || (upgradeTime = pageDataG.getUpgradeTime()) == null) ? 0L : upgradeTime.longValue();
                String absolutePath2 = file.getAbsolutePath();
                Intrinsics.g(absolutePath2, "getAbsolutePath(...)");
                linkedHashMap.put(strI, new FileInfo(strI, jC, jLongValue, jLongValue2, absolutePath2));
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            PageListData pageListDataL = com.transsion.lib_web.download_render.c.f44800a.l();
            if (pageListDataL == null || (listL = pageListDataL.getH5Pages()) == null) {
                listL = CollectionsKt.l();
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Iterator<T> it = listL.iterator();
                boolean z10 = false;
                while (it.hasNext()) {
                    if (Intrinsics.c(((PageData) it.next()).getUrl(), ((FileInfo) entry.getValue()).getUrl())) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            a(linkedHashMap2);
            d(linkedHashMap2);
        } catch (Throwable th2) {
            h.f69205a.b("DR_", "<DiskSpaceCheckTask> fail:" + th2);
        }
    }
}

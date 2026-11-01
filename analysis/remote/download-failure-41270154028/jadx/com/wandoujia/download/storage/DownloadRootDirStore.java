package com.wandoujia.download.storage;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.premium.configs.Config;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import kotlin.b;
import kotlin.text.StringsKt__StringsKt;
import o.cu7;
import o.hs7;
import o.or3;
import o.sq5;
import o.t14;
import o.tt1;
import o.xu0;
import o.y48;
import o.yj2;
import o.yu0;

public final class DownloadRootDirStore {
    public static final DownloadRootDirStore a = new DownloadRootDirStore();
    public static final t14 b = b.b(DownloadRootDirStore$relativePathList$2.INSTANCE);
    public static final t14 c = b.b(DownloadRootDirStore$mediaRelativePathList$2.INSTANCE);

    public static void a() {
        u();
    }

    public static final List b(DownloadRootDirStore downloadRootDirStore) {
        return downloadRootDirStore.f();
    }

    public static final List c(DownloadRootDirStore downloadRootDirStore) {
        return downloadRootDirStore.g();
    }

    public static void t(DownloadRootDirStore downloadRootDirStore, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        downloadRootDirStore.s(str, z);
    }

    public static final void u() {
        a.z();
    }

    public final boolean d(File file) {
        if (!file.exists()) {
            return false;
        }
        File file2 = new File(file, "." + System.currentTimeMillis() + "_😁" + Thread.currentThread().getId() + "😁_" + new Random().nextLong());
        try {
            yj2.n(file2);
            return file2.delete();
        } catch (Throwable unused) {
            return false;
        }
    }

    public final String e() {
        return j();
    }

    public final List f() {
        List listK = xu0.k(GlobalConfig.ContentDir.VIDEO, GlobalConfig.ContentDir.AUDIO, GlobalConfig.ContentDir.IMAGE);
        ArrayList arrayList = new ArrayList(yu0.r(listK, 10));
        Iterator it2 = listK.iterator();
        while (it2.hasNext()) {
            arrayList.add(GlobalConfig.CONTENT_DIRS[((GlobalConfig.ContentDir) it2.next()).ordinal()]);
        }
        return arrayList;
    }

    public final List g() {
        List listK = xu0.k(GlobalConfig.ContentDir.VIDEO, GlobalConfig.ContentDir.AUDIO, GlobalConfig.ContentDir.IMAGE, GlobalConfig.ContentDir.APP);
        ArrayList arrayList = new ArrayList(yu0.r(listK, 10));
        Iterator it2 = listK.iterator();
        while (it2.hasNext()) {
            arrayList.add(GlobalConfig.CONTENT_DIRS[((GlobalConfig.ContentDir) it2.next()).ordinal()]);
        }
        return arrayList;
    }

    public final boolean h() {
        return Config.b0().getBoolean("file_name_filter_emojis", false);
    }

    public final List i() {
        return (List) c.getValue();
    }

    public final String j() {
        String string = Config.b0().getString("root_dir_v2", null);
        return !TextUtils.isEmpty(string) ? string : Config.N();
    }

    public final List k() {
        return (List) b.getValue();
    }

    public final String l() {
        return Config.b0().getString("secondary_download_dir", null);
    }

    public final String m() {
        String strJ = j();
        if (!TextUtils.isEmpty(strJ) && (yj2.v(strJ) || yj2.e(strJ))) {
            return strJ;
        }
        String strL = l();
        return (TextUtils.isEmpty(strL) || !(yj2.v(strL) || yj2.e(strL))) ? strJ : strL;
    }

    public final String n(String str) {
        List listP = hs7.p();
        Object obj = null;
        if (listP == null || listP.isEmpty()) {
            return null;
        }
        or3.c(listP);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : listP) {
            String str2 = (String) obj2;
            if (str2 != null && str2.length() > 1) {
                arrayList.add(obj2);
            }
        }
        for (Object obj3 : arrayList) {
            String str3 = (String) obj3;
            or3.c(str3);
            if (cu7.N(str, str3, false, 2, null)) {
                obj = obj3;
                break;
            }
        }
        return (String) obj;
    }

    public final boolean o(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        or3.c(str);
        String strN = n(str);
        if (TextUtils.isEmpty(strN) || str2 == null) {
            return false;
        }
        or3.c(strN);
        return cu7.N(str2, strN, false, 2, null);
    }

    public final boolean p(String str) {
        or3.f(str, "filePath");
        List listK = k();
        if ((listK instanceof Collection) && listK.isEmpty()) {
            return false;
        }
        Iterator it2 = listK.iterator();
        while (it2.hasNext()) {
            if (StringsKt__StringsKt.Q(str, (String) it2.next(), true)) {
                return true;
            }
        }
        return false;
    }

    public final boolean q(String str) {
        or3.f(str, "filePath");
        List listI = i();
        if ((listI instanceof Collection) && listI.isEmpty()) {
            return false;
        }
        Iterator it2 = listI.iterator();
        while (it2.hasNext()) {
            if (StringsKt__StringsKt.Q(str, (String) it2.next(), true)) {
                return true;
            }
        }
        return false;
    }

    public final void r(String str) {
        or3.f(str, MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
        t(this, str, false, 2, null);
    }

    public final void s(String str, boolean z) {
        or3.f(str, MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
        String strJ = j();
        String strL = l();
        if (strJ == null || !(!cu7.B(strJ))) {
            w(str);
        } else {
            boolean zO = o(strJ, str);
            if (!z) {
                if (zO) {
                    str = strJ;
                } else if (!TextUtils.isEmpty(strL) && o(strL, str)) {
                    or3.c(strL);
                    str = strL;
                }
            }
            if (zO) {
                w(str);
            } else {
                w(str);
                x(strJ);
            }
        }
        y48.l(new tt1());
    }

    public final void v(boolean z) {
        Config.b0().edit().putBoolean("file_name_filter_emojis", z).apply();
    }

    public final void w(String str) {
        if (TextUtils.isEmpty(str)) {
            ProductionEnv.throwExceptForDebugging(new RuntimeException("Download Root Dir null"));
        }
        Config.b0().edit().putString("root_dir_v2", str).apply();
    }

    public final void x(String str) {
        Config.b0().edit().putString("secondary_download_dir", str).apply();
    }

    public final boolean y() {
        String strE;
        if (!sq5.c() || (strE = e()) == null || strE.length() == 0) {
            return false;
        }
        return h();
    }

    public final void z() {
        String strE;
        if (sq5.c() && (strE = e()) != null) {
            File file = new File(strE);
            v(yj2.d(file) && !d(file));
            ProductionEnv.d("DownloadRootDirStore", "updateFileNameFilterEmojis:" + h());
        }
    }
}

package com.bykv.vk.openvk.preload.geckox.d;

import android.net.Uri;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.k;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.util.List;

public class h extends k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    private int f20066d = 0;

    @Override
    protected final boolean a(Throwable th2) {
        GeckoLogger.w("gecko-debug-tag", "patch update failed", th2);
        if (this.f20066d >= g().getPatch().getUrlList().size()) {
            return false;
        }
        return (th2 instanceof com.bykv.vk.openvk.preload.geckox.b.a) || (th2 instanceof com.bykv.vk.openvk.preload.geckox.b.b);
    }

    @Override
    protected final Pair<Uri, UpdatePackage> a() {
        UpdatePackage updatePackageG = g();
        List<String> urlList = updatePackageG.getPatch().getUrlList();
        int i10 = this.f20066d;
        this.f20066d = i10 + 1;
        return new Pair<>(Uri.parse(urlList.get(i10)), updatePackageG);
    }
}

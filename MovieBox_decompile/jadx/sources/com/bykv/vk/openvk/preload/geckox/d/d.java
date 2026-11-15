package com.bykv.vk.openvk.preload.geckox.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class d extends com.bykv.vk.openvk.preload.b.d<List<String>, List<Pair<String, Long>>> {

    private File f20061d;

    private String f20062e;

    @Override
    public final Object a(com.bykv.vk.openvk.preload.b.b<List<Pair<String, Long>>> bVar, List<String> list) throws Throwable {
        List<String> list2 = list;
        GeckoLogger.d("gecko-debug-tag", "get local channel version:", list2);
        File file = new File(this.f20061d, this.f20062e);
        ArrayList arrayList = new ArrayList();
        for (String str : list2) {
            Long lA = com.bykv.vk.openvk.preload.geckox.utils.g.a(new File(file, str));
            arrayList.add(new Pair<>(str, Long.valueOf(lA == null ? 0L : lA.longValue())));
        }
        return bVar.a(arrayList);
    }

    @Override
    protected final void a(Object... objArr) {
        super.a(objArr);
        this.f20061d = (File) objArr[0];
        this.f20062e = (String) objArr[1];
    }
}

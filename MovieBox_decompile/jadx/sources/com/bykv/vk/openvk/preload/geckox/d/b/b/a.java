package com.bykv.vk.openvk.preload.geckox.d.b.b;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;

public class a extends com.bykv.vk.openvk.preload.b.d<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> {
    @Override
    public final Object a(com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> bVar, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage> pair) throws Throwable {
        return a2(bVar, pair);
    }

    private static Object a2(com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> bVar, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage> pair) throws Throwable {
        GeckoLogger.d("gecko-debug-tag", "start check merged zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        com.bykv.vk.openvk.preload.geckox.buffer.a aVar = (com.bykv.vk.openvk.preload.geckox.buffer.a) pair.first;
        aVar.b(0L);
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        try {
            com.bykv.vk.openvk.preload.geckox.utils.d.a(new com.bykv.vk.openvk.preload.geckox.buffer.stream.a(aVar), updatePackage.getFullPackage().getMd5());
            return bVar.a(pair);
        } catch (Throwable th2) {
            aVar.e();
            throw new RuntimeException("check merged zip file failed, channel:" + updatePackage.getChannel() + ", pkg id：" + updatePackage.getPatch().getId() + ", caused by:" + th2.getMessage(), th2);
        }
    }
}

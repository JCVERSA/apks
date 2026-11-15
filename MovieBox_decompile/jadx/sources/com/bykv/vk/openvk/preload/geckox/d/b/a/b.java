package com.bykv.vk.openvk.preload.geckox.d.b.a;

import android.net.Uri;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.io.File;

public class b extends com.bykv.vk.openvk.preload.b.d<Pair<Uri, UpdatePackage>, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> {

    private com.bykv.vk.openvk.preload.geckox.b f20049d;

    private File f20050e;

    @Override
    protected final void a(Object... objArr) {
        super.a(objArr);
        this.f20049d = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.f20050e = (File) objArr[1];
    }

    @Override
    public Object a(com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> bVar, Pair<Uri, UpdatePackage> pair) throws Throwable {
        GeckoLogger.d("gecko-debug-tag", "start download full zip file, channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String string = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = this.f20050e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(updatePackage.getAccessKey());
        String str = File.separator;
        sb2.append(str);
        sb2.append(updatePackage.getChannel());
        sb2.append(str);
        sb2.append(updatePackage.getVersion());
        sb2.append("--updating");
        File file2 = new File(file, sb2.toString());
        file2.mkdirs();
        File file3 = new File(file2, "res.zip");
        this.f20049d.a();
        com.bykv.vk.openvk.preload.geckox.buffer.a aVarA = com.bykv.vk.openvk.preload.geckox.buffer.a.a.a(file3, length);
        try {
            this.f20049d.i().downloadFile(string, length, new BufferOutputStream(aVarA));
            try {
                return bVar.a(new Pair<>(aVarA, updatePackage));
            } finally {
                aVarA.e();
            }
        } catch (Throwable th2) {
            aVarA.e();
            throw new com.bykv.vk.openvk.preload.geckox.b.a("download full zip file failed, url:" + string + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th2.getMessage(), th2);
        }
    }
}

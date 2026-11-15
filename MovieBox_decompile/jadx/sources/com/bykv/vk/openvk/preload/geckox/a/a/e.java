package com.bykv.vk.openvk.preload.geckox.a.a;

import java.io.File;
import java.util.Iterator;
import java.util.List;

final class e extends b {
    e() {
    }

    @Override
    public final void a(a aVar, File file, List<String> list) {
        super.a(aVar, file, list);
    }

    @Override
    public final void a() {
        Iterator<String> it = this.f19977e.iterator();
        while (it.hasNext()) {
            List<File> listB = com.bykv.vk.openvk.preload.geckox.utils.b.b(new File(this.f19976d, it.next()));
            if (listB != null && listB.size() > this.f19975c.f19967a) {
                for (File file : listB.subList(0, listB.size() - this.f19975c.f19967a)) {
                    com.bykv.vk.openvk.preload.geckox.a.c.b(file.getAbsolutePath());
                    if (this.f19975c.f19968b != null) {
                        file.getName();
                    }
                }
            }
        }
    }
}

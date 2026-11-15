package com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

class TKC$1 implements Runnable {
    final sP.d Sj;
    final sP.e sP;

    TKC$1(sP.e eVar, sP.d dVar) {
        this.Sj = dVar;
    }

    @Override
    public void run() {
        try {
            if (this.sP.f19657b == null) {
                sP.e eVar = this.sP;
                eVar.f19657b = eVar.f19656a.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
            } else {
                this.sP.f19657b.clearBindings();
            }
            this.sP.f19657b.bindString(1, this.Sj.f19651a);
            this.sP.f19657b.bindString(2, this.Sj.f19652b);
            this.sP.f19657b.bindLong(3, this.Sj.f19653c);
            this.sP.f19657b.bindLong(4, this.Sj.f19654d);
            this.sP.f19657b.bindString(5, this.Sj.f19655e);
            this.sP.f19657b.executeInsert();
        } catch (Throwable unused) {
        }
    }
}

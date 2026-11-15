package com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;

class TKC$2 implements Runnable {
    final int Sj;
    final sP.e sP;

    TKC$2(sP.e eVar, int i10) {
        this.Sj = i10;
    }

    @Override
    public void run() {
        try {
            this.sP.f19656a.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(this.Sj)});
        } catch (Throwable unused) {
        }
    }
}

package com.transsion.sniffer_load;

import com.transsion.dbdata.database.VideoPlayList;
import defpackage.tpb;
import java.util.List;

class VideoDialogUtils$4 implements Runnable {
    final List val$mediaItems;
    final String val$name;
    final b.a val$onAddlistFinish;

    public VideoDialogUtils$4(String str, List list, b.a aVar) {
        this.val$name = str;
        this.val$mediaItems = list;
    }

    @Override
    public void run() {
        long jF = tpb.j0().f(this.val$name);
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.name = this.val$name;
        videoPlayList.id = Math.toIntExact(jF);
        b.d(this.val$mediaItems, videoPlayList, null);
    }
}

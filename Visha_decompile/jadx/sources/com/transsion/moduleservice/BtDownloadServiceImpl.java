package com.transsion.moduleservice;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.annotation.Route;
import defpackage.pk0;
import defpackage.px5;

@Route(path = "/btdownload/btdownloadservice")
public class BtDownloadServiceImpl implements IBtDownloadService {
    @Override
    public void gotoTorrentDownloadActivity(@NonNull Context context) {
        pk0.f().k(context);
    }

    @Override
    public boolean hasTaskRunning() {
        return pk0.f().l();
    }

    @Override
    public void init(Context context) {
    }

    @Override
    public boolean sniffTorrent(Context context, View view, Uri uri, String str) {
        return px5.g(context, view, uri, str);
    }
}

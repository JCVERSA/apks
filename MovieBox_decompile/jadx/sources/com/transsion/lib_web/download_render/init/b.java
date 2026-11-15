package com.transsion.lib_web.download_render.init;

import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.data.PageListData;

public final class b implements c {
    @Override
    public void invoke() {
        PageListData pageListDataL = com.transsion.lib_web.download_render.c.f44800a.l();
        if (pageListDataL == null) {
            return;
        }
        FileDownloadTaskManager.f44780a.g(pageListDataL.getH5Pages());
    }
}

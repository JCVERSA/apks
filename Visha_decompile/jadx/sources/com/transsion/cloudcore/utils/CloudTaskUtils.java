package com.transsion.cloudcore.utils;

import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.cl0;
import defpackage.mc2;
import defpackage.wh1;
import defpackage.y45;
import java.util.List;

public final class CloudTaskUtils {
    public static final CloudTaskUtils a = new CloudTaskUtils();

    public static final Object a(List list, wh1 wh1Var) {
        return cl0.g(mc2.b(), new CloudTaskUtils$handleLocalFileStatus$2(list, null), wh1Var);
    }

    public static final PlayVideoData b(CloudTaskEntity cloudTaskEntity) {
        y45.j(cloudTaskEntity, "cloudTaskEntity");
        PlayVideoData playVideoDataCreateKtPlayData = PlayVideoData.createKtPlayData(-1L, cloudTaskEntity.fileName, 0, 0, (int) cloudTaskEntity.duration, cloudTaskEntity.cloudFileId, 49);
        y45.i(playVideoDataCreateKtPlayData, "createKtPlayData(...)");
        return playVideoDataCreateKtPlayData;
    }
}

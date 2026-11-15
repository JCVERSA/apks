package com.transsion.magicvideo.services;

import com.alibaba.android.arouter.facade.template.IProvider;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;

public interface ICloudFileService extends IProvider {
    void startDownload(FileShareInfo fileShareInfo, String str);

    void startDownload(VideoCloudData videoCloudData);

    void startDownload(MIMediaInfo mIMediaInfo);
}

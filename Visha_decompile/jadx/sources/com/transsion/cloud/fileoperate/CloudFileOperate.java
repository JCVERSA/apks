package com.transsion.cloud.fileoperate;

import android.content.Context;
import android.util.Log;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud.upload.model.UploadingItem;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VideoCloudDataLocal;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayItemInfo;
import com.transsion.magicvideo.services.ICloudFileService;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.okdownload.a;
import defpackage.av3;
import defpackage.bz0;
import defpackage.cz5;
import defpackage.dr9;
import defpackage.oe7;
import defpackage.ri4;
import defpackage.se;
import defpackage.yx2;
import java.util.ArrayList;
import java.util.List;

@Route(path = VishaRouterTable.PATH_SERVICE_CLOUD_FILE_OPERATE)
public class CloudFileOperate implements ICloudFileService {
    private static volatile CloudFileOperate INSTANCE = null;
    private static final String TAG = "visha_cloud_CloudFileOperate";
    private oe7 mStorageInsufficientListener;

    public static CloudFileOperate getInstance() {
        if (INSTANCE == null) {
            synchronized (CloudFileOperate.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new CloudFileOperate();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return INSTANCE;
    }

    private bz0 initCloudingItem(VideoCloudData videoCloudData) {
        bz0 bz0Var = new bz0();
        bz0Var.b = videoCloudData.getFileId();
        bz0Var.c = videoCloudData.getFileName();
        bz0Var.d = videoCloudData.getSize() == null ? 0L : videoCloudData.getSize().longValue();
        bz0Var.e = yx2.h;
        bz0Var.g = videoCloudData.getDuration() != null ? videoCloudData.getDuration().longValue() : 0L;
        bz0Var.h = videoCloudData.getPreviewUrl();
        return bz0Var;
    }

    @Override
    public void init(Context context) {
        Log.d(TAG, "CloudFileOperate init");
    }

    public void setOnCloudStorageInsufficientListener(oe7 oe7Var) {
        this.mStorageInsufficientListener = oe7Var;
    }

    public void startBatchDownload(Context context, List<VideoCloudData> list) {
        if (list == null || list.isEmpty()) {
            LogUtils.O(TAG, "Batch download failed: video list is null or empty");
            return;
        }
        Log.i(TAG, "Start batch download, total files: " + list.size());
        try {
            ArrayList arrayList = new ArrayList();
            for (VideoCloudData videoCloudData : list) {
                if (videoCloudData == null) {
                    Log.w(TAG, "Skip null video data in batch download");
                } else {
                    Log.d(TAG, "Starting download for file: " + videoCloudData);
                    arrayList.add(initCloudingItem(videoCloudData));
                }
            }
            GlobalDownloadManger.B().n(context, arrayList);
            Log.i(TAG, "Batch download tasks submitted successfully");
        } catch (Exception e) {
            Log.e(TAG, "Error occurred during batch download: " + e.getMessage());
        }
    }

    public void startBatchUploadByVideoCloudDataList(Context context, List<VideoCloudDataLocal> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        oe7 oe7Var = this.mStorageInsufficientListener;
        if (oe7Var == null || oe7Var.a(list)) {
            try {
                ArrayList arrayList = new ArrayList();
                for (VideoCloudDataLocal videoCloudDataLocal : list) {
                    if (videoCloudDataLocal != null) {
                        Log.i(TAG, "Batch upload " + videoCloudDataLocal);
                        UploadingItem uploadingItem = new UploadingItem();
                        uploadingItem.filePath = videoCloudDataLocal.getLocalMediaData();
                        uploadingItem.fileName = videoCloudDataLocal.getLocalMediaName();
                        long jLongValue = 0;
                        uploadingItem.totalSize = videoCloudDataLocal.getLocalMediaSize() == null ? 0L : videoCloudDataLocal.getLocalMediaSize().longValue();
                        uploadingItem.mediaId = videoCloudDataLocal.getLocalMediaId() == null ? 0 : videoCloudDataLocal.getLocalMediaId().intValue();
                        if (videoCloudDataLocal.getLocalMediaDuring() != null) {
                            jLongValue = videoCloudDataLocal.getLocalMediaDuring().longValue();
                        }
                        uploadingItem.duration = jLongValue;
                        arrayList.add(uploadingItem);
                    }
                }
                ri4.e().p(context, arrayList);
                Log.i(TAG, "Batch upload tasks submitted successfully");
            } catch (Exception e) {
                Log.e(TAG, "Error occurred during batch upload: " + e.getMessage());
            }
        }
    }

    @Override
    public void startDownload(VideoCloudData videoCloudData) {
        startDownload(se.a(), videoCloudData);
    }

    public void startDownload(Context context, VideoCloudData videoCloudData) {
        if (videoCloudData == null || videoCloudData.getFileId() == null) {
            Log.e(TAG, "startDownload: " + videoCloudData);
            return;
        }
        Log.d(TAG, "startDownload: " + videoCloudData);
        GlobalDownloadManger.B().p(context, initCloudingItem(videoCloudData));
        cz5.f(videoCloudData.getSize() == null ? 0L : videoCloudData.getSize().longValue(), 1, false);
    }

    private bz0 initCloudingItem(SearchResponseData searchResponseData) {
        bz0 bz0Var = new bz0();
        bz0Var.b = searchResponseData.getSourceId();
        bz0Var.c = searchResponseData.getTitle();
        bz0Var.d = searchResponseData.getSize() == null ? 0L : searchResponseData.getSize().longValue();
        bz0Var.e = yx2.h;
        bz0Var.g = searchResponseData.getDuration() != null ? searchResponseData.getDuration().longValue() : 0L;
        bz0Var.h = searchResponseData.getCover();
        return bz0Var;
    }

    public void startDownload(Context context, SearchResponseData searchResponseData) {
        if (searchResponseData == null || searchResponseData.getSourceId() == null) {
            return;
        }
        Log.d(TAG, "startDownload: " + searchResponseData);
        GlobalDownloadManger.B().p(context, initCloudingItem(searchResponseData));
        cz5.f(searchResponseData.getSize() == null ? 0L : searchResponseData.getSize().longValue(), 1, false);
    }

    @Override
    public void startDownload(FileShareInfo fileShareInfo, String str) {
        try {
            a aVar = new a();
            aVar.b(2);
            aVar.g = dr9.e();
            aVar.b = str;
            aVar.c = fileShareInfo.getFileCoverUrl();
            aVar.e = fileShareInfo.getFileSize();
            aVar.d = fileShareInfo.getFileName();
            GlobalDownloadManger.B().p(com.blankj.utilcode.util.a.a(se.a()), aVar);
        } catch (Exception e) {
            Log.e(TAG, "startDownload " + e);
        }
    }

    @Override
    public void startDownload(MIMediaInfo mIMediaInfo) {
        try {
            MIMediaVideoPlayItemInfo miMediaVideoPlayItemInfo = mIMediaInfo.getMiMediaVideoPlayItemInfo();
            a aVar = new a();
            aVar.b(3);
            aVar.g = dr9.f();
            aVar.b = miMediaVideoPlayItemInfo != null ? miMediaVideoPlayItemInfo.getVideoUrl() : "";
            aVar.c = mIMediaInfo.getCoverUri();
            aVar.e = miMediaVideoPlayItemInfo != null ? miMediaVideoPlayItemInfo.getSize() : 0L;
            aVar.d = av3.i(mIMediaInfo.getVideoTitle());
            GlobalDownloadManger.B().p(com.blankj.utilcode.util.a.a(se.a()), aVar);
        } catch (Exception e) {
            Log.e(TAG, "startDownload " + e);
        }
    }
}

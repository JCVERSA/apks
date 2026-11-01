package com.wandoujia.download.model.segments;

import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.download.model.DlinkInfo;
import com.wandoujia.download.model.DownloadUrlInfo;
import com.wandoujia.download.model.DserviceInfo;
import com.wandoujia.download.model.SegmentInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import o.gz1;
import o.j23;
import o.tu1;

public class DownloadConfigInfo implements Serializable {
    private static final long serialVersionUID = 3342084427733310475L;
    private String resSign;
    private long segSize;
    private String totalCrc;
    private long totalSize;
    private List<DownloadUrlInfo> backupUrls = new ArrayList();
    private List<DownloadBlockInfo> blocks = new ArrayList();
    private List<SegmentInfo> segInfos = new ArrayList();

    public class a implements Comparator {
        public int a(DownloadUrlInfo downloadUrlInfo, DownloadUrlInfo downloadUrlInfo2) {
            return downloadUrlInfo.getWeight() < downloadUrlInfo2.getWeight() ? 1 : -1;
        }

        @Override
        public int compare(Object obj, Object obj2) {
            return a((DownloadUrlInfo) obj, (DownloadUrlInfo) obj2);
        }
    }

    public static int a() {
        return ((long) tu1.a(GlobalConfig.getAppContext())) <= 60 ? 1 : 3;
    }

    public static DownloadConfigInfo fromDServiceInfo(DserviceInfo dserviceInfo) {
        gz1.e(dserviceInfo.getDownload_urls());
        int i = 0;
        DownloadUrlInfo downloadUrlInfo = dserviceInfo.getDownload_urls().get(0);
        long jC = gz1.c(downloadUrlInfo);
        if (jC < 0) {
            jC = dserviceInfo.getMeta() != null ? dserviceInfo.getMeta().getTotal_size() : downloadUrlInfo.getSize();
        }
        int iA = a();
        long j = jC / ((long) iA);
        DownloadConfigInfo downloadConfigInfo = new DownloadConfigInfo();
        downloadConfigInfo.setBackupUrls(dserviceInfo.getDownload_urls());
        downloadConfigInfo.setTotalSize(jC);
        while (i < iA) {
            downloadConfigInfo.blocks.add(new DownloadBlockInfo(i, ((long) i) * j, i < iA + (-1) ? (((long) (i + 1)) * j) - 1 : jC - 1, 0L, 0));
            i++;
        }
        return downloadConfigInfo;
    }

    public static DownloadConfigInfo fromDlinkInfo(DlinkInfo dlinkInfo) {
        if (dlinkInfo == null) {
            throw new IllegalStateException("dlinkinfo cann't be null");
        }
        DownloadConfigInfo downloadConfigInfo = new DownloadConfigInfo();
        Collections.sort(dlinkInfo.songLinkEntries, new a());
        downloadConfigInfo.setBackupUrls(dlinkInfo.songLinkEntries);
        downloadConfigInfo.blocks.add(new DownloadBlockInfo(0, 0L, 0L, 0L, 0));
        return downloadConfigInfo;
    }

    public static DownloadConfigInfo fromJson(String str) {
        return (DownloadConfigInfo) j23.b(str, DownloadConfigInfo.class);
    }

    public List<DownloadUrlInfo> getBackupUrls() {
        return this.backupUrls;
    }

    public List<DownloadBlockInfo> getBlocks() {
        return this.blocks;
    }

    public List<SegmentInfo> getSegInfos() {
        return this.segInfos;
    }

    public long getSegSize() {
        return this.segSize;
    }

    public long getTotalSize() {
        return this.totalSize;
    }

    public void setBackupUrls(List<DownloadUrlInfo> list) {
        this.backupUrls = list;
    }

    public void setResSign(String str) {
        this.resSign = str;
    }

    public void setSegInfos(List<SegmentInfo> list) {
        this.segInfos = list;
    }

    public void setSegSize(long j) {
        this.segSize = j;
    }

    public void setTotalCrc(String str) {
        this.totalCrc = str;
    }

    public void setTotalSize(long j) {
        this.totalSize = j;
    }

    public String toJson() {
        try {
            return j23.h(this);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void updateBlockInfo(int i, long j) {
        synchronized (this.blocks) {
            try {
                DownloadBlockInfo downloadBlockInfo = this.blocks.get(i);
                if (downloadBlockInfo == null) {
                    throw new IllegalStateException("try to update not existed block info");
                }
                downloadBlockInfo.setCurrentSize(j);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

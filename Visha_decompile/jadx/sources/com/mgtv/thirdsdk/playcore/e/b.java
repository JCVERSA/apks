package com.mgtv.thirdsdk.playcore.e;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.entity.LiveItemSourceEntity;
import com.hunantv.imgo.util.u;
import com.hunantv.media.report.ReportParams;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;

public class b {
    private Context a;
    private com.mgtv.thirdsdk.playcore.e b;
    private MgtvPlayerView c;
    private com.mgtv.thirdsdk.playcore.c.b d;

    public b(Context context, com.mgtv.thirdsdk.playcore.e eVar, MgtvPlayerView mgtvPlayerView) {
        this.a = context;
        this.b = eVar;
        this.c = mgtvPlayerView;
    }

    public void a() {
        LiveItemSourceEntity liveItemSourceEntity = this.b.al;
        if (liveItemSourceEntity == null || TextUtils.isEmpty(liveItemSourceEntity.url)) {
            if (this.b.ai) {
                com.mgtv.thirdsdk.playcore.c.b bVar = this.d;
                if (bVar != null) {
                    bVar.a(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILEd, "切换清晰度失败");
                    return;
                }
                return;
            }
            com.mgtv.thirdsdk.playcore.c.b bVar2 = this.d;
            if (bVar2 != null) {
                bVar2.a(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_ERROR_NO_SOURCE, "无可用源");
                return;
            }
            return;
        }
        ReportParams reportParams = this.b.aB;
        if (reportParams != null) {
            reportParams.setVideoType(ReportParams.VideoType.LIVE);
            com.mgtv.thirdsdk.playcore.e eVar = this.b;
            eVar.aB.setVid(eVar.an);
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.aB.setCdnip(u.h(eVar2.al.url));
            this.b.aB.setVideoSession(com.hunantv.imgo.b.c.a().f);
            com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
            eVar3.aB.setCaseType(eVar3.am);
        }
        this.b.T = 2;
        VideoSDKReport.a().k(this.b.al.url);
        this.c.getVideoPlayer().setReportParams(this.b.aB);
        this.c.configPlayer();
        if ("H265".toLowerCase().equalsIgnoreCase(this.b.al.videoFormat)) {
            this.c.getVideoPlayer().setForceDecodeMode(true);
        } else {
            this.c.getVideoPlayer().setForceDecodeMode(false);
        }
        this.c.getVideoPlayer().setLiveMode(true);
        ImgoPlayerView videoPlayer = this.c.getVideoPlayer();
        LiveItemSourceEntity liveItemSourceEntity2 = this.b.al;
        String str = liveItemSourceEntity2.name;
        String str2 = liveItemSourceEntity2.url;
        videoPlayer.startPlayer(str, "", str2, str2, liveItemSourceEntity2.sid);
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.d = bVar;
    }
}

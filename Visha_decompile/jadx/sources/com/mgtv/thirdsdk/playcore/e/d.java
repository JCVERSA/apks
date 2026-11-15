package com.mgtv.thirdsdk.playcore.e;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.imgo.util.u;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.report.ReportParams;
import com.mgtv.ssp.R;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;

public class d {
    private static final String a = "d";
    private Context b;
    private com.mgtv.thirdsdk.playcore.e c;
    private com.mgtv.thirdsdk.playcore.c.b d;
    private MgtvPlayerView e;

    public d(Context context, com.mgtv.thirdsdk.playcore.e eVar, MgtvPlayerView mgtvPlayerView) {
        this.b = context;
        this.c = eVar;
        this.e = mgtvPlayerView;
    }

    private void b() {
        PlayerRealUrlEntity playerRealUrlEntity;
        com.mgtv.thirdsdk.playcore.c.b bVar;
        if (this.c.l != null) {
            MgtvMediaPlayer.DataSourceInfo dataSourceInfo = new MgtvMediaPlayer.DataSourceInfo();
            try {
                PlayerAuthRouterEntity playerAuthRouterEntity = this.c.l;
                if (playerAuthRouterEntity != null) {
                    dataSourceInfo.setVideoHeight(Integer.valueOf(playerAuthRouterEntity.videoHeight).intValue());
                    dataSourceInfo.setVideoWidth(Integer.valueOf(this.c.l.videoWidth).intValue());
                }
            } catch (Exception unused) {
                com.hunantv.imgo.log.e.b(a, "parse Int error", true);
            }
            if (TextUtils.isEmpty(this.c.l.videoformat)) {
                VideoSDKReport videoSDKReport = this.c.b;
                if (videoSDKReport != null) {
                    videoSDKReport.f("H264");
                }
                dataSourceInfo.setVideoFormat(MgtvMediaPlayer.DataSourceInfo.H264);
            } else {
                com.mgtv.thirdsdk.playcore.e eVar = this.c;
                VideoSDKReport videoSDKReport2 = eVar.b;
                if (videoSDKReport2 != null) {
                    videoSDKReport2.f(eVar.l.videoformat);
                }
                if (this.c.l.videoformat.equals("H264")) {
                    dataSourceInfo.setVideoFormat(MgtvMediaPlayer.DataSourceInfo.H264);
                } else if (this.c.l.videoformat.equals("H265")) {
                    dataSourceInfo.setVideoFormat(MgtvMediaPlayer.DataSourceInfo.H265);
                }
            }
            this.e.getVideoPlayer().setDataSourceInfo(dataSourceInfo);
        }
        if (this.c.I && (bVar = this.d) != null) {
            bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINATION_NOTIFY, this.b.getResources().getString(R.string.chang_definition_failed));
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.c;
        VideoSDKReport videoSDKReport3 = eVar2.b;
        if (videoSDKReport3 != null) {
            videoSDKReport3.m(eVar2.h);
            com.mgtv.thirdsdk.playcore.e eVar3 = this.c;
            eVar3.b.p(eVar3.M);
            com.mgtv.thirdsdk.playcore.e eVar4 = this.c;
            eVar4.b.f(eVar4.v);
            this.c.b.h("VOD_" + com.hunantv.imgo.util.b.t() + "_" + com.hunantv.imgo.util.f.b(System.currentTimeMillis()));
        }
        this.e.getVideoPlayer().setStreamKey(this.c.t);
        com.mgtv.thirdsdk.playcore.e eVar5 = this.c;
        ReportParams reportParams = eVar5.aB;
        String str = "1";
        if (reportParams != null) {
            PlayerAuthDataEntity playerAuthDataEntity = eVar5.p;
            if (playerAuthDataEntity != null) {
                reportParams.setCid(playerAuthDataEntity.fstlvlId);
                this.c.aB.setBsid(playerAuthDataEntity.seriesId);
                com.mgtv.thirdsdk.playcore.e eVar6 = this.c;
                eVar6.aB.setIstry(eVar6.v ? "1" : "0");
            }
            com.mgtv.thirdsdk.playcore.e eVar7 = this.c;
            if (eVar7.l != null && (playerRealUrlEntity = eVar7.L) != null && !TextUtils.isEmpty(playerRealUrlEntity.info)) {
                this.c.aB.setCdnip(u.h(playerRealUrlEntity.info));
            }
            this.c.aB.setAcp("0");
            this.c.aB.setRefmdid("");
            com.mgtv.thirdsdk.playcore.e eVar8 = this.c;
            eVar8.aB.setIstry(eVar8.v ? "1" : "0");
            this.c.aB.setDatano("");
            this.c.aB.setAbt("");
            com.mgtv.thirdsdk.playcore.e eVar9 = this.c;
            eVar9.aB.setDef(String.valueOf(eVar9.t));
            this.c.aB.setBdid("");
            this.c.aB.setCpn("");
            com.mgtv.thirdsdk.playcore.e eVar10 = this.c;
            if (eVar10.l != null) {
                eVar10.aB.setUrl(this.c.l.url + this.c.B);
            }
        }
        try {
            com.mgtv.thirdsdk.playcore.e eVar11 = this.c;
            String str2 = eVar11.M;
            String str3 = eVar11.N;
            eVar11.aB.setPlid("");
            com.mgtv.thirdsdk.playcore.e eVar12 = this.c;
            eVar12.aB.setRetryIndex(eVar12.P);
            com.mgtv.thirdsdk.playcore.e eVar13 = this.c;
            eVar13.aB.setVid(eVar13.h);
            this.c.aB.setSwitcher("0");
            this.c.aB.setSubmit("0");
            this.c.aB.setVideoSession(com.hunantv.imgo.b.c.a().f);
            this.c.aB.setAp("0");
            this.c.aB.setVideoType(ReportParams.VideoType.VOD);
            this.c.S = false;
            if (str2.equals(str3)) {
                this.c.aB.setProxyType(ReportParams.ProxyType.NO_PROXY);
            } else {
                this.c.aB.setProxyType(ReportParams.ProxyType.ONLY_P2P);
            }
            com.mgtv.thirdsdk.playcore.e eVar14 = this.c;
            if (eVar14.aw) {
                str = "2";
            } else if (!eVar14.aB.getProxyType().equals(ReportParams.ProxyType.ONLY_P2P)) {
                str = "0";
            }
            com.mgtv.data.aphone.b.a.i = str;
            this.e.getVideoPlayer().setReportParams(this.c.aB);
            this.e.configPlayer();
            this.e.getVideoPlayer().setPrepareStartMode(MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_LOADDATA);
            PlayerAuthRouterEntity playerAuthRouterEntity2 = this.c.l;
            String str4 = playerAuthRouterEntity2 != null ? playerAuthRouterEntity2.m3u8 : "";
            if (TextUtils.isEmpty(str4)) {
                com.mgtv.thirdsdk.playcore.e eVar15 = this.c;
                eVar15.av = false;
                eVar15.aB.setSptp(0);
            } else {
                com.mgtv.thirdsdk.playcore.e eVar16 = this.c;
                eVar16.av = true;
                eVar16.aB.setSptp(1);
            }
            this.c.aB.setSptp(0);
            com.mgtv.thirdsdk.playcore.e eVar17 = this.c;
            eVar17.aB.setVfps(eVar17.l.framerate);
            try {
                PlayerAuthRouterEntity playerAuthRouterEntity3 = this.c.l;
                if (playerAuthRouterEntity3 != null && playerAuthRouterEntity3.fileStartTime != null) {
                    this.e.getVideoPlayer().setFileStartTimeMs(Float.valueOf(this.c.l.fileStartTime).floatValue());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                this.e.getVideoPlayer().setTsFlowTag(com.mgtv.thirdsdk.playcore.c.a.a(str2));
            } catch (Throwable unused2) {
            }
            int iG = com.mgtv.thirdsdk.playcore.utils.c.g(this.c.i);
            if (iG <= 0) {
                iG = (int) com.mgtv.thirdsdk.playcore.utils.c.j();
            }
            if (iG > 0) {
                this.e.getVideoPlayer().setStartPosMs(iG);
            }
            if (this.c.av) {
                ImgoPlayerView videoPlayer = this.e.getVideoPlayer();
                com.mgtv.thirdsdk.playcore.e eVar18 = this.c;
                videoPlayer.startPlayer(eVar18.k, str4, str2, str3, eVar18.h);
            } else {
                ImgoPlayerView videoPlayer2 = this.e.getVideoPlayer();
                com.mgtv.thirdsdk.playcore.e eVar19 = this.c;
                videoPlayer2.startPlayer(eVar19.k, "", str2, str3, eVar19.h);
            }
            com.mgtv.thirdsdk.playcore.c.b bVar2 = this.d;
            if (bVar2 != null) {
                bVar2.b(MgtvPlayerConstants.Success.SUCCESS_VIDEO);
            }
            this.e.showRenderView();
            String str5 = a;
            com.hunantv.imgo.log.e.b(str5, "playVideo success", true);
            com.hunantv.imgo.log.e.b(str5, "mPlayerData.mVideoReportParams:" + this.c.aB.toString(), true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.d = bVar;
    }

    public void a() {
        b();
    }

    public void a(String str) {
        com.mgtv.thirdsdk.playcore.e eVar = this.c;
        if (eVar.O == -1000) {
            eVar.O = eVar.l.definition;
        }
        int i = eVar.O;
        PlayerAuthRouterEntity playerAuthRouterEntity = eVar.m;
        int i2 = playerAuthRouterEntity != null ? playerAuthRouterEntity.definition : 0;
        if (this.e.getVideoPlayer() != null) {
            this.e.getVideoPlayer().changeSourceAsync(str, 0, i, i2);
        }
        this.c.O = i2;
    }
}

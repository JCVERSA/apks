package com.mgtv.thirdsdk.playcore.e;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.util.l;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.s;
import com.hunantv.imgo.util.u;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.report.ReportParams;
import com.just.agentweb.DefaultWebClient;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.mgtv.ssp.module.ModuleManager;
import com.mgtv.ssp.play.playsdk.VideoDefinitions;
import com.mgtv.task.http.HttpTraceObject;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import defpackage.hb0;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

public class c {
    private static final String a = "c";
    private com.mgtv.thirdsdk.playcore.e b;
    private MgtvPlayerView c;
    private Context d;
    private boolean e;
    private long f;
    private String g;
    private com.mgtv.downloader.net.entity.a h;
    private com.mgtv.thirdsdk.playcore.c.b i;
    private ImgoHttpParams j;

    public c(Context context, com.mgtv.thirdsdk.playcore.e eVar, MgtvPlayerView mgtvPlayerView) {
        this.c = mgtvPlayerView;
        this.b = eVar;
        this.d = context;
    }

    private int d() {
        return com.mgtv.thirdsdk.playcore.utils.c.c(0);
    }

    private String b(String str) {
        if (str == null || str.trim().equals("")) {
            return "";
        }
        if (str.toLowerCase().contains("file://") || str.toLowerCase().contains(DefaultWebClient.HTTP_SCHEME) || str.toLowerCase().contains("https://") || str.toLowerCase().contains("rtmp://")) {
            return str;
        }
        return "file://" + str;
    }

    private String c() {
        return com.hunantv.imgo.net.a.b() + "/union/video/source";
    }

    private void b() {
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        if (eVar != null) {
            eVar.W = false;
            eVar.v = false;
            eVar.S = false;
            eVar.X = false;
            System.out.println("isVideoPrepare   playerDataReset  " + this.b.X);
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.P = 0;
            eVar2.aB.setLastErrorCodeExtra(0);
            com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
            eVar3.x = 0;
            eVar3.w = null;
            eVar3.B = "";
            eVar3.O = -1000;
            com.hunantv.imgo.b.c.a().o = 0;
        }
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.i = bVar;
    }

    public void a(String str) {
        this.g = str;
        this.e = false;
        com.hunantv.imgo.log.e.b(a, "contentId:" + str, true);
        if (TextUtils.isEmpty(str)) {
            com.mgtv.thirdsdk.playcore.c.b bVar = this.i;
            if (bVar != null) {
                bVar.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_NULL, "");
                return;
            }
            return;
        }
        Object moduleObjectInfo = ModuleManager.getModuleObjectInfo(ModuleManager.MODULE_DOWN, "DATAOBJ", str);
        if (moduleObjectInfo == null) {
            com.mgtv.thirdsdk.playcore.c.b bVar2 = this.i;
            if (bVar2 != null) {
                bVar2.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                return;
            }
            return;
        }
        if (moduleObjectInfo instanceof com.mgtv.downloader.net.entity.a) {
            this.h = (com.mgtv.downloader.net.entity.a) moduleObjectInfo;
        }
        com.mgtv.downloader.net.entity.a aVar = this.h;
        if (aVar == null) {
            com.mgtv.thirdsdk.playcore.c.b bVar3 = this.i;
            if (bVar3 != null) {
                bVar3.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                return;
            }
            return;
        }
        if (aVar.i.intValue() != 4) {
            com.mgtv.thirdsdk.playcore.c.b bVar4 = this.i;
            if (bVar4 != null) {
                bVar4.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOAD_NOT_COMPLETE, "");
                return;
            }
            return;
        }
        String moduleStringInfo = ModuleManager.getModuleStringInfo(ModuleManager.MODULE_DOWN, "proxyUrl", str);
        if (TextUtils.isEmpty(moduleStringInfo)) {
            com.mgtv.thirdsdk.playcore.c.b bVar5 = this.i;
            if (bVar5 != null) {
                bVar5.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                return;
            }
            return;
        }
        Object moduleObjectInfo2 = ModuleManager.getModuleObjectInfo(ModuleManager.MODULE_DOWN, "checkFile", str);
        if (!((moduleObjectInfo2 == null || !(moduleObjectInfo2 instanceof Boolean)) ? false : ((Boolean) moduleObjectInfo2).booleanValue())) {
            com.mgtv.thirdsdk.playcore.c.b bVar6 = this.i;
            if (bVar6 != null) {
                bVar6.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                return;
            }
            return;
        }
        String strB = b(moduleStringInfo);
        if (TextUtils.isEmpty(strB)) {
            com.mgtv.thirdsdk.playcore.c.b bVar7 = this.i;
            if (bVar7 != null) {
                bVar7.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                return;
            }
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        eVar.h = this.h.b;
        eVar.M = strB;
        eVar.v = false;
        if (p.a(this.d).booleanValue()) {
            this.f = System.currentTimeMillis();
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.aJ = false;
            a(null, eVar2.h, null);
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
        eVar3.T = 2;
        eVar3.aJ = true;
        a(false);
    }

    public void a(boolean z) {
        String strB;
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        if (eVar == null || this.h == null) {
            return;
        }
        if (z && TextUtils.isEmpty(eVar.M)) {
            String moduleStringInfo = ModuleManager.getModuleStringInfo(ModuleManager.MODULE_DOWN, "proxyUrl", this.g);
            if (TextUtils.isEmpty(moduleStringInfo)) {
                System.out.println("mContentId: " + this.g + " start proxyUrl is null");
                com.mgtv.thirdsdk.playcore.c.b bVar = this.i;
                if (bVar != null) {
                    bVar.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                    return;
                }
                return;
            }
            strB = b(moduleStringInfo);
            if (TextUtils.isEmpty(strB)) {
                System.out.println("mContentId: " + this.g + " start videoPath is null");
                com.mgtv.thirdsdk.playcore.c.b bVar2 = this.i;
                if (bVar2 != null) {
                    bVar2.a(MgtvPlayerConstants.ErrorCode.LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL, "");
                    return;
                }
                return;
            }
            this.b.h = ModuleManager.getModuleStringInfo(ModuleManager.MODULE_DOWN, "videoId", this.g);
            this.b.M = strB;
        } else {
            strB = this.b.M;
        }
        String str = strB;
        if (!z) {
            this.b.T = 2;
            com.hunantv.imgo.util.e.b = System.currentTimeMillis() - this.f;
        }
        this.f = System.currentTimeMillis();
        int iIntValue = this.h.x.intValue();
        com.mgtv.downloader.net.entity.a aVar = this.h;
        String str2 = aVar.t;
        String str3 = aVar.u;
        String str4 = aVar.z;
        this.b.t = iIntValue;
        VideoSDKReport.a().m(this.h.y);
        VideoSDKReport.a().n(this.b.h);
        VideoSDKReport.a().p(this.b.M);
        VideoSDKReport.a().k(this.b.M);
        VideoSDKReport.a().a("", str2, str3, str4);
        VideoSDKReport.a().x(this.b.M);
        VideoSDKReport.a().f(this.b.v);
        VideoSDKReport.a().h("VOD_" + com.hunantv.imgo.util.b.t() + "_" + com.hunantv.imgo.util.f.b(System.currentTimeMillis()));
        if (!this.e) {
            VideoSDKReport.a().c();
            VideoSDKReport.a().d();
        }
        com.mgtv.thirdsdk.playcore.c.b bVar3 = this.i;
        if (bVar3 != null) {
            bVar3.b(65536);
        }
        ReportParams reportParams = this.b.aB;
        if (reportParams != null) {
            reportParams.setVideoType(ReportParams.VideoType.LOCAL);
            this.b.aB.setAp("0");
            this.b.aB.setRetryIndex(0);
            this.b.aB.setPlid(str2);
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.aB.setVid(String.valueOf(eVar2.h));
            this.b.aB.setDownloadSDKVersion(this.h.o());
            if (!u.a((CharSequence) str) && str.contains(ImgoP2pConstants.LOCAL_HOST)) {
                this.b.aB.setProxyType(ReportParams.ProxyType.LOCAL_PROXY);
            } else {
                this.b.aB.setProxyType(ReportParams.ProxyType.NO_PROXY);
            }
            this.b.aB.setCid("");
            this.b.aB.setBsid(str4);
            com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
            eVar3.aB.setIstry(eVar3.v ? "1" : "0");
            this.b.aB.setCdnip("");
            this.b.aB.setDef(String.valueOf(iIntValue));
            this.b.aB.setVideoSession(com.hunantv.imgo.b.c.a().f);
        }
        MgtvPlayerView mgtvPlayerView = this.c;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.c.getVideoPlayer().reset(false);
        this.c.getVideoPlayer().setReportParams(this.b.aB);
        this.c.getVideoPlayer().setPrepareStartMode(MgtvMediaPlayer.Prepared4StartMode.MODE_PREPARED4START_DEFAULT);
        ImgoPlayerView videoPlayer = this.c.getVideoPlayer();
        com.mgtv.thirdsdk.playcore.e eVar4 = this.b;
        videoPlayer.startPlayer(eVar4.k, "", str, str, eVar4.h);
        this.c.showRenderView();
    }

    public void a(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || this.b.c == null || this.h == null) {
            return;
        }
        b();
        ImgoHttpParams imgoHttpParams = new ImgoHttpParams(true);
        this.j = imgoHttpParams;
        imgoHttpParams.setMethod(ShareTarget.METHOD_GET);
        com.hunantv.imgo.log.e.a(a, "getSource-videoId:" + str, true);
        String string = UUID.randomUUID().toString();
        String strA = com.hunantv.imgo.util.f.a(new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA));
        String strA2 = s.a(string + com.hunantv.imgo.util.b.A() + strA + "sha256" + com.hunantv.imgo.util.b.Q() + str + d() + "0");
        PrintStream printStream = System.out;
        printStream.println("dddddd " + string + " " + com.hunantv.imgo.util.b.A() + " " + strA + " sha256 " + com.hunantv.imgo.util.b.Q() + " " + str + " " + d() + " 0");
        this.j.put("c", string);
        this.j.put("t", strA);
        this.j.put("fileSourceType", "0");
        this.j.put(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, Integer.valueOf(d()));
        this.j.put("s", strA2);
        this.j.put("encrypted", "1");
        this.j.put("cxid", com.hunantv.imgo.util.b.A());
        this.j.put(TtmlNode.ATTR_ID, str);
        this.j.put(CmcdConfiguration.KEY_STREAM_TYPE, "sha256");
        this.j.put("openid", com.hunantv.imgo.util.b.R());
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.V())) {
            this.j.put("ch_token", com.hunantv.imgo.util.b.V());
        }
        this.j.put("rtype", com.hunantv.imgo.util.b.S());
        final String strC = c();
        this.b.b(1);
        VideoSDKReport.a().o(false);
        VideoSDKReport.a().e(true);
        VideoSDKReport.a().g(0);
        VideoSDKReport.a().n(this.b.h);
        VideoSDKReport.a().p(this.b.M);
        VideoSDKReport.a().k(this.b.M);
        com.mgtv.downloader.net.entity.a aVar = this.h;
        VideoSDKReport.a().a("", aVar.t, aVar.u, aVar.z);
        VideoSDKReport.a().x(this.b.M);
        VideoSDKReport.a().f(this.b.v);
        VideoSDKReport.a().n(str);
        printStream.println("pvs getSource sendPv sendNewPv");
        VideoSDKReport.a().c();
        VideoSDKReport.a().d();
        this.e = true;
        String supportHDST = MediaCodecHelp.getSupportHDST(BaseApplication.getContext());
        if (!TextUtils.isEmpty(supportHDST)) {
            this.j.put("hdts", supportHDST);
        }
        if (this.b.aL || com.mgtv.thirdsdk.playcore.utils.c.c() == 1) {
            this.j.put("vf", MgtvMediaPlayer.DataSourceInfo.H264);
        }
        this.j.put("src", com.hunantv.imgo.util.b.f() ? "intelmgtv" : "mgtv");
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.aj())) {
            this.j.put("paySupport", com.hunantv.imgo.util.b.aj());
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        com.mgtv.task.g gVar = eVar.d;
        if (gVar != null) {
            eVar.c.a(gVar);
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
        eVar2.d = eVar2.c.b(5000).a(strC, this.j, new ImgoHttpCallBack<PlayerAuthDataEntity>() {
            @Override
            public void b(PlayerAuthDataEntity playerAuthDataEntity) {
            }

            @Override
            public void a(PlayerAuthDataEntity playerAuthDataEntity) {
                String str3;
                if (playerAuthDataEntity != null) {
                    com.hunantv.imgo.log.e.a(c.a, "success-------->result:" + playerAuthDataEntity.toString(), true);
                    c.this.a(playerAuthDataEntity);
                    VideoSDKReport.a().o(playerAuthDataEntity.clipId);
                    VideoSDKReport.a().a(com.hunantv.imgo.b.e.c().b() && p.a() && !c.this.b.aF);
                }
                HttpTraceObject httpTraceObjectE = e();
                com.hunantv.imgo.log.e.b(c.a, "整体-------->" + httpTraceObjectE.getStepDuration(1), true);
                com.hunantv.imgo.log.e.b(c.a, "请求构建-------->" + httpTraceObjectE.getStepDuration(2), true);
                com.hunantv.imgo.log.e.b(c.a, "请求整体执行-------->" + httpTraceObjectE.getStepDuration(3), true);
                com.hunantv.imgo.log.e.b(c.a, "最后一次请求执行-------->" + httpTraceObjectE.getStepDuration(4), true);
                com.hunantv.imgo.log.e.b(c.a, "返回数据解析-------->" + httpTraceObjectE.getStepDuration(5), true);
                List<PlayerAuthRouterEntity> list = playerAuthDataEntity == null ? null : playerAuthDataEntity.videoSources;
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                bVar.b = e().getFinalUrl();
                if (c.this.j.getParams() != null) {
                    str3 = strC + "?" + c.this.j.getParams();
                } else {
                    str3 = null;
                }
                if (list == null || list.size() <= 0) {
                    VideoSDKReport.a().a("102000", str3, true, 200, bVar);
                    ErrorData errorData = new ErrorData();
                    errorData.setMsg("no data");
                    errorData.setUrl(strC);
                    errorData.setParam(c.this.j != null ? c.this.j.buildParameter() : "");
                    errorData.setCode(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NO_RESOUCE);
                    VideoSDKReport.a().a(false, errorData);
                    c.this.b.aJ = true;
                } else {
                    c.this.a(playerAuthDataEntity.user);
                    if (c.this.i != null) {
                        c.this.b.aJ = false;
                        c.this.i.a(1);
                    } else {
                        c.this.b.aJ = true;
                    }
                    VideoSDKReport.a().a("", str3, bVar);
                    VideoSDKReport.a().a(true, (ErrorData) null);
                }
                c.this.a(true);
            }

            @Override
            public void a(PlayerAuthDataEntity playerAuthDataEntity, int i, int i2, String str3, Throwable th) {
                String str4;
                super.a(playerAuthDataEntity, i, i2, str3, th);
                if (playerAuthDataEntity != null) {
                    com.hunantv.imgo.log.e.a(c.a, "failed---------->result:" + playerAuthDataEntity.toString(), true);
                }
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                bVar.b = e().getFinalUrl();
                if (c.this.j.getParams() != null) {
                    str4 = strC + "?" + c.this.j.getParams();
                } else {
                    str4 = null;
                }
                if (a_() == ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                    c.this.a(playerAuthDataEntity);
                    c.this.b.K.a(i).a(str3).a(playerAuthDataEntity).b(c.this.b.h);
                    com.hunantv.imgo.log.e.b(c.a, "code:" + i2 + "; info:" + str3, true);
                    if (i2 == 10023) {
                        VideoSDKReport.a().a(true, bVar);
                        ErrorData errorData = new ErrorData();
                        errorData.setMsg(str3);
                        errorData.setUrl(strC);
                        errorData.setParam(c.this.j == null ? "" : c.this.j.buildParameter());
                        errorData.setCode(i2 + "");
                        VideoSDKReport.a().a(false, errorData);
                        c.this.b.aJ = true;
                        c.this.a(true);
                        return;
                    }
                    if (i2 != 10024 && i2 != 10008) {
                        ErrorData errorData2 = new ErrorData();
                        errorData2.setMsg(str3);
                        errorData2.setUrl(strC);
                        errorData2.setParam(c.this.j == null ? "" : c.this.j.buildParameter());
                        errorData2.setCode(i2 + "");
                        if (i2 == 10022) {
                            VideoSDKReport.a().a(true, bVar);
                            if (!l.a(c.this.b.K.d.videoSources) && c.this.b.l != null && !TextUtils.isEmpty(c.this.b.l.url)) {
                                VideoSDKReport.a().a(true, errorData2);
                            } else {
                                VideoSDKReport.a().a(false, errorData2);
                            }
                            if (c.this.i != null) {
                                c.this.b.aJ = false;
                                c.this.i.a(1);
                            } else {
                                c.this.b.aJ = true;
                            }
                            c.this.a(true);
                            return;
                        }
                        VideoSDKReport.a().a(false, bVar);
                        errorData2.setMsg(str3);
                        errorData2.setUrl(strC);
                        errorData2.setParam(c.this.j == null ? "" : c.this.j.buildParameter());
                        errorData2.setCode(i2 + "");
                        VideoSDKReport.a().a(false, errorData2);
                    } else {
                        VideoSDKReport.a().a(true, bVar);
                        ErrorData errorData3 = new ErrorData();
                        errorData3.setMsg(str3);
                        errorData3.setUrl(strC);
                        errorData3.setParam(c.this.j == null ? "" : c.this.j.buildParameter());
                        errorData3.setCode(i2 + "");
                        VideoSDKReport.a().a(false, errorData3);
                        c.this.b.aJ = true;
                        c.this.a(true);
                        return;
                    }
                } else {
                    VideoSDKReport.a().a(i, str4, th, bVar);
                    ErrorData errorData4 = new ErrorData();
                    errorData4.setMsg(str3);
                    errorData4.setUrl(strC);
                    errorData4.setParam(c.this.j == null ? "" : c.this.j.buildParameter());
                    errorData4.setCode(i2 + "");
                    VideoSDKReport.a().a(false, errorData4);
                }
                c.this.b.aJ = true;
                c.this.a(true);
            }
        });
    }

    public void a(PlayerAuthDataEntity.User user) {
        if (user != null) {
            com.hunantv.imgo.util.b.a(user.isVip);
            com.hunantv.imgo.util.b.g(user.uuid);
            MGTVAdFactory.getInstance().setUuid(user.uuid);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0078  */
    public void a(PlayerAuthDataEntity playerAuthDataEntity) {
        boolean z;
        PlayerAuthDataEntity.User user;
        PlayerAuthDataEntity.User user2;
        this.b.p = playerAuthDataEntity;
        if (playerAuthDataEntity != null) {
            if (!TextUtils.isEmpty(playerAuthDataEntity.videoId) && !"0".equals(playerAuthDataEntity.videoId)) {
                this.b.h = playerAuthDataEntity.videoId;
                com.hunantv.imgo.b.c.a().n = this.b.h;
            }
            com.mgtv.thirdsdk.playcore.e eVar = this.b;
            eVar.j = playerAuthDataEntity.point;
            eVar.k = playerAuthDataEntity.videoName;
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
        List<PlayerAuthRouterEntity> list = eVar2.o;
        if (list == null) {
            eVar2.o = new ArrayList();
        } else {
            list.clear();
        }
        if (playerAuthDataEntity != null && !l.a(playerAuthDataEntity.videoSources)) {
            for (PlayerAuthRouterEntity playerAuthRouterEntity : playerAuthDataEntity.videoSources) {
                if (playerAuthRouterEntity != null) {
                    this.b.o.add(playerAuthRouterEntity);
                }
            }
        }
        com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
        if (playerAuthDataEntity != null && (user2 = playerAuthDataEntity.user) != null) {
            z = user2.isVip == 1;
        }
        eVar3.R = z;
        eVar3.l = a(2, eVar3.o);
        if (playerAuthDataEntity != null && (user = playerAuthDataEntity.user) != null) {
            com.hunantv.imgo.util.b.a(user.isVip);
            com.hunantv.imgo.util.b.g(playerAuthDataEntity.user.uuid);
            MGTVAdFactory.getInstance().setUuid(playerAuthDataEntity.user.uuid);
        }
        VideoSDKReport.a().a(this.b.l);
    }

    private PlayerAuthRouterEntity a(int i, List<PlayerAuthRouterEntity> list) {
        PlayerAuthRouterEntity playerAuthRouterEntity = null;
        if (list != null && list.size() != 0) {
            Collections.sort(list, new Comparator<PlayerAuthRouterEntity>() {
                @Override
                public int compare(PlayerAuthRouterEntity playerAuthRouterEntity2, PlayerAuthRouterEntity playerAuthRouterEntity3) {
                    int i2 = playerAuthRouterEntity2.definition;
                    int i3 = playerAuthRouterEntity3.definition;
                    if (i2 > i3) {
                        return -1;
                    }
                    return i2 == i3 ? 0 : 1;
                }
            });
            for (PlayerAuthRouterEntity playerAuthRouterEntity2 : list) {
                this.b.q.add(Integer.valueOf(playerAuthRouterEntity2.definition));
                this.b.r.add(playerAuthRouterEntity2.name);
                this.b.s.add(new VideoDefinitions(playerAuthRouterEntity2.definition, playerAuthRouterEntity2.needPay));
            }
            playerAuthRouterEntity = i > list.get(0).definition ? list.get(0) : null;
            if (i < list.get(list.size() - 1).definition) {
                playerAuthRouterEntity = list.get(list.size() - 1);
            }
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (i == list.get(i2).definition) {
                    playerAuthRouterEntity = list.get(i2);
                    break;
                }
            }
            for (int i3 = 0; i3 < list.size() - 1; i3++) {
                if (i < list.get(i3).definition) {
                    int i4 = i3 + 1;
                    if (i > list.get(i4).definition) {
                        playerAuthRouterEntity = list.get(i4);
                        break;
                    }
                }
            }
            if (playerAuthRouterEntity != null) {
                this.b.t = playerAuthRouterEntity.definition;
                com.hunantv.imgo.log.e.b(a, "第一次选择的清晰度-------->" + playerAuthRouterEntity.definition, true);
            }
        }
        return playerAuthRouterEntity;
    }
}

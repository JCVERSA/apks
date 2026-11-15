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
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.l;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.s;
import com.hunantv.imgo.util.w;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.helper.MgtvPlayerSupporter;
import com.hunantv.media.widget.IVideoView;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.ssp.R;
import com.mgtv.ssp.play.playsdk.VideoDefinitions;
import com.mgtv.task.http.HttpTraceObject;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import defpackage.hb0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

public class g {
    private static final String a = "g";
    private com.mgtv.thirdsdk.playcore.e b;
    private ImgoHttpParams c;
    private MgtvPlayerView d;
    private com.mgtv.thirdsdk.playcore.c.b e;
    private boolean f;
    private String g;
    private String h = "";
    private com.mgtv.ssp.c i;

    public g(Context context, com.mgtv.thirdsdk.playcore.e eVar, MgtvPlayerView mgtvPlayerView) {
        this.b = eVar;
        this.d = mgtvPlayerView;
    }

    private void c() {
        MgtvPlayerView mgtvPlayerView = this.d;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null) {
            this.d.getVideoPlayer().reset(true);
            this.d.getVideoPlayer().setJustLookDuration(0);
        }
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

    private String d() {
        return com.hunantv.imgo.net.a.b() + "/union/video/source";
    }

    private boolean e() {
        if ("vod".equalsIgnoreCase(this.h)) {
            return com.hunantv.imgo.util.b.af();
        }
        if ("card".equalsIgnoreCase(this.h)) {
            return com.hunantv.imgo.util.b.ah();
        }
        if ("immersion".equalsIgnoreCase(this.h)) {
            return com.hunantv.imgo.util.b.ag();
        }
        if ("detail".equalsIgnoreCase(this.h)) {
            return com.hunantv.imgo.util.b.ai();
        }
        return false;
    }

    private String b(String str) {
        char[] charArray;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str) || (charArray = str.toCharArray()) == null) {
            return "";
        }
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) (charArray[i] ^ 1);
        }
        return new String(charArray);
    }

    public void a(String str) {
        this.h = str;
        com.hunantv.imgo.b.c.a().w = str;
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.e = bVar;
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

    public void b(PlayerAuthDataEntity.User user) {
        if (user != null) {
            com.hunantv.imgo.util.b.a(user.isVip);
            com.hunantv.imgo.util.b.g(user.uuid);
            MGTVAdFactory.getInstance().setUuid(user.uuid);
        }
    }

    public void c(String str) {
        com.mgtv.thirdsdk.playcore.c.b bVar = this.e;
        if (bVar != null) {
            bVar.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP, str);
        }
    }

    private int a(int i) {
        if ("detail".equalsIgnoreCase(this.h) || "card".equalsIgnoreCase(this.h) || "immersion".equalsIgnoreCase(this.h)) {
            return 2;
        }
        return PreferencesUtil.a("video_definition", i);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    public void a(PlayerAuthDataEntity playerAuthDataEntity) {
        boolean z;
        PlayerAuthDataEntity.User user;
        com.mgtv.thirdsdk.playcore.e eVar;
        PlayerAuthRouterEntity playerAuthRouterEntity;
        PlayerAuthDataEntity.User user2;
        this.b.p = playerAuthDataEntity;
        if (playerAuthDataEntity != null) {
            if (!TextUtils.isEmpty(playerAuthDataEntity.videoId) && !"0".equals(playerAuthDataEntity.videoId)) {
                this.b.h = playerAuthDataEntity.videoId;
                com.hunantv.imgo.b.c.a().n = this.b.h;
            }
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.j = playerAuthDataEntity.point;
            eVar2.k = playerAuthDataEntity.videoName;
        }
        com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
        List<PlayerAuthRouterEntity> list = eVar3.o;
        if (list == null) {
            eVar3.o = new ArrayList();
        } else {
            list.clear();
        }
        if (playerAuthDataEntity != null && !l.a(playerAuthDataEntity.videoSources)) {
            for (PlayerAuthRouterEntity playerAuthRouterEntity2 : playerAuthDataEntity.videoSources) {
                if (playerAuthRouterEntity2 != null) {
                    this.b.o.add(playerAuthRouterEntity2);
                }
            }
        }
        int iA = a(2);
        com.mgtv.thirdsdk.playcore.e eVar4 = this.b;
        if (playerAuthDataEntity != null && (user2 = playerAuthDataEntity.user) != null) {
            z = user2.isVip == 1;
        }
        eVar4.R = z;
        if (!"detail".equalsIgnoreCase(this.h) && !"card".equalsIgnoreCase(this.h) && !"immersion".equalsIgnoreCase(this.h)) {
            com.mgtv.thirdsdk.playcore.e eVar5 = this.b;
            eVar5.l = a(iA, eVar5.o);
        } else {
            com.mgtv.thirdsdk.playcore.e eVar6 = this.b;
            eVar6.l = a(iA, eVar6.o);
        }
        if (this.f && (playerAuthRouterEntity = (eVar = this.b).l) != null) {
            eVar.L = playerAuthRouterEntity.disp;
        }
        if (playerAuthDataEntity != null && (user = playerAuthDataEntity.user) != null) {
            com.hunantv.imgo.util.b.a(user.isVip);
            com.hunantv.imgo.util.b.g(playerAuthDataEntity.user.uuid);
            MGTVAdFactory.getInstance().setUuid(playerAuthDataEntity.user.uuid);
        }
        VideoSDKReport.a().a(this.b.l);
    }

    public void a(PlayerAuthDataEntity playerAuthDataEntity, com.hunantv.imgo.net.entity.b bVar) {
        MgtvPlayerView mgtvPlayerView;
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        eVar.v = true;
        eVar.w = playerAuthDataEntity.freeTryTips;
        if (eVar.l != null && (mgtvPlayerView = this.d) != null && mgtvPlayerView.getVideoPlayer() != null) {
            this.d.getVideoPlayer().setJustLookDuration(playerAuthDataEntity.previewTime * 1000);
            com.hunantv.imgo.log.e.a(a, "setJustLookDuration:" + (playerAuthDataEntity.previewTime * 1000), true);
        }
        com.mgtv.thirdsdk.playcore.c.b bVar2 = this.e;
        if (bVar2 != null) {
            bVar2.a(1);
            this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_JUST_LOOK, BaseApplication.getContext().getString(R.string.try_look));
        }
        a(false, bVar);
    }

    public void a(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || this.b.c == null) {
            return;
        }
        c();
        if (e()) {
            this.f = com.mgtv.thirdsdk.config.a.a();
            this.g = com.mgtv.thirdsdk.config.a.b();
        } else {
            this.f = false;
            this.g = "0";
        }
        ImgoHttpParams imgoHttpParams = new ImgoHttpParams(true);
        this.c = imgoHttpParams;
        imgoHttpParams.setMethod(ShareTarget.METHOD_GET);
        String str3 = a;
        com.hunantv.imgo.log.e.a(str3, "getSource-videoId:" + str, true);
        String string = UUID.randomUUID().toString();
        String strA = com.hunantv.imgo.util.f.a(new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA));
        int iA = a(2);
        String strA2 = s.a(string + com.hunantv.imgo.util.b.A() + strA + "sha256" + com.hunantv.imgo.util.b.Q() + str + iA + this.g);
        this.c.put("c", string);
        this.c.put("t", strA);
        this.c.put("fileSourceType", this.g);
        this.c.put(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, Integer.valueOf(iA));
        this.c.put("s", strA2);
        this.c.put("encrypted", "1");
        this.c.put("cxid", com.hunantv.imgo.util.b.A());
        this.c.put(TtmlNode.ATTR_ID, str);
        this.c.put(CmcdConfiguration.KEY_STREAM_TYPE, "sha256");
        this.c.put("openid", com.hunantv.imgo.util.b.R());
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.V())) {
            this.c.put("ch_token", com.hunantv.imgo.util.b.V());
        }
        this.c.put("rtype", com.hunantv.imgo.util.b.S());
        this.c.put("minSpeed", MgtvPlayerSupporter.getMinSpeed());
        this.c.put("maxSpeed", MgtvPlayerSupporter.getMaxSpeed());
        final String strD = d();
        this.b.b(1);
        VideoSDKReport.a().o(false);
        VideoSDKReport.a().e(true);
        VideoSDKReport.a().g(0);
        VideoSDKReport.a().i(this.f);
        VideoSDKReport.a().n(str);
        System.out.println("pvs getSource sendPv sendNewPv");
        VideoSDKReport.a().c();
        VideoSDKReport.a().d();
        String supportHDST = MediaCodecHelp.getSupportHDST(BaseApplication.getContext());
        if (!TextUtils.isEmpty(supportHDST)) {
            this.c.put("hdts", supportHDST);
        }
        if (this.b.aL || com.mgtv.thirdsdk.playcore.utils.c.c() == 1) {
            this.c.put("vf", MgtvMediaPlayer.DataSourceInfo.H264);
        }
        this.c.put("src", com.hunantv.imgo.util.b.f() ? "intelmgtv" : "mgtv");
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.aj())) {
            this.c.put("paySupport", com.hunantv.imgo.util.b.aj());
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        com.mgtv.task.g gVar = eVar.d;
        if (gVar != null) {
            eVar.c.a(gVar);
        }
        com.hunantv.imgo.log.e.a(str3, "getSource-url:" + strD, true);
        com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
        eVar2.d = eVar2.c.b(5000).a(strD, this.c, new ImgoHttpCallBack<PlayerAuthDataEntity>() {
            @Override
            public void b(PlayerAuthDataEntity playerAuthDataEntity) {
            }

            @Override
            public void a(PlayerAuthDataEntity playerAuthDataEntity) {
                String str4;
                if (playerAuthDataEntity != null) {
                    com.hunantv.imgo.log.e.a(g.a, "success-------->result:" + playerAuthDataEntity.toString(), true);
                    g.this.a(playerAuthDataEntity);
                    VideoSDKReport.a().m(playerAuthDataEntity.videoId);
                    VideoSDKReport.a().o(playerAuthDataEntity.clipId);
                    VideoSDKReport.a().a(playerAuthDataEntity);
                    VideoSDKReport.a().a(com.hunantv.imgo.b.e.c().b() && p.a() && !g.this.b.aF);
                }
                HttpTraceObject httpTraceObjectE = e();
                com.hunantv.imgo.log.e.b(g.a, "整体-------->" + httpTraceObjectE.getStepDuration(1), true);
                com.hunantv.imgo.log.e.b(g.a, "请求构建-------->" + httpTraceObjectE.getStepDuration(2), true);
                com.hunantv.imgo.log.e.b(g.a, "请求整体执行-------->" + httpTraceObjectE.getStepDuration(3), true);
                com.hunantv.imgo.log.e.b(g.a, "最后一次请求执行-------->" + httpTraceObjectE.getStepDuration(4), true);
                com.hunantv.imgo.log.e.b(g.a, "返回数据解析-------->" + httpTraceObjectE.getStepDuration(5), true);
                List<PlayerAuthRouterEntity> list = playerAuthDataEntity == null ? null : playerAuthDataEntity.videoSources;
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                bVar.b = e().getFinalUrl();
                if (g.this.c.getParams() != null) {
                    str4 = strD + "?" + g.this.c.getParams();
                } else {
                    str4 = null;
                }
                if (list == null || list.size() <= 0) {
                    if (g.this.e != null) {
                        g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NO_RESOUCE, BaseApplication.getContext().getString(R.string.no_kandan));
                    }
                    VideoSDKReport.a().a("102000", str4, true, 200, bVar);
                    ErrorData errorData = new ErrorData();
                    errorData.setMsg("no data");
                    errorData.setUrl(strD);
                    errorData.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                    errorData.setCode(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NO_RESOUCE);
                    VideoSDKReport.a().a(false, errorData);
                    if (g.this.i != null) {
                        if (playerAuthDataEntity != null) {
                            g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                            return;
                        } else {
                            g.this.i.a(false, "", "");
                            return;
                        }
                    }
                    return;
                }
                if (playerAuthDataEntity.qualityEnhanceFilter == 1) {
                    if (g.this.d != null && g.this.d.getVideoPlayer() != null) {
                        g.this.d.getVideoPlayer().setForceDecodeMode(false);
                        g.this.d.getVideoPlayer().setRenderFilter(IVideoView.RenderFilter.UNSHARP_EDGE);
                    }
                } else if (g.this.d != null && g.this.d.getVideoPlayer() != null) {
                    g.this.d.getVideoPlayer().setForceDecodeMode(false);
                    g.this.d.getVideoPlayer().setRenderFilter(IVideoView.RenderFilter.NORMAL);
                }
                g.this.b(playerAuthDataEntity.user);
                g.this.a(playerAuthDataEntity.user);
                if (g.this.e != null) {
                    g.this.e.a(1);
                    g.this.a(true, bVar);
                    if (g.this.e != null) {
                        g.this.e.b(65536);
                    }
                }
                if (g.this.i != null) {
                    g.this.i.a(true, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                }
                VideoSDKReport.a().a("", str4, bVar);
                VideoSDKReport.a().a(true, (ErrorData) null);
            }

            @Override
            public void a(PlayerAuthDataEntity playerAuthDataEntity, int i, int i2, String str4, Throwable th) {
                String str5;
                super.a(playerAuthDataEntity, i, i2, str4, th);
                if (playerAuthDataEntity != null) {
                    com.hunantv.imgo.log.e.a(g.a, "failed---------->result: " + i, true);
                }
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                bVar.b = e().getFinalUrl();
                if (g.this.c.getParams() != null) {
                    str5 = strD + "?" + g.this.c.getParams();
                } else {
                    str5 = null;
                }
                if (a_() != ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                    if (g.this.e != null) {
                        g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NETWORE_ERROR, str4);
                        com.hunantv.imgo.log.e.b(g.a, "httpStatus:" + i, true);
                    }
                    if (g.this.i != null) {
                        if (playerAuthDataEntity != null) {
                            g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                        } else {
                            g.this.i.a(false, "", "");
                        }
                    }
                    VideoSDKReport.a().a(i, str5, th, bVar);
                    ErrorData errorData = new ErrorData();
                    errorData.setMsg(str4);
                    errorData.setUrl(strD);
                    errorData.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                    errorData.setCode(i2 + "");
                    VideoSDKReport.a().a(false, errorData);
                    return;
                }
                String str6 = playerAuthDataEntity != null ? playerAuthDataEntity.playableErrCode : null;
                if (str6 != null && MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED.equals(str6)) {
                    if (g.this.e != null) {
                        g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED, str4);
                    }
                    VideoSDKReport.a().a(true, bVar);
                    ErrorData errorData2 = new ErrorData();
                    errorData2.setMsg(str4);
                    errorData2.setUrl(strD);
                    errorData2.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                    errorData2.setCode(i2 + "");
                    VideoSDKReport.a().a(false, errorData2);
                    if (g.this.i != null) {
                        if (playerAuthDataEntity != null) {
                            g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                            return;
                        } else {
                            g.this.i.a(false, "", "");
                            return;
                        }
                    }
                    return;
                }
                g.this.a(playerAuthDataEntity);
                VideoSDKReport.a().a(playerAuthDataEntity);
                if (playerAuthDataEntity != null) {
                    g.this.a(playerAuthDataEntity.user);
                }
                g.this.b.K.a(i).a(str4).a(playerAuthDataEntity).b(g.this.b.h);
                com.hunantv.imgo.log.e.b(g.a, "code:" + i2 + "; info:" + str4, true);
                if (i2 == 10023) {
                    if (g.this.e != null) {
                        g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_IP_NOT_PERMITTED, str4);
                    }
                    VideoSDKReport.a().a(true, bVar);
                    ErrorData errorData3 = new ErrorData();
                    errorData3.setMsg(str4);
                    errorData3.setUrl(strD);
                    errorData3.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                    errorData3.setCode(i2 + "");
                    VideoSDKReport.a().a(false, errorData3);
                    if (g.this.i != null) {
                        if (playerAuthDataEntity != null) {
                            g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                            return;
                        } else {
                            g.this.i.a(false, "", "");
                            return;
                        }
                    }
                    return;
                }
                if (i2 == 10024 || i2 == 10008 || i2 == 10021) {
                    if (g.this.e != null) {
                        if (i2 != 10021) {
                            g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_REQUEST_SOURCE_OFFLINE, str4);
                        } else {
                            g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED, str4);
                        }
                    }
                    VideoSDKReport.a().a(true, bVar);
                    ErrorData errorData4 = new ErrorData();
                    errorData4.setMsg(str4);
                    errorData4.setUrl(strD);
                    errorData4.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                    errorData4.setCode(i2 + "");
                    VideoSDKReport.a().a(false, errorData4);
                    if (g.this.i != null) {
                        if (playerAuthDataEntity != null) {
                            g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                            return;
                        } else {
                            g.this.i.a(false, "", "");
                            return;
                        }
                    }
                    return;
                }
                ErrorData errorData5 = new ErrorData();
                errorData5.setMsg(str4);
                errorData5.setUrl(strD);
                errorData5.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                errorData5.setCode(i2 + "");
                if (i2 != 10022) {
                    if (g.this.e != null) {
                        if (i2 == 10001) {
                            g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_TO_MGTV, str4);
                        } else {
                            g.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED, str4);
                        }
                    }
                    VideoSDKReport.a().a(false, bVar);
                    errorData5.setMsg(str4);
                    errorData5.setUrl(strD);
                    errorData5.setParam(g.this.c == null ? "" : g.this.c.buildParameter());
                    errorData5.setCode(i2 + "");
                    VideoSDKReport.a().a(false, errorData5);
                    if (g.this.i != null) {
                        if (playerAuthDataEntity != null) {
                            g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                            return;
                        } else {
                            g.this.i.a(false, "", "");
                            return;
                        }
                    }
                    return;
                }
                VideoSDKReport.a().a(true, bVar);
                if (l.a(g.this.b.K.d.videoSources) || g.this.b.l == null || TextUtils.isEmpty(g.this.b.l.url)) {
                    g.this.c(str4);
                    VideoSDKReport.a().a(false, errorData5);
                } else {
                    g gVar2 = g.this;
                    gVar2.a(gVar2.b.K.d, bVar);
                    VideoSDKReport.a().a(true, errorData5);
                }
                if (g.this.i != null) {
                    if (playerAuthDataEntity != null) {
                        g.this.i.a(false, playerAuthDataEntity.videoId, playerAuthDataEntity.videoName);
                    } else {
                        g.this.i.a(false, "", "");
                    }
                }
            }
        });
    }

    public void a(PlayerAuthDataEntity.User user) {
        com.mgtv.thirdsdk.playcore.c.b bVar;
        if (user == null || "00000".equalsIgnoreCase(user.pstatus) || (bVar = this.e) == null) {
            return;
        }
        bVar.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_OUTPUT, user.pstatus);
    }

    public void a() {
        this.b.t = a(2);
        this.b.q.clear();
        this.b.r.clear();
        this.b.s.clear();
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        eVar.h = "";
        eVar.k = "";
        eVar.p = null;
        eVar.j = null;
        eVar.o = null;
        eVar.l = null;
        eVar.R = false;
        eVar.ae = false;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0058  */
    public void a(boolean z, com.hunantv.imgo.net.entity.b bVar) {
        String str;
        int i;
        String str2;
        String str3;
        PlayerRealUrlEntity playerRealUrlEntity;
        PlayerRealUrlEntity playerRealUrlEntity2 = this.b.L;
        if (playerRealUrlEntity2 != null && (str = playerRealUrlEntity2.status) != null && str.equals(PlayerRealUrlEntity.OK)) {
            if (this.f) {
                PlayerAuthRouterEntity playerAuthRouterEntity = this.b.l;
                if (playerAuthRouterEntity != null) {
                    if (playerAuthRouterEntity.fileSourceType != 2 || TextUtils.isEmpty(playerAuthRouterEntity.m3u8)) {
                        PlayerAuthRouterEntity playerAuthRouterEntity2 = this.b.l;
                        if (playerAuthRouterEntity2.fileSourceType == 2 && TextUtils.isEmpty(playerAuthRouterEntity2.m3u8)) {
                            com.mgtv.thirdsdk.playcore.e eVar = this.b;
                            PlayerRealUrlEntity playerRealUrlEntity3 = eVar.l.disp;
                            if (playerRealUrlEntity3 != null) {
                                eVar.L = playerRealUrlEntity3;
                                String str4 = playerRealUrlEntity3.status;
                                if (str4 != null && playerRealUrlEntity3.info != null && str4.equals(PlayerRealUrlEntity.OK)) {
                                    i = 1;
                                }
                            }
                            i = 0;
                        } else {
                            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
                            PlayerAuthRouterEntity playerAuthRouterEntity3 = eVar2.l;
                            if (playerAuthRouterEntity3.fileSourceType == 1 && (playerRealUrlEntity = playerAuthRouterEntity3.disp) != null) {
                                eVar2.L = playerRealUrlEntity;
                                String str5 = playerRealUrlEntity.status;
                                if (str5 != null && playerRealUrlEntity.info != null && str5.equals(PlayerRealUrlEntity.OK)) {
                                    i = 1;
                                }
                            }
                            i = 0;
                        }
                    } else {
                        i = 2;
                    }
                    this.b.l.fileSourceType = i;
                } else {
                    i = 0;
                }
                com.hunantv.imgo.util.b.c(i);
                com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
                eVar3.aK = false;
                if (i == 0) {
                    eVar3.aK = false;
                    com.mgtv.thirdsdk.playcore.c.b bVar2 = this.e;
                    if (bVar2 != null) {
                        bVar2.a(2);
                        return;
                    }
                    return;
                }
                eVar3.y = eVar3.x;
                eVar3.A = eVar3.z;
                eVar3.x = 0;
                HashMap map = new HashMap();
                map.put(DownloadFacadeEnum.USER_DID, b(com.hunantv.imgo.util.b.t()));
                map.put("suuid", com.hunantv.imgo.b.c.a().f);
                PlayerRealUrlEntity playerRealUrlEntity4 = this.b.L;
                if (playerRealUrlEntity4 != null && (str3 = playerRealUrlEntity4.info) != null) {
                    this.b.M = com.mgtv.thirdsdk.playcore.c.a.c(w.a(str3, map));
                }
                VideoSDKReport.a().n(true);
                VideoSDKReport.a().a(this.b.aC, bVar);
                if (this.b.L != null) {
                    VideoSDKReport.a().a(this.b.L);
                }
                PlayerAuthRouterEntity playerAuthRouterEntity4 = this.b.l;
                if (playerAuthRouterEntity4 != null) {
                    str2 = playerAuthRouterEntity4.m3u8;
                } else {
                    str2 = "";
                }
                if (TextUtils.isEmpty(str2)) {
                    this.b.au = false;
                } else {
                    this.b.au = true;
                }
                if (z) {
                    this.b.aw = com.mgtv.thirdsdk.config.a.c();
                    com.mgtv.thirdsdk.playcore.e eVar4 = this.b;
                    if (!eVar4.aw) {
                        eVar4.f();
                    }
                } else {
                    this.b.f();
                }
                com.mgtv.thirdsdk.playcore.c.b bVar3 = this.e;
                if (bVar3 != null) {
                    this.b.aK = true;
                    bVar3.a(3);
                    return;
                }
                return;
            }
            com.mgtv.thirdsdk.playcore.c.b bVar4 = this.e;
            if (bVar4 != null) {
                this.b.aK = false;
                bVar4.a(2);
                return;
            }
            return;
        }
        com.mgtv.thirdsdk.playcore.c.b bVar5 = this.e;
        if (bVar5 != null) {
            this.b.aK = false;
            bVar5.a(2);
        }
    }

    public void a(com.mgtv.ssp.c cVar) {
        this.i = cVar;
    }
}

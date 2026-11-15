package com.mgtv.thirdsdk.playcore.e;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.net.LiveHttpParams;
import com.hunantv.imgo.net.entity.LiveItemSourceEntity;
import com.hunantv.imgo.net.entity.LiveSourceEntity;
import com.hunantv.imgo.util.s;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import defpackage.hb0;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

public class a {
    private static final String c = "a";
    public com.mgtv.thirdsdk.playcore.e a;
    private ImgoHttpParams d;
    private com.mgtv.thirdsdk.playcore.c.b e;
    private MgtvPlayerView f;
    private String g;
    private String h = "live";
    public String b = com.hunantv.imgo.util.b.y();

    public a(Context context, com.mgtv.thirdsdk.playcore.e eVar, MgtvPlayerView mgtvPlayerView) {
        this.a = eVar;
        this.f = mgtvPlayerView;
    }

    private String d() {
        return "https://clp.bz.mgtv.com/union/live/source";
    }

    public int e() {
        return com.mgtv.thirdsdk.playcore.utils.c.c(3);
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.e = bVar;
    }

    public void b() {
        MgtvPlayerView mgtvPlayerView = this.f;
        if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
            return;
        }
        this.f.getVideoPlayer().reset(true);
        this.f.getVideoPlayer().setJustLookDuration(0);
    }

    public void a() {
        com.hunantv.imgo.b.c.a().w = this.h;
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.a;
        if (eVar.c == null) {
            return;
        }
        eVar.g();
        b();
        LiveHttpParams liveHttpParams = new LiveHttpParams();
        this.d = liveHttpParams;
        liveHttpParams.setMethod(ShareTarget.METHOD_GET);
        this.g = str;
        this.d.put("liveId", str);
        String supportHDST = MediaCodecHelp.getSupportHDST(BaseApplication.getContext());
        if (!TextUtils.isEmpty(supportHDST)) {
            this.d.put("hdts", supportHDST);
        }
        String string = UUID.randomUUID().toString();
        String strA = com.hunantv.imgo.util.f.a(new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA));
        this.d.put("c", string);
        this.d.put("t", strA);
        this.d.put(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, Integer.valueOf(e()));
        this.d.put("encrypted", "1");
        this.d.put("cxid", com.hunantv.imgo.util.b.A());
        this.d.put("vcode", str);
        this.d.put(CmcdConfiguration.KEY_STREAM_TYPE, "sha256");
        this.d.put("openid", com.hunantv.imgo.util.b.R());
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.V())) {
            this.d.put("ch_token", com.hunantv.imgo.util.b.V());
        }
        this.d.put("rtype", com.hunantv.imgo.util.b.S());
        com.mgtv.thirdsdk.playcore.e eVar2 = this.a;
        com.mgtv.task.g gVar = eVar2.g;
        if (gVar != null) {
            eVar2.c.a(gVar);
        }
        try {
            this.d.put("sign", s.a(this.d.getParams(), com.hunantv.imgo.util.b.Q() == null ? "" : com.hunantv.imgo.util.b.Q()));
        } catch (Throwable unused) {
        }
        final String strD = d();
        com.hunantv.imgo.log.e.a(c, "getSource-liveId:" + str, true);
        com.hunantv.imgo.util.b.a(0);
        com.mgtv.thirdsdk.playcore.e eVar3 = this.a;
        eVar3.g = eVar3.c.b(5000).a(strD, this.d, new ImgoHttpCallBack<LiveSourceEntity>() {
            @Override
            public void b(LiveSourceEntity liveSourceEntity) {
            }

            @Override
            public void a(LiveSourceEntity liveSourceEntity) {
                String str3;
                LiveItemSourceEntity liveItemSourceEntity;
                String finalUrl = e() != null ? e().getFinalUrl() : "https://clp.bz.mgtv.com/union/live/source";
                if (liveSourceEntity != null) {
                    com.hunantv.imgo.log.e.a(a.c, "success-------->result:" + liveSourceEntity.toString(), true);
                    a.this.a(liveSourceEntity);
                }
                a aVar = a.this;
                com.mgtv.thirdsdk.playcore.e eVar4 = aVar.a;
                if (eVar4.ai) {
                    if (eVar4.aj == null || (liveItemSourceEntity = eVar4.al) == null || TextUtils.isEmpty(liveItemSourceEntity.url)) {
                        if (a.this.e != null) {
                            a.this.e.a(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILED_NEEDVIP, "需要会员权限");
                            return;
                        }
                        com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                        bVar.a = e().getStepDuration(1);
                        bVar.b = e().getFinalUrl();
                        VideoSDKReport.a().a(false, bVar);
                        ErrorData errorData = new ErrorData();
                        errorData.setMsg("need vip");
                        errorData.setUrl(strD);
                        errorData.setParam(a.this.d != null ? a.this.d.buildParameter() : "");
                        errorData.setCode(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILED_NEEDVIP);
                        VideoSDKReport.a().a(false, errorData);
                    }
                    if (liveSourceEntity != null) {
                        VideoSDKReport.a().e(liveSourceEntity.cameraId);
                        VideoSDKReport.a().d(liveSourceEntity.activityId);
                    }
                    VideoSDKReport.a().f(a.this.a.am);
                    VideoSDKReport.a().a(finalUrl, a.this.a.am);
                    VideoSDKReport.a().b(finalUrl, a.this.a.am);
                    if (a.this.e != null) {
                        a.this.e.a(9);
                        return;
                    }
                    return;
                }
                if ((eVar4.aj == null || eVar4.al == null) && aVar.e != null) {
                    a.this.e.a(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_ERROR_NO_SOURCE, "");
                }
                if (liveSourceEntity != null) {
                    VideoSDKReport.a().e(liveSourceEntity.cameraId);
                    VideoSDKReport.a().d(liveSourceEntity.activityId);
                }
                VideoSDKReport.a().f(a.this.a.am);
                VideoSDKReport.a().a(finalUrl, a.this.a.am);
                VideoSDKReport.a().b(finalUrl, a.this.a.am);
                if (a.this.e != null) {
                    a.this.e.a(1);
                }
                if (a.this.e != null) {
                    a.this.e.b(65536);
                }
                com.hunantv.imgo.net.entity.b bVar2 = new com.hunantv.imgo.net.entity.b();
                bVar2.a = e().getStepDuration(1);
                bVar2.b = e().getFinalUrl();
                if (a.this.d.getParams() != null) {
                    str3 = strD + "?" + a.this.d.getParams();
                } else {
                    str3 = null;
                }
                VideoSDKReport.a().a("", str3, bVar2);
                VideoSDKReport.a().a(true, (ErrorData) null);
            }

            @Override
            public void a(LiveSourceEntity liveSourceEntity, int i, int i2, String str3, Throwable th) {
                String str4;
                int i3;
                int i4;
                super.a(liveSourceEntity, i, i2, str3, th);
                if (liveSourceEntity != null) {
                    com.hunantv.imgo.log.e.a(a.c, "failed-------->result:" + liveSourceEntity.toString(), true);
                    str4 = liveSourceEntity.playableErrCode;
                } else {
                    str4 = null;
                }
                String str5 = str4;
                ErrorData errorData = new ErrorData();
                errorData.setMsg(str3);
                errorData.setUrl(strD);
                errorData.setParam(a.this.d == null ? "" : a.this.d.buildParameter());
                errorData.setCode(i2 + "");
                com.hunantv.imgo.log.e.b(a.c, "code:" + i2 + "; info:" + str3, true);
                a aVar = a.this;
                if (aVar.a.ai) {
                    if (i2 == 2040202 || i2 == 2040331 || i2 == 2040332 || i2 == 2040353 || i2 == 2040352) {
                        if (aVar.e != null) {
                            a.this.e.a(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILED_NEEDVIP, "需要会员权限");
                        }
                    } else if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED.equals(str5)) {
                        if (a.this.e != null) {
                            a.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED, "版权受限");
                        }
                    } else if (a.this.e != null) {
                        a.this.e.a(MgtvPlayerConstants.ErrorCode.LIVE_CHANGEDEFINITION_FAILEd, "切换清晰度失败");
                    }
                    VideoSDKReport.a().a(false, errorData);
                    return;
                }
                String finalUrl = e() != null ? e().getFinalUrl() : "https://clp.bz.mgtv.com/union/live/source";
                if (a_() != ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                    i3 = 2040331;
                    i4 = 2040202;
                    if (a_() == ImgoHttpCallBack.ErrorType.PARSE_ERROR) {
                        VideoSDKReport.a().a(finalUrl, a.this.e(), 102000, th);
                    } else {
                        VideoSDKReport.a().a(i, finalUrl, true, th, a.this.e());
                    }
                } else if (i2 == 2040363) {
                    VideoSDKReport.a().a(finalUrl, a.this.e());
                    i4 = 2040202;
                    i3 = 2040331;
                    VideoSDKReport.a().a(finalUrl, a.this.e(), i2, str3, th);
                } else {
                    i3 = 2040331;
                    i4 = 2040202;
                    if (i2 == 2040202) {
                        VideoSDKReport.a().a(finalUrl, a.this.e(), 105000, th);
                    } else {
                        VideoSDKReport.a().a(finalUrl, a.this.e(), i2, th);
                    }
                }
                if (i2 == i4 || i2 == i3 || i2 == 2040332 || i2 == 2040353 || i2 == 2040352) {
                    if (a.this.e != null) {
                        a.this.e.a(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_VIP, "需要会员权限");
                    }
                } else if (str5 == null || !MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED.equals(str5)) {
                    if (a.this.e != null) {
                        a.this.e.a(MgtvPlayerConstants.ErrorCode.LIVE_PLAY_ERROR_NO_SOURCE, "无可用源");
                    }
                } else if (a.this.e != null) {
                    a.this.e.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED, "版权受限");
                }
                VideoSDKReport.a().a(false, errorData);
            }
        });
        VideoSDKReport.a().o(false);
        VideoSDKReport.a().e(true);
        VideoSDKReport.a().g(0);
        VideoSDKReport.a().i(false);
        VideoSDKReport.a().n(str);
        VideoSDKReport.a().c();
        VideoSDKReport.a().d();
    }

    public void a(LiveSourceEntity liveSourceEntity) {
        if (liveSourceEntity != null) {
            com.mgtv.thirdsdk.playcore.e eVar = this.a;
            eVar.aj = liveSourceEntity;
            eVar.ak = liveSourceEntity.sources;
            eVar.h = liveSourceEntity.cameraId;
            eVar.al = a(liveSourceEntity, e());
            com.mgtv.thirdsdk.playcore.e eVar2 = this.a;
            LiveItemSourceEntity liveItemSourceEntity = eVar2.al;
            if (liveItemSourceEntity != null) {
                eVar2.am = liveItemSourceEntity.definition;
                com.hunantv.imgo.log.e.a(c, "currentDefinition:" + this.a.t, true);
            }
            com.mgtv.thirdsdk.playcore.e eVar3 = this.a;
            eVar3.an = liveSourceEntity.cameraId;
            LiveSourceEntity.User user = liveSourceEntity.user;
            boolean z = user != null && user.isVip == 1;
            eVar3.R = z;
            com.hunantv.imgo.util.b.a(z ? user.isVip : 0);
        }
    }

    public LiveItemSourceEntity a(LiveSourceEntity liveSourceEntity, int i) {
        List<LiveItemSourceEntity> list;
        LiveItemSourceEntity liveItemSourceEntity = null;
        if (liveSourceEntity == null || (list = liveSourceEntity.sources) == null || list.isEmpty()) {
            return null;
        }
        for (LiveItemSourceEntity liveItemSourceEntity2 : liveSourceEntity.sources) {
            if (!TextUtils.isEmpty(liveItemSourceEntity2.url)) {
                liveItemSourceEntity = liveItemSourceEntity2;
            }
            if (liveItemSourceEntity2.definition == i && !TextUtils.isEmpty(liveItemSourceEntity2.url)) {
                liveItemSourceEntity = liveItemSourceEntity2;
            }
            if (!TextUtils.isEmpty(liveItemSourceEntity2.name)) {
                this.a.r.add(liveItemSourceEntity2.name);
            }
            this.a.q.add(Integer.valueOf(liveItemSourceEntity2.definition));
        }
        return liveItemSourceEntity == null ? liveSourceEntity.sources.get(0) : liveItemSourceEntity;
    }
}

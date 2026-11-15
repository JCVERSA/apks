package com.mgtv.thirdsdk.playcore.e;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.w;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.task.http.HttpParams;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.List;

public class h {
    private Context a;
    private com.mgtv.thirdsdk.playcore.e b;
    private com.mgtv.thirdsdk.playcore.c.b c;
    private MgtvPlayerView d;

    public h(Context context, com.mgtv.thirdsdk.playcore.e eVar, MgtvPlayerView mgtvPlayerView) {
        this.a = context;
        this.b = eVar;
        this.d = mgtvPlayerView;
    }

    private String e() {
        List<String> list;
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        PlayerAuthDataEntity playerAuthDataEntity = eVar.p;
        if (playerAuthDataEntity == null || (list = playerAuthDataEntity.videoDomains) == null || eVar.l == null) {
            return "";
        }
        if (eVar.x < list.size()) {
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.z = eVar2.p.videoDomains.get(eVar2.x);
        } else {
            String str = this.b.A;
            if (str != null && !str.isEmpty()) {
                com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
                eVar3.z = eVar3.A;
            }
        }
        com.mgtv.thirdsdk.playcore.e eVar4 = this.b;
        VideoSDKReport videoSDKReport = eVar4.b;
        if (videoSDKReport != null) {
            videoSDKReport.y(eVar4.z);
            com.mgtv.thirdsdk.playcore.e eVar5 = this.b;
            eVar5.b.f(eVar5.l.definition);
        }
        com.mgtv.thirdsdk.playcore.e eVar6 = this.b;
        return a(eVar6.z, eVar6.l);
    }

    public void b() {
        String str;
        PlayerAuthRouterEntity playerAuthRouterEntity = this.b.l;
        if (playerAuthRouterEntity != null && (str = playerAuthRouterEntity.url) != null && !str.trim().equals("")) {
            com.mgtv.thirdsdk.playcore.e eVar = this.b;
            eVar.W = false;
            eVar.X = false;
            System.out.println("isVideoPrepare getPlayUrl " + this.b.X);
            c();
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
        PlayerAuthRouterEntity playerAuthRouterEntity2 = eVar2.l;
        if (playerAuthRouterEntity2 == null || playerAuthRouterEntity2.needPay != 1) {
            com.mgtv.thirdsdk.playcore.c.b bVar = this.c;
            if (bVar != null) {
                bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_URL, "出错了");
                return;
            }
            return;
        }
        if (eVar2.e()) {
            a();
            return;
        }
        com.mgtv.thirdsdk.playcore.c.b bVar2 = this.c;
        if (bVar2 != null) {
            bVar2.a(MgtvPlayerConstants.ErrorCode.ERROR_URL, "出错了");
        }
    }

    public void c() {
        List<String> list;
        PlayerAuthRouterEntity playerAuthRouterEntity = this.b.l;
        if (playerAuthRouterEntity == null || TextUtils.isEmpty(playerAuthRouterEntity.url)) {
            com.mgtv.thirdsdk.playcore.c.b bVar = this.c;
            if (bVar != null) {
                bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_URL, "出错了");
                return;
            }
            return;
        }
        PlayerAuthDataEntity playerAuthDataEntity = this.b.p;
        if (playerAuthDataEntity == null || (list = playerAuthDataEntity.videoDomains) == null || list.isEmpty()) {
            com.mgtv.thirdsdk.playcore.c.b bVar2 = this.c;
            if (bVar2 != null) {
                bVar2.a(MgtvPlayerConstants.ErrorCode.ERROR_URL, "出错了");
                return;
            }
            return;
        }
        if (!p.b()) {
            com.mgtv.thirdsdk.playcore.c.b bVar3 = this.c;
            if (bVar3 != null) {
                bVar3.a(MgtvPlayerConstants.ErrorCode.ERROR_URL_NETWOR, "当前无可用网络，请连接后重试");
                return;
            }
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        eVar.W = false;
        eVar.X = false;
        System.out.println("isVideoPrepare handlerUrl " + this.b.X);
        d();
    }

    public void d() {
        this.b.b(5);
        String strE = e();
        VideoSDKReport videoSDKReport = this.b.b;
        if (videoSDKReport != null) {
            videoSDKReport.m(false);
        }
        HttpParams httpParams = new HttpParams();
        httpParams.put("suuid", com.hunantv.imgo.b.c.a().f);
        String strB = com.mgtv.thirdsdk.playcore.c.a.b(w.a(strE, httpParams.getParams(HttpParams.Type.GET)));
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        PlayerAuthRouterEntity playerAuthRouterEntity = eVar.l;
        if (playerAuthRouterEntity != null) {
            playerAuthRouterEntity.m3u8 = null;
            playerAuthRouterEntity.disp = null;
        }
        com.mgtv.task.g gVar = eVar.e;
        if (gVar != null) {
            eVar.c.a(gVar);
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
        eVar2.e = eVar2.c.a(true).a(strB, new ImgoHttpParams(), new ImgoHttpCallBack<PlayerRealUrlEntity>() {
            @Override
            public void b(PlayerRealUrlEntity playerRealUrlEntity) {
            }

            @Override
            public void a(PlayerRealUrlEntity playerRealUrlEntity) {
                String str;
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                bVar.b = e().getUrl();
                h.this.b.L = playerRealUrlEntity;
                HashMap map = new HashMap();
                map.put("suuid", com.hunantv.imgo.b.c.a().f);
                if (playerRealUrlEntity != null && (str = playerRealUrlEntity.info) != null) {
                    h.this.b.M = com.mgtv.thirdsdk.playcore.c.a.c(w.a(str, map));
                }
                if (playerRealUrlEntity == null) {
                    if (h.this.b.b != null) {
                        h.this.b.b.a("204000", bVar);
                    }
                } else if (playerRealUrlEntity.info == null || PlayerRealUrlEntity.OK.equals(playerRealUrlEntity.status)) {
                    if (h.this.b.b != null) {
                        h.this.b.b.n(true);
                        h.this.b.b.a(h.this.b.aC, bVar);
                        h.this.b.b.a(h.this.b.L);
                    }
                } else if (h.this.b.b != null) {
                    h.this.b.b.a("204000", bVar);
                }
                h.this.a(bVar);
            }

            @Override
            public void a(PlayerRealUrlEntity playerRealUrlEntity, int i, int i2, String str, Throwable th) {
                super.a(playerRealUrlEntity, i, i2, str, th);
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                bVar.c = e().getResponse();
                if (a_() == ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                    if (h.this.b.b != null) {
                        h.this.b.b.b(i, str, th, bVar);
                        return;
                    }
                    return;
                }
                h.this.b.A = null;
                String str2 = "201" + String.valueOf(i);
                if (th != null) {
                    if (th instanceof SocketTimeoutException) {
                        str2 = "203000";
                    } else if (th instanceof HttpFormatException) {
                        str2 = "202000";
                    }
                }
                h.this.a(str2, "", i, th, bVar);
            }
        });
    }

    public void a() {
        b();
    }

    public void a(com.hunantv.imgo.net.entity.b bVar) {
        PlayerRealUrlEntity playerRealUrlEntity = this.b.L;
        if (playerRealUrlEntity == null) {
            com.mgtv.thirdsdk.playcore.c.b bVar2 = this.c;
            if (bVar2 != null) {
                bVar2.a(MgtvPlayerConstants.ErrorCode.ERROR_URL, "出错了");
                return;
            }
            return;
        }
        String str = playerRealUrlEntity.status;
        if (str != null && str.equals(PlayerRealUrlEntity.OK)) {
            try {
                com.mgtv.thirdsdk.playcore.e eVar = this.b;
                eVar.y = eVar.x;
                eVar.A = eVar.z;
                eVar.x = 0;
                int i = eVar.P;
                int i2 = eVar.Q;
                if (i <= i2) {
                    if (i == i2) {
                        eVar.N = eVar.M;
                    } else if (!eVar.aw) {
                        eVar.f();
                    }
                    com.mgtv.thirdsdk.playcore.c.b bVar3 = this.c;
                    if (bVar3 != null) {
                        bVar3.a(3);
                    }
                    com.mgtv.thirdsdk.playcore.c.b bVar4 = this.c;
                    if (bVar4 != null) {
                        bVar4.b(MgtvPlayerConstants.Success.SUCCESS_URL);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                a(MgtvPlayerConstants.ECODE_CDN2_EXCEPTION, "errmsg=" + e.getMessage(), 200, null, bVar);
                return;
            }
        }
        a(MgtvPlayerConstants.ECODE_CDN2_INVALID_ENTITY, "", 200, null, bVar);
    }

    public void a(String str, String str2, int i, Throwable th, com.hunantv.imgo.net.entity.b bVar) {
        com.mgtv.thirdsdk.playcore.e eVar = this.b;
        eVar.A = null;
        int iMin = Math.min(2, eVar.a().size() - 1);
        VideoSDKReport videoSDKReport = this.b.b;
        if (videoSDKReport != null) {
            videoSDKReport.g(3);
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
        int i2 = eVar2.x;
        if (i2 < iMin) {
            eVar2.x = i2 + 1;
            VideoSDKReport videoSDKReport2 = eVar2.b;
            if (videoSDKReport2 != null) {
                videoSDKReport2.b(str, str2, i, bVar);
            }
            c();
            return;
        }
        if (i2 == iMin || iMin == -1) {
            eVar2.y = i2;
            VideoSDKReport videoSDKReport3 = eVar2.b;
            if (videoSDKReport3 != null) {
                videoSDKReport3.a(str, str2, i, bVar);
            }
            if (i != 200) {
                com.mgtv.thirdsdk.playcore.c.b bVar2 = this.c;
                if (bVar2 != null) {
                    bVar2.a(MgtvPlayerConstants.ErrorCode.ERROR_URL_NETWOR, str);
                    return;
                }
                return;
            }
            com.mgtv.thirdsdk.playcore.c.b bVar3 = this.c;
            if (bVar3 != null) {
                bVar3.a(MgtvPlayerConstants.ErrorCode.ERROR_URL, "出错了");
            }
        }
    }

    public String a(String str, PlayerAuthRouterEntity playerAuthRouterEntity) {
        return str + playerAuthRouterEntity.url + this.b.B;
    }

    public void a(boolean z, PlayerAuthRouterEntity playerAuthRouterEntity) {
        PlayerAuthRouterEntity playerAuthRouterEntity2 = this.b.l;
        if (playerAuthRouterEntity != null) {
            if (playerAuthRouterEntity2 == null || playerAuthRouterEntity2.definition != playerAuthRouterEntity.definition) {
                String str = playerAuthRouterEntity.url;
                if ((str == null || str.trim().equals("")) && playerAuthRouterEntity.needPay == 1) {
                    MgtvPlayerView mgtvPlayerView = this.d;
                    if (mgtvPlayerView == null || mgtvPlayerView.getVideoPlayer() == null) {
                        return;
                    }
                    this.d.getVideoPlayer().pause();
                    com.mgtv.thirdsdk.playcore.c.b bVar = this.c;
                    if (bVar != null) {
                        bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINATION_VIP, "需付费清晰度");
                        return;
                    }
                    return;
                }
                VideoSDKReport videoSDKReport = this.b.b;
                if (videoSDKReport != null) {
                    videoSDKReport.f(playerAuthRouterEntity.definition);
                    this.b.b.a(playerAuthRouterEntity);
                    this.b.b.g(1);
                    this.b.b.l(true);
                }
                this.b.h();
                com.mgtv.thirdsdk.playcore.e eVar = this.b;
                eVar.l = playerAuthRouterEntity;
                int i = playerAuthRouterEntity.definition;
                eVar.t = i;
                com.mgtv.thirdsdk.playcore.utils.c.d(i);
                this.d.getVideoPlayer().reset(true);
                this.b.S = false;
                this.d.getVideoPlayer().pause();
                this.d.getVideoPlayer().setIsChangeDefinition(true);
                this.b.x = 0;
                if (z) {
                    a(true);
                } else {
                    c();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    public void a(boolean z) {
        String str;
        int i;
        String str2;
        String str3;
        PlayerRealUrlEntity playerRealUrlEntity;
        PlayerRealUrlEntity playerRealUrlEntity2 = this.b.L;
        if (playerRealUrlEntity2 != null && (str = playerRealUrlEntity2.status) != null && str.equals(PlayerRealUrlEntity.OK)) {
            PlayerAuthRouterEntity playerAuthRouterEntity = this.b.l;
            if (playerAuthRouterEntity != null) {
                i = 2;
                if (playerAuthRouterEntity.fileSourceType != 2 || TextUtils.isEmpty(playerAuthRouterEntity.m3u8)) {
                    com.mgtv.thirdsdk.playcore.e eVar = this.b;
                    PlayerAuthRouterEntity playerAuthRouterEntity2 = eVar.l;
                    if (playerAuthRouterEntity2.fileSourceType != 1 || (playerRealUrlEntity = playerAuthRouterEntity2.disp) == null) {
                        i = 0;
                    } else {
                        eVar.L = playerRealUrlEntity;
                        String str4 = playerRealUrlEntity.status;
                        if (str4 == null || playerRealUrlEntity.info == null || !str4.equals(PlayerRealUrlEntity.OK)) {
                            i = 0;
                        } else {
                            i = 1;
                        }
                    }
                }
                this.b.l.fileSourceType = i;
            } else {
                i = 0;
            }
            com.hunantv.imgo.util.b.c(i);
            if (i == 0) {
                c();
                return;
            }
            com.mgtv.thirdsdk.playcore.e eVar2 = this.b;
            eVar2.y = eVar2.x;
            eVar2.A = eVar2.z;
            eVar2.x = 0;
            HashMap map = new HashMap();
            map.put(DownloadFacadeEnum.USER_DID, a(com.hunantv.imgo.util.b.t()));
            map.put("suuid", com.hunantv.imgo.b.c.a().f);
            PlayerRealUrlEntity playerRealUrlEntity3 = this.b.L;
            if (playerRealUrlEntity3 != null && (str3 = playerRealUrlEntity3.info) != null) {
                this.b.M = com.mgtv.thirdsdk.playcore.c.a.c(w.a(str3, map));
            }
            VideoSDKReport.a().a(this.b.L);
            PlayerAuthRouterEntity playerAuthRouterEntity3 = this.b.l;
            if (playerAuthRouterEntity3 != null) {
                str2 = playerAuthRouterEntity3.m3u8;
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
                com.mgtv.thirdsdk.playcore.e eVar3 = this.b;
                if (!eVar3.aw) {
                    eVar3.f();
                }
            } else {
                this.b.f();
            }
            com.mgtv.thirdsdk.playcore.c.b bVar = this.c;
            if (bVar != null) {
                bVar.a(3);
                return;
            }
            return;
        }
        c();
    }

    private String a(String str) {
        char[] charArray;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str) || (charArray = str.toCharArray()) == null) {
            return "";
        }
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) (charArray[i] ^ 1);
        }
        return new String(charArray);
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.c = bVar;
    }
}

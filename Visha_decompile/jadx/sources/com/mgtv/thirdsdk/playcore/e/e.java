package com.mgtv.thirdsdk.playcore.e;

import android.content.Context;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.w;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.ssp.R;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.task.http.HttpParams;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.List;

public class e {
    private static final String a = "e";
    private MgtvPlayerView b;
    private Context c;
    private com.mgtv.thirdsdk.playcore.e d;
    private com.mgtv.thirdsdk.playcore.c.b e;

    public e(MgtvPlayerView mgtvPlayerView, Context context, com.mgtv.thirdsdk.playcore.e eVar) {
        this.b = mgtvPlayerView;
        this.c = context;
        this.d = eVar;
    }

    private void d() {
        if (!this.d.J) {
            e();
            this.d.J = false;
        }
        if (this.d != null) {
            VideoSDKReport.a().n(true);
            if (this.d.l != null) {
                VideoSDKReport.a().f(this.d.l.definition);
            }
            VideoSDKReport.a().a(this.d.l);
            VideoSDKReport.a().a(this.d.L);
            VideoSDKReport.a().l(true);
            VideoSDKReport.a().c(900, 0);
        }
    }

    private void e() {
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        if (eVar.m != null) {
            eVar.P = eVar.E;
            VideoSDKReport.a().g(4);
            a();
            this.d.J = true;
        }
    }

    private void b(PlayerAuthRouterEntity playerAuthRouterEntity) {
        String str;
        List<String> list;
        if (playerAuthRouterEntity == null || (str = playerAuthRouterEntity.url) == null || str.equals("")) {
            b();
            com.mgtv.thirdsdk.playcore.c.b bVar = this.e;
            if (bVar != null) {
                bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_NOT_EXIST, this.c.getResources().getString(R.string.chang_definition_failed));
                return;
            }
            return;
        }
        PlayerAuthDataEntity playerAuthDataEntity = this.d.p;
        if (playerAuthDataEntity != null && (list = playerAuthDataEntity.videoDomains) != null && !list.isEmpty()) {
            c(playerAuthRouterEntity);
            return;
        }
        b();
        com.mgtv.thirdsdk.playcore.c.b bVar2 = this.e;
        if (bVar2 != null) {
            bVar2.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_SERVICE, this.c.getResources().getString(R.string.chang_definition_failed));
        }
    }

    private void c(final PlayerAuthRouterEntity playerAuthRouterEntity) {
        String strD = d(playerAuthRouterEntity);
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        com.mgtv.task.g gVar = eVar.f;
        if (gVar != null) {
            eVar.c.a(gVar);
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.d;
        eVar2.f = eVar2.c.a(true).a(strD, new HttpParams(), new ImgoHttpCallBack<PlayerRealUrlEntity>() {
            @Override
            public void b(PlayerRealUrlEntity playerRealUrlEntity) {
            }

            @Override
            public void a(PlayerRealUrlEntity playerRealUrlEntity) {
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                e.this.d.F = playerRealUrlEntity;
                HashMap map = new HashMap();
                map.put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
                map.put("suuid", com.hunantv.imgo.b.c.a().f);
                e.this.d.G = w.a(playerRealUrlEntity.info, map);
                e.this.d.H = e.this.d.G;
                e.this.a(e().getFinalUrl(), playerAuthRouterEntity, playerRealUrlEntity, bVar);
            }

            @Override
            public void a(PlayerRealUrlEntity playerRealUrlEntity, int i, int i2, String str, Throwable th) {
                super.a(playerRealUrlEntity, i, i2, str, th);
                com.hunantv.imgo.net.entity.b bVar = new com.hunantv.imgo.net.entity.b();
                bVar.a = e().getStepDuration(1);
                if (a_() != ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                    e.this.a(e().getFinalUrl(), playerAuthRouterEntity, i, str, th, bVar);
                    return;
                }
                e.this.b();
                if (e.this.e != null) {
                    e.this.e.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_SERVICE, e.this.c.getResources().getString(R.string.chang_definition_failed));
                }
            }
        });
    }

    public void a(PlayerAuthRouterEntity playerAuthRouterEntity) {
        PlayerAuthRouterEntity playerAuthRouterEntity2;
        MgtvPlayerView mgtvPlayerView = this.b;
        if (mgtvPlayerView != null && mgtvPlayerView.getVideoPlayer() != null) {
            this.b.getVideoPlayer().play();
            com.hunantv.imgo.log.e.b(a, "asyncChangeDefinition():play", true);
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        PlayerAuthRouterEntity playerAuthRouterEntity3 = eVar.m;
        if (playerAuthRouterEntity != null) {
            if (playerAuthRouterEntity3 == null && (playerAuthRouterEntity2 = eVar.l) != null && playerAuthRouterEntity2.definition == playerAuthRouterEntity.definition) {
                return;
            }
            if (playerAuthRouterEntity3 == null || playerAuthRouterEntity3.definition != playerAuthRouterEntity.definition) {
                String str = playerAuthRouterEntity.url;
                if ((str == null || str.trim().equals("")) && playerAuthRouterEntity.needPay == 1) {
                    MgtvPlayerView mgtvPlayerView2 = this.b;
                    if (mgtvPlayerView2 != null && mgtvPlayerView2.getVideoPlayer() != null) {
                        this.b.getVideoPlayer().pause();
                    }
                    com.mgtv.thirdsdk.playcore.c.b bVar = this.e;
                    if (bVar != null) {
                        bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINATION_VIP, this.c.getResources().getString(R.string.pay_d));
                        return;
                    }
                    return;
                }
                com.mgtv.thirdsdk.playcore.e eVar2 = this.d;
                eVar2.m = playerAuthRouterEntity;
                eVar2.C = 0;
                eVar2.E = 0;
                eVar2.J = false;
                eVar2.D = "";
                eVar2.I = true;
                b(playerAuthRouterEntity);
            }
        }
    }

    public void c() {
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        eVar.m = null;
        eVar.n = null;
        eVar.F = null;
        eVar.G = null;
        eVar.H = null;
    }

    private String d(PlayerAuthRouterEntity playerAuthRouterEntity) {
        String str;
        List<String> list;
        PlayerAuthDataEntity playerAuthDataEntity = this.d.p;
        if (playerAuthDataEntity != null && (list = playerAuthDataEntity.videoDomains) != null && list.size() > 0) {
            com.mgtv.thirdsdk.playcore.e eVar = this.d;
            if (eVar.C < eVar.p.videoDomains.size()) {
                com.mgtv.thirdsdk.playcore.e eVar2 = this.d;
                str = eVar2.p.videoDomains.get(eVar2.C);
            } else {
                List<String> list2 = this.d.p.videoDomains;
                str = list2.get(list2.size() - 1);
            }
        } else {
            str = "";
        }
        return a(str, playerAuthRouterEntity);
    }

    public void b(String str, int i, int i2) {
        if (i == 0) {
            d();
            return;
        }
        b();
        com.mgtv.thirdsdk.playcore.c.b bVar = this.e;
        if (bVar != null) {
            bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANNE_DEFINITION_PLAYER, this.c.getResources().getString(R.string.chang_definition_failed));
        }
    }

    public void b() {
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        eVar.I = false;
        eVar.O = eVar.t;
        if (eVar.l != null) {
            PlayerAuthRouterEntity playerAuthRouterEntity = eVar.m;
            eVar.m = null;
            eVar.n = null;
        }
        c();
    }

    public void a(String str, int i, int i2) {
        if (i == 2) {
            e();
        }
    }

    public void a(int i, int i2) {
        if (!p.b()) {
            b();
            com.mgtv.thirdsdk.playcore.c.b bVar = this.e;
            if (bVar != null) {
                bVar.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_NETWORK, this.c.getResources().getString(R.string.chang_definition_failed));
                return;
            }
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        eVar.O = eVar.t;
        int i3 = eVar.E;
        int i4 = eVar.Q;
        if (i3 < i4) {
            eVar.E = i3 + 1;
            a(i, i2, false);
        } else if (i3 == i4) {
            a(i, i2, true);
        }
    }

    public void a(int i, int i2, boolean z) {
        int iIndexOf;
        int i3;
        int iIndexOf2;
        if (!z) {
            String strSubstring = this.d.G;
            if (strSubstring != null && (iIndexOf = strSubstring.indexOf("//")) >= 0 && (i3 = iIndexOf + 2) < strSubstring.length() && (iIndexOf2 = (strSubstring = strSubstring.substring(i3)).indexOf("/")) >= 0) {
                strSubstring = strSubstring.substring(0, iIndexOf2);
            }
            com.mgtv.thirdsdk.playcore.e eVar = this.d;
            if (eVar.E == 1) {
                eVar.D = "&svrip=" + strSubstring;
            } else {
                eVar.D = this.d.B + StringUtils.COMMA + strSubstring;
            }
            b(this.d.m);
        } else {
            this.d.D = "";
        }
        VideoSDKReport videoSDKReportA = VideoSDKReport.a();
        com.mgtv.thirdsdk.playcore.e eVar2 = this.d;
        videoSDKReportA.a(eVar2.m, eVar2.F, 4, null, i, i2, z);
    }

    public void a() {
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        PlayerAuthRouterEntity playerAuthRouterEntity = eVar.m;
        if (playerAuthRouterEntity != null) {
            eVar.I = false;
            eVar.L = eVar.F;
            eVar.M = eVar.G;
            eVar.N = eVar.H;
            eVar.l = playerAuthRouterEntity;
            int i = playerAuthRouterEntity.definition;
            eVar.t = i;
            com.mgtv.thirdsdk.playcore.utils.c.d(i);
            this.d.x = 0;
            c();
        }
    }

    public void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, int i, String str2, Throwable th, com.hunantv.imgo.net.entity.b bVar) {
        String str3 = "201" + String.valueOf(i);
        if (th != null) {
            if (th instanceof SocketTimeoutException) {
                str3 = "203000";
            } else if (th instanceof HttpFormatException) {
                str3 = "202000";
            }
        }
        a(str, playerAuthRouterEntity, str3, i, bVar);
    }

    public void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, PlayerRealUrlEntity playerRealUrlEntity, com.hunantv.imgo.net.entity.b bVar) {
        String str2;
        String str3;
        if (playerRealUrlEntity != null && (str2 = playerRealUrlEntity.info) != null && !str2.trim().equals("") && (str3 = playerRealUrlEntity.status) != null && str3.equals(PlayerRealUrlEntity.OK)) {
            try {
                VideoSDKReport.a().a(str, playerAuthRouterEntity, 4, 0, bVar);
                com.mgtv.thirdsdk.playcore.e eVar = this.d;
                eVar.H = eVar.G;
                com.mgtv.thirdsdk.playcore.c.b bVar2 = this.e;
                if (bVar2 != null) {
                    bVar2.a(5);
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        a(str, playerAuthRouterEntity, MgtvPlayerConstants.ECODE_CDN2_INVALID_ENTITY, 200, bVar);
    }

    private void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, String str2, int i, com.hunantv.imgo.net.entity.b bVar) {
        int iMin = Math.min(2, this.d.a().size() - 1);
        com.mgtv.thirdsdk.playcore.e eVar = this.d;
        int i2 = eVar.C;
        if (i2 < iMin) {
            eVar.C = i2 + 1;
            b(eVar.m);
            VideoSDKReport.a().a(str, playerAuthRouterEntity, 4, str2, "", false, i, bVar);
        } else if (i2 == iMin || iMin == -1) {
            VideoSDKReport.a().a(str, playerAuthRouterEntity, 4, str2, "", true, i, bVar);
            b();
            com.mgtv.thirdsdk.playcore.c.b bVar2 = this.e;
            if (bVar2 != null) {
                bVar2.a(MgtvPlayerConstants.ErrorCode.ERROR_CHANGE_DEFINITION_SERVICE, this.c.getResources().getString(R.string.chang_definition_failed));
            }
        }
    }

    public String a(String str, PlayerAuthRouterEntity playerAuthRouterEntity) {
        return str + playerAuthRouterEntity.url + this.d.B;
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.e = bVar;
    }
}

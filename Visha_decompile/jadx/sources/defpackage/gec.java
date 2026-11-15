package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.VishaOauthData;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.exception.ApiException;
import com.transsion.retrofit.exception.ResponseExceptionHandler;
import com.transsion.retrofit.reponse.BaseResponse;

public class gec {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final String i;
    public final String j;
    public final String k;
    public final VishaOauthData l;

    public class a implements pd7 {
        public final d b;

        public a(d dVar) {
            this.b = dVar;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            gec.this.l.setAccessToken(((VishaOauthData) baseResponse.getData()).getAccessToken());
            gec.this.l.setRefreshToken(((VishaOauthData) baseResponse.getData()).getRefreshToken());
            gec.this.l.setTokenType(((VishaOauthData) baseResponse.getData()).getTokenType());
            gec.this.l.setScope(((VishaOauthData) baseResponse.getData()).getScope());
            gec.this.l.setExpiresInDate(((VishaOauthData) baseResponse.getData()).getExpiresInDate());
            zdc.u(gec.this.l.getAccessToken());
            zdc.w(gec.this.l.getRefreshToken());
            zdc.v(gec.this.l.getTokenType());
            if (!r0a.g(gec.this.l.getAccessToken())) {
                gec gecVar = gec.this;
                gecVar.m(gecVar.l.getAccessToken());
            }
            if (!r0a.g(gec.this.l.getRefreshToken())) {
                gec gecVar2 = gec.this;
                gecVar2.l(gecVar2.l.getRefreshToken());
            }
            if (!r0a.g(gec.this.l.getTokenType())) {
                gec gecVar3 = gec.this;
                gecVar3.n(gecVar3.l.getTokenType());
            }
            LogUtils.j("visha_VishaOauthManager", "VishaToken: " + gec.this.l);
            d dVar = this.b;
            if (dVar != null) {
                dVar.a(gec.this.l);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            if (!(th instanceof ApiException)) {
                LogUtils.m("visha_VishaOauthManager", "get VishaToken failed: " + th.getMessage());
                return;
            }
            ApiException apiException = (ApiException) th;
            LogUtils.m("visha_VishaOauthManager", "get VishaToken failed", "code:" + apiException.getCode() + " msg:" + apiException.getDisplayMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements pd7 {
        public final d b;

        public b(d dVar) {
            this.b = dVar;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            gec.this.l.setAccessToken(((VishaOauthData) baseResponse.getData()).getAccessToken());
            gec.this.l.setRefreshToken(((VishaOauthData) baseResponse.getData()).getRefreshToken());
            gec.this.l.setTokenType(((VishaOauthData) baseResponse.getData()).getTokenType());
            gec.this.l.setScope(((VishaOauthData) baseResponse.getData()).getScope());
            gec.this.l.setExpiresInDate(((VishaOauthData) baseResponse.getData()).getExpiresInDate());
            zdc.u(gec.this.l.getAccessToken());
            zdc.w(gec.this.l.getRefreshToken());
            zdc.v(gec.this.l.getTokenType());
            if (!r0a.g(gec.this.l.getAccessToken())) {
                gec gecVar = gec.this;
                gecVar.m(gecVar.l.getAccessToken());
            }
            if (!r0a.g(gec.this.l.getRefreshToken())) {
                gec gecVar2 = gec.this;
                gecVar2.l(gecVar2.l.getRefreshToken());
            }
            if (!r0a.g(gec.this.l.getTokenType())) {
                gec gecVar3 = gec.this;
                gecVar3.n(gecVar3.l.getTokenType());
            }
            LogUtils.j("visha_VishaOauthManager", "refreshToken VishaToken: " + gec.this.l);
            d dVar = this.b;
            if (dVar != null) {
                dVar.a(gec.this.l);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            if (!(th instanceof ApiException)) {
                LogUtils.m("visha_VishaOauthManager", "refreshToken VishaToken failed: " + th.getMessage());
                return;
            }
            ApiException apiException = (ApiException) th;
            LogUtils.m("visha_VishaOauthManager", "refreshToken VishaToken failed", "code:" + apiException.getCode() + "msg:" + apiException.getDisplayMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements pd7 {
        public c() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
        }

        @Override
        public void onComplete() {
            LogUtils.j("visha_VishaOauthManager", "logout VishaToken logout completed");
            zdc.u("");
            zdc.w("");
            zdc.v("");
            gec.this.l.clear();
        }

        @Override
        public void onError(Throwable th) {
            if (!(th instanceof ApiException)) {
                LogUtils.m("visha_VishaOauthManager", "logout VishaToken failed: " + th.getMessage());
                return;
            }
            ApiException apiException = (ApiException) th;
            LogUtils.m("visha_VishaOauthManager", "logout VishaToken failed", "code:" + apiException.getCode() + "msg:" + apiException.getDisplayMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public interface d {
        void a(VishaOauthData vishaOauthData);
    }

    public static final class e {
        public static final gec a = new gec();
    }

    public static gec c() {
        return e.a;
    }

    public void b() {
        VishaOauthData vishaOauthData = this.l;
        if (vishaOauthData != null) {
            vishaOauthData.clear();
        }
        zdc.u("");
        zdc.w("");
        zdc.v("");
    }

    public String d() {
        String strK = w6c.k(Utils.a(), "visha_refresh_token");
        return strK == null ? "" : strK;
    }

    public String e() {
        return !com.transsion.palmsdk.b.s() ? "" : this.l.getAccessToken();
    }

    public void f(d dVar) {
        LogUtils.j("visha_VishaOauthManager", "start get visha token");
        if (r0a.g(zdc.d())) {
            LogUtils.m("visha_VishaOauthManager", "before get visha token from server,please login palm");
            return;
        }
        LogUtils.w("visha_VishaOauthManager", "getVishaTokenFromServer " + zdc.d());
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getVishaToken().L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new a(dVar));
    }

    public String g() {
        String strK = w6c.k(Utils.a(), "visha_token");
        return strK == null ? "" : strK;
    }

    public String h() {
        return this.l.getTokenType();
    }

    public String i() {
        String strK = w6c.k(Utils.a(), "visha_token_type");
        return strK == null ? "" : strK;
    }

    public void j() {
        if (r0a.g(this.l.getAccessToken())) {
            LogUtils.m("visha_VishaOauthManager", "visha token is required");
            return;
        }
        m("");
        l("");
        n("");
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).logout().L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new c());
    }

    public void k(d dVar) {
        if (r0a.g(this.l.getRefreshToken())) {
            LogUtils.m("visha_VishaOauthManager", "Refresh token is required");
            f(dVar);
        } else {
            LogUtils.j("visha_VishaOauthManager", "Refresh visha token");
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).refreshVishaToken().L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new b(dVar));
        }
    }

    public void l(String str) {
        w6c.x(Utils.a(), "visha_refresh_token", str);
    }

    public void m(String str) {
        w6c.x(Utils.a(), "visha_token", str);
    }

    public void n(String str) {
        w6c.x(Utils.a(), "visha_token_type", str);
    }

    public boolean o(int i) {
        return i == 2003 || i == -401 || i == -402 || i == -404;
    }

    public gec() {
        this.a = 2003;
        this.b = -401;
        this.c = -402;
        this.d = -404;
        this.e = 2001;
        this.f = 4001;
        this.g = 4002;
        this.h = 4003;
        this.i = "visha_token";
        this.j = "visha_refresh_token";
        this.k = "visha_token_type";
        VishaOauthData vishaOauthData = new VishaOauthData();
        this.l = vishaOauthData;
        vishaOauthData.setAccessToken(g());
        vishaOauthData.setRefreshToken(d());
        vishaOauthData.setTokenType(i());
        zdc.u(vishaOauthData.getAccessToken());
        zdc.w(vishaOauthData.getRefreshToken());
        zdc.v(vishaOauthData.getTokenType());
    }
}

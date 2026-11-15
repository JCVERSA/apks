package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.VishaOauthData;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.palmsdk.PalmID;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

public abstract class kfc {
    public static boolean a = false;
    public static boolean b = false;
    public static UserInfoBean c;

    public class a implements PalmID.a {
        public final mc7 a;
        public final d b;

        public a(mc7 mc7Var, d dVar) {
            this.a = mc7Var;
            this.b = dVar;
        }

        @Override
        public void a(int i, String str) {
            LogUtils.m("visha_VishaUserManger", "refresh palm token failed, error:" + str + " status:" + i);
        }

        @Override
        public void onSuccess(String str) {
            com.transsion.palmsdk.b.K(str);
            kfc.p(this.a, this.b);
        }
    }

    public class b implements gec.d {
        public final mc7 a;
        public final d b;

        public b(mc7 mc7Var, d dVar) {
            this.a = mc7Var;
            this.b = dVar;
        }

        @Override
        public void a(VishaOauthData vishaOauthData) {
            kfc.o(this.a, this.b);
        }
    }

    public class c implements pd7 {
        public final d b;
        public final mc7 c;

        public class a implements gec.d {
            public a() {
            }

            @Override
            public void a(VishaOauthData vishaOauthData) {
                c cVar = c.this;
                kfc.o(cVar.c, cVar.b);
            }
        }

        public c(d dVar, mc7 mc7Var) {
            this.b = dVar;
            this.c = mc7Var;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess()) {
                if (baseResponse != null && gec.c().o(baseResponse.getCode()) && !kfc.b) {
                    kfc.b = true;
                    gec.c().k(new a());
                    return;
                } else {
                    d dVar = this.b;
                    if (dVar != null) {
                        dVar.a();
                        return;
                    }
                    return;
                }
            }
            LogUtils.j("visha_VishaUserManger", "visha login user info:" + baseResponse.getData());
            kfc.c = (UserInfoBean) baseResponse.getData();
            kfc.e((UserInfoBean) baseResponse.getData());
            kfc.q((UserInfoBean) baseResponse.getData());
            VishaPalmUserInfo vishaPalmUserInfo = new VishaPalmUserInfo();
            UserInfoBean userInfoBean = kfc.c;
            if (userInfoBean != null && userInfoBean.getUserInfoVo() != null) {
                vishaPalmUserInfo.setUserName(kfc.c.getUserInfoVo().getNickname());
                vishaPalmUserInfo.setNickName(kfc.c.getUserInfoVo().getNickname());
                vishaPalmUserInfo.setAvatarUrl((String) kfc.c.getUserInfoVo().getAvatarUrl());
            }
            d dVar2 = this.b;
            if (dVar2 != null) {
                dVar2.b((UserInfoBean) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public interface d {
        void a();

        void b(UserInfoBean userInfoBean);
    }

    public static void d(boolean z) {
    }

    public static void e(UserInfoBean userInfoBean) {
        if (userInfoBean == null || userInfoBean.getUserInfoVo() == null) {
            return;
        }
        a = userInfoBean.getUserInfoVo().getLoginStatus().intValue() == 1;
    }

    public static mc7 f() {
        return ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getUserInfo(com.transsion.utils.deviceinfo.a.l()).i(1000L, TimeUnit.MILLISECONDS).R(5L).S(3L);
    }

    public static mc7 g() {
        return ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getUserInfo(com.transsion.utils.deviceinfo.a.l());
    }

    public static boolean h() {
        UserInfoBean userInfoBean = c;
        boolean z = (userInfoBean == null || userInfoBean.getTarget() == -1) ? false : true;
        LogUtils.j("[VishaUserDebug]", "currentRegion:" + CountryInfoUtil.m(), "currentCountry:" + CountryInfoUtil.h(), "currentRegion support vip:" + z);
        return z;
    }

    public static UserInfoBean.VipInfoVosBean i() {
        UserInfoBean userInfoBean = c;
        if (userInfoBean == null) {
            return null;
        }
        return userInfoBean.getDefaultVIPInfo();
    }

    public static UserInfoBean.VipInfoVosBean j(int i) {
        UserInfoBean userInfoBean = c;
        if (userInfoBean == null) {
            return null;
        }
        return userInfoBean.getVIP(i);
    }

    public static void k(boolean z, d dVar) {
        LogUtils.j("visha_VishaUserManger", "get visha user info, bRetry: " + z);
        if (com.transsion.palmsdk.b.s() && !r0a.g(com.transsion.palmsdk.b.o())) {
            mc7 mc7VarF = z ? f() : g();
            if (com.transsion.palmsdk.b.u()) {
                p(mc7VarF, dVar);
                return;
            } else {
                LogUtils.m("visha_VishaUserManger", "palm token is expired,refresh it");
                com.transsion.palmsdk.b.F(new a(mc7VarF, dVar));
                return;
            }
        }
        LogUtils.m("visha_VishaUserManger", "login visha failed,palm login:" + com.transsion.palmsdk.b.s(), "palm token:" + com.transsion.palmsdk.b.o());
    }

    public static boolean l() {
        UserInfoBean userInfoBean;
        boolean z = (!com.transsion.palmsdk.b.s() || (userInfoBean = c) == null || userInfoBean.getVipInfoVosMap() == null || c.getVipInfoVosMap().getVip() == null || c.getVipInfoVosMap().getVip().getVipInfoVos() == null || c.getVipInfoVosMap().getVip().getVipInfoVos().size() <= 0) ? false : true;
        LogUtils.j("[VishaUserDebug]", "userid:" + com.transsion.palmsdk.b.k(), "palmtoken:" + com.transsion.palmsdk.b.o(), "vishatoken:" + zdc.g(), "isVip:" + z);
        return z;
    }

    public static boolean m(int i) {
        UserInfoBean userInfoBean;
        if (c == null) {
            c = (UserInfoBean) fi1.b(CacheManager.getInstance().getCache("user_info_cache_key"), UserInfoBean.class);
        }
        if (!com.transsion.palmsdk.b.s() || (userInfoBean = c) == null || userInfoBean.getVipInfoVosMap() == null || c.getVipInfoVosMap().getVip() == null || c.getVipInfoVosMap().getVip().getVipInfoVos() == null || c.getVipInfoVosMap().getVip().getVipInfoVos().size() <= 0) {
            return false;
        }
        Iterator<UserInfoBean.VipInfoVosBean> it = c.getVipInfoVosMap().getVip().getVipInfoVos().iterator();
        while (it.hasNext()) {
            if (it.next().getSourceType() == i) {
                return true;
            }
        }
        return false;
    }

    public static UserInfoBean n(UserInfoBean userInfoBean, UserInfoBean userInfoBean2) {
        CacheManager.getInstance().lambda$setCache$0("user_info_cache_key", fi1.e(userInfoBean));
        h27.c().e(1043, new Object[0]);
        return userInfoBean;
    }

    public static void o(mc7 mc7Var, d dVar) {
        mc7Var.d0(k29.c()).M(vb.a()).subscribe(new c(dVar, mc7Var));
    }

    public static void p(mc7 mc7Var, d dVar) {
        LogUtils.j("visha_VishaUserManger", "requestUserVIPInfo");
        b = false;
        if (!com.transsion.palmsdk.b.s() || r0a.g(com.transsion.palmsdk.b.o())) {
            return;
        }
        if (!r0a.g(gec.c().e())) {
            o(mc7Var, dVar);
            return;
        }
        LogUtils.j("visha_VishaUserManger", "start get visha token", "palm token:" + com.transsion.palmsdk.b.o(), "palmid:" + com.transsion.palmsdk.b.k());
        gec.c().f(new b(mc7Var, dVar));
    }

    public static void q(final UserInfoBean userInfoBean) {
        mc7.K(userInfoBean).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return kfc.n(userInfoBean, (UserInfoBean) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }
}

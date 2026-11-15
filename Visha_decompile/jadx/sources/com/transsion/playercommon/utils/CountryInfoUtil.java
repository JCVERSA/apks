package com.transsion.playercommon.utils;

import android.app.Application;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.transsion.dbdata.beans.CountryInfoBean;
import com.transsion.playercommon.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.callback.RetryCallback;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.az8;
import defpackage.fi1;
import defpackage.ge;
import defpackage.gu8;
import defpackage.iz5;
import defpackage.jq0;
import defpackage.r0a;
import defpackage.vz6;
import defpackage.w6c;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class CountryInfoUtil {
    public static CountryInfoBean a;
    public static final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public static long c = 0;
    public static int d = 0;

    public class a extends RetryCallback {
        public final boolean b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(jq0 jq0Var, int i, long j, boolean z) {
            super(jq0Var, i, j);
            this.b = z;
        }

        @Override
        public void onRequestFail(jq0 jq0Var, Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("get_country_info_failed:");
            sb.append(th != null ? th.getMessage() : "");
            LogUtils.m("visha_CountryInfoUtil", sb.toString());
            iz5.b(false, CountryInfoUtil.d);
            if (!this.b) {
                CountryInfoUtil.n();
            }
            CountryInfoUtil.q();
        }

        @Override
        public void onRequestResponse(jq0 jq0Var, gu8 gu8Var) {
            if (gu8Var.a() == null || ((BaseResponse) gu8Var.a()).getData() == null) {
                LogUtils.m("visha_CountryInfoUtil", "get_country_info_failed");
                iz5.b(false, CountryInfoUtil.d);
                if (!this.b) {
                    CountryInfoUtil.n();
                }
                CountryInfoUtil.q();
                return;
            }
            LogUtils.P("visha_CountryInfoUtil", "get_country_info:" + ((CountryInfoBean) ((BaseResponse) gu8Var.a()).getData()).toString());
            CountryInfoUtil.a = (CountryInfoBean) ((BaseResponse) gu8Var.a()).getData();
            if (!this.b) {
                CountryInfoUtil.o(CountryInfoUtil.a);
            }
            az8.a().i("visha_country_info", fi1.e(CountryInfoUtil.a));
            az8.a().g("r_t", System.currentTimeMillis());
            iz5.b(true, CountryInfoUtil.d);
        }

        @Override
        public void onStartRetry() {
            CountryInfoUtil.d++;
        }
    }

    public class b implements vz6 {
        @Override
        public void onConnect(int i) {
            LogUtils.P("visha_CountryInfoUtil", "network_restored_retry_country_info");
            MainApp.s("CountryInfoUtil_net_retry");
            Application applicationF = MainApp.f();
            if (applicationF != null) {
                CountryInfoUtil.j(applicationF);
            }
        }
    }

    public interface c {
        void a(CountryInfoBean countryInfoBean);

        void onFailed();
    }

    public static String g() {
        CountryInfoBean countryInfoBean = a;
        return countryInfoBean != null ? countryInfoBean.getCity() : "";
    }

    public static String h() {
        CountryInfoBean countryInfoBean = a;
        return countryInfoBean != null ? countryInfoBean.getCountry() : "";
    }

    public static String i() {
        CountryInfoBean countryInfoBean = a;
        return countryInfoBean != null ? countryInfoBean.getCountryCode() : "";
    }

    public static void j(Context context) {
        if (c == 0 || System.currentTimeMillis() - c > 2000) {
            c = System.currentTimeMillis();
            if (ge.e()) {
                int iD = w6c.d(context, "area_mode", 0);
                LogUtils.j("visha_CountryInfoUtil", "visha debug, area code = " + iD);
                if (iD != 0) {
                    int[] intArray = context.getResources().getIntArray(R.array.areas_code);
                    String[] stringArray = context.getResources().getStringArray(R.array.country_code);
                    String[] stringArray2 = context.getResources().getStringArray(R.array.areas);
                    CountryInfoBean countryInfoBean = new CountryInfoBean();
                    countryInfoBean.setRegionId(intArray[iD]);
                    countryInfoBean.setIp(ImgoP2pConstants.LOCAL_HOST);
                    countryInfoBean.setCountryCode(stringArray[iD]);
                    countryInfoBean.setCountry(stringArray2[iD]);
                    a = countryInfoBean;
                    o(countryInfoBean);
                    return;
                }
            }
            String strE = az8.a().e("visha_country_info", "");
            if (r0a.g(strE)) {
                if (ThreadUtils.r()) {
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            CountryInfoUtil.r(false);
                        }
                    }).start();
                    return;
                } else {
                    r(false);
                    return;
                }
            }
            CountryInfoBean countryInfoBean2 = (CountryInfoBean) fi1.b(strE, CountryInfoBean.class);
            if (countryInfoBean2 != null) {
                a = countryInfoBean2;
                o(countryInfoBean2);
            } else {
                n();
            }
            if (ThreadUtils.r()) {
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        CountryInfoUtil.r(true);
                    }
                }).start();
            } else {
                r(true);
            }
        }
    }

    public static String k() {
        CountryInfoBean countryInfoBean = a;
        return countryInfoBean != null ? countryInfoBean.getIp() : "";
    }

    public static String l() {
        CountryInfoBean countryInfoBean = a;
        return countryInfoBean != null ? countryInfoBean.getRegion() : "";
    }

    public static int m() {
        CountryInfoBean countryInfoBean = a;
        if (countryInfoBean != null) {
            return countryInfoBean.getRegionId();
        }
        return -1;
    }

    public static void n() {
        Iterator it = b.iterator();
        while (it.hasNext()) {
            c cVar = (c) ((WeakReference) it.next()).get();
            if (cVar != null) {
                cVar.onFailed();
            }
        }
    }

    public static void o(CountryInfoBean countryInfoBean) {
        Iterator it = b.iterator();
        while (it.hasNext()) {
            c cVar = (c) ((WeakReference) it.next()).get();
            if (cVar != null) {
                cVar.a(countryInfoBean);
            }
        }
    }

    public static void p(c cVar) {
        int i = 0;
        while (true) {
            CopyOnWriteArrayList copyOnWriteArrayList = b;
            if (i >= copyOnWriteArrayList.size()) {
                copyOnWriteArrayList.add(new WeakReference(cVar));
                return;
            } else if (((WeakReference) copyOnWriteArrayList.get(i)).get() == cVar) {
                return;
            } else {
                i++;
            }
        }
    }

    public static void q() {
        if (a != null) {
            return;
        }
        LogUtils.P("visha_CountryInfoUtil", "register_network_retry_for_country_info");
        MainApp.d("CountryInfoUtil_net_retry", new b());
    }

    public static void r(boolean z) {
        d = 1;
        long jC = az8.a().c("r_t", 0L);
        if (jC != 0 && System.currentTimeMillis() - jC < 86400000) {
            LogUtils.P("visha_CountryInfoUtil", "get_country_info_but_not_beyond_limit");
            return;
        }
        az8.a().g("r_t", 0L);
        jq0<BaseResponse<CountryInfoBean>> countryInfo = ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getCountryInfo();
        if (countryInfo != null) {
            countryInfo.enqueue(new a(countryInfo, 2, 1000L, z));
        }
    }
}

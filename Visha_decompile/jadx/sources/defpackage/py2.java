package defpackage;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.sniff.DownloadConfigData;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.dbdata.beans.sniff.SearchKey;
import com.transsion.dbdata.beans.sniff.SniffBlackWhiteBean;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.appconfig.AppControlManager;
import com.transsion.playercommon.vishaapis.appconfig.AppControlService;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.GlobalDownloadManger;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public abstract class py2 {
    public static SniffBlackWhiteBean a = new SniffBlackWhiteBean();
    public static final List b = new ArrayList();
    public static final String[] c = {"api.vishavideo.com/#/ssyoutube", "thepiratebay.org", "pirate-bay-proxy.org/", "thepiratebay2.to"};

    public class a implements pd7 {
        public final zf1 b;

        public a(zf1 zf1Var) {
            this.b = zf1Var;
        }

        @Override
        public void onNext(DownloadConfigData downloadConfigData) {
            zf1 zf1Var = this.b;
            if (zf1Var != null) {
                try {
                    zf1Var.accept(downloadConfigData);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            zf1 zf1Var = this.b;
            if (zf1Var != null) {
                try {
                    zf1Var.accept(null);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public static String b() {
        try {
            return MMKV.p().m("dl_data_version", "");
        } catch (IllegalStateException unused) {
            return "";
        }
    }

    public static int c() {
        return !pp3.b ? 1 : 2;
    }

    public static void d(zf1 zf1Var, String str) {
        ((AppControlService) AppControlManager.getInstance().getApi(AppControlService.class)).getDownloadConfig(CountryInfoUtil.m(), c(), pp3.a(), str).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return py2.f((BaseResponse) obj);
            }
        }).d0(k29.c()).M(vb.a()).subscribe(new a(zf1Var));
    }

    public static boolean e(String str) {
        if (r0a.g(str)) {
            return false;
        }
        for (String str2 : c) {
            if (str.contains(str2)) {
                return false;
            }
        }
        List list = b;
        if (list.isEmpty()) {
            return true;
        }
        boolean zIsSniffSwitchOpen = a.isSniffSwitchOpen();
        try {
            StringBuilder sb = new StringBuilder(new URL(str).getHost());
            if (a.isSniffSwitchOpen()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((SniffBlackWhiteBean.SniffList) it.next()).isMe(sb.toString())) {
                        return false;
                    }
                }
            } else {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    if (((SniffBlackWhiteBean.SniffList) it2.next()).isMe(sb.toString())) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            LogUtils.m("DownloadConfigUtils", "isSupportSniff " + e);
        }
        LogUtils.N("DownloadConfigUtils", "isSupportSniff url = " + str + ", support = " + zIsSniffSwitchOpen);
        return zIsSniffSwitchOpen;
    }

    public static DownloadConfigData f(BaseResponse baseResponse) {
        if (baseResponse.getCode() != 0 || !baseResponse.isSuccess() || baseResponse.getData() == null) {
            Log.e("DownloadConfigUtils", "requestDownloadMainPageConfig failed code = " + baseResponse.getCode());
            return null;
        }
        DownloadConfigData downloadConfigData = (DownloadConfigData) baseResponse.getData();
        LogUtils.N("DownloadConfigUtils", "response: " + downloadConfigData);
        if (Objects.equals(downloadConfigData.getDataVersion(), b())) {
            LogUtils.v("DownloadConfigUtils", "download config is not changed");
            return null;
        }
        MMKV.p().w("dl_data_version", downloadConfigData.getDataVersion());
        if (downloadConfigData.getDownloadMain() != null) {
            h(downloadConfigData);
        }
        if (downloadConfigData.getSniffBlackWhiteBean() != null) {
            g(downloadConfigData.getSniffBlackWhiteBean());
        }
        if (downloadConfigData.getSearchKey() != null) {
            i(downloadConfigData.getSearchKey());
        }
        return downloadConfigData;
    }

    public static void g(SniffBlackWhiteBean sniffBlackWhiteBean) {
        try {
            List list = b;
            list.clear();
            list.addAll(sniffBlackWhiteBean.getSniffList());
            a = sniffBlackWhiteBean;
        } catch (Exception e) {
            LogUtils.m("DownloadConfigUtils", "packageSniffBlackWhiteList " + e);
        }
    }

    public static void h(DownloadConfigData downloadConfigData) {
        CacheManager.getInstance().setCache("download_main_cache", fi1.e(downloadConfigData.getDownloadMain()));
        xy5.a(1);
        if (downloadConfigData.getDownloadMain().getBt_conf_info() != null) {
            GlobalDownloadManger.d = DownloadMain.BtConfInfo.isOpenBT(downloadConfigData.getDownloadMain().getBt_conf_info().getSwitch_status());
            MMKV.p().y("show_bt_enter", GlobalDownloadManger.d);
        }
    }

    public static void i(SearchKey searchKey) {
        if (searchKey != null) {
            MMKV.p().w("mmkv_search_keys", fi1.e(searchKey));
            xy5.a(0);
        }
    }
}

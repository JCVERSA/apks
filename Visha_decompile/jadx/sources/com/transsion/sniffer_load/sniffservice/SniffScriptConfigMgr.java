package com.transsion.sniffer_load.sniffservice;

import android.util.ArrayMap;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.b;
import com.transsion.dbdata.beans.sniff.SniffGetScriptReqBean;
import com.transsion.dbdata.beans.sniff.SniffScriptBean;
import com.transsion.dbdata.database.SniffScriptDatabase;
import com.transsion.playercommon.vishaapis.APIService;
import com.transsion.playercommon.vishaapis.APIServiceManager;
import com.transsion.retrofit.callback.CallbackWithDirectData;
import com.transsion.retrofit.callback.CallbackWithState;
import com.transsion.retrofit.callback.RequestCallback;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.retrofit.reponse.ResponseUtil;
import defpackage.br9;
import defpackage.djb;
import defpackage.fc7;
import defpackage.gu8;
import defpackage.r0a;
import defpackage.uh;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class SniffScriptConfigMgr {
    public static final String TAG = "visha_" + SniffScriptConfigMgr.class.getSimpleName();
    private static volatile SniffScriptConfigMgr singleton;
    private final ArrayMap<String, String> mLocalJSSniffUrlList;
    private final String[] sForbidSniffUrlList = {"visha.notion.site", "vimeo.com", "facebook.com", "dailymotion.com"};
    private final String[] sClientForbidSniffDomainList = {".youtube.com", "visha.notion.site", "vimeo.com", "facebook.com", "mxtakatak.com", "instagram.com", "tiktok.com", "tumblr.com"};
    private final String[] sClientForbidSniffUrlList = {"test-visha.transsion-os.com/vishaSnifferApi/static/universal_downloader", "api.vishavideo.com/vishaSnifferApi/static/universal_downloader"};
    private List<SniffScriptBean> mScriptEntityArrayList = new ArrayList();
    private final br9 sniffUrlDao = SniffScriptDatabase.a().b();

    private SniffScriptConfigMgr() {
        getConfigFromDatabase();
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        this.mLocalJSSniffUrlList = arrayMap;
        arrayMap.put(".ted.com", "ted_1_0_0");
    }

    public static SniffScriptConfigMgr getInstance() {
        if (singleton == null) {
            synchronized (SniffScriptConfigMgr.class) {
                try {
                    if (singleton == null) {
                        singleton = new SniffScriptConfigMgr();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return singleton;
    }

    public void clearSniffScriptFromDatabase() {
        this.mScriptEntityArrayList.clear();
        br9 br9Var = this.sniffUrlDao;
        if (br9Var != null) {
            br9Var.deleteAll();
        }
    }

    public String geAssetJsFileName(String str) {
        if (r0a.g(str)) {
            return "";
        }
        for (String str2 : this.mLocalJSSniffUrlList.keySet()) {
            if (str.contains(str2)) {
                return this.mLocalJSSniffUrlList.get(str2);
            }
        }
        return "";
    }

    public void getConfigFromDatabase() {
        String str;
        fc7.f(this.sniffUrlDao, "sniff_url_dao_null");
        this.mScriptEntityArrayList.clear();
        List<SniffScriptBean> allSniffUrls = this.sniffUrlDao.getAllSniffUrls();
        this.mScriptEntityArrayList = allSniffUrls;
        String str2 = TAG;
        if (allSniffUrls.size() > 0) {
            str = "get_sniff_script_from_local:" + this.mScriptEntityArrayList.size();
        } else {
            str = "local_sniff_script_not_found";
        }
        LogUtils.w(str2, str);
    }

    public SniffScriptBean getSupportSniffScript(String str) {
        if (r0a.g(str)) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(new URL(str).getHost());
            if (isForbidSeverSniff(sb.toString())) {
                LogUtils.j(TAG, "forbid_sniff_url:" + str);
                return null;
            }
            for (SniffScriptBean sniffScriptBean : this.mScriptEntityArrayList) {
                if (sniffScriptBean.isMe(sb.toString())) {
                    if (!sniffScriptBean.isSupportSniff()) {
                        LogUtils.j(TAG, "get_sniff_script:" + sniffScriptBean.sniff_domain, " but_config_not_support_sniff_url:", str);
                        return null;
                    }
                    LogUtils.j(TAG, "get_sniff_script:" + sniffScriptBean.sniff_domain, " sniff_url:" + str);
                    if (sniffScriptBean.isUpdateExpired()) {
                        sniffScriptBean.script_content = "";
                    }
                    return sniffScriptBean;
                }
            }
            return null;
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }

    public String[] getsClientForbidSniffUrlList() {
        return this.sClientForbidSniffUrlList;
    }

    public boolean isClientForbidSniff(String str) {
        if (r0a.g(str)) {
            return true;
        }
        String strB = djb.d(str) ? djb.b(str) : str;
        for (String str2 : this.sClientForbidSniffDomainList) {
            if (strB.contains(str2)) {
                return true;
            }
        }
        for (String str3 : this.sClientForbidSniffUrlList) {
            if (str.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEmpty() {
        return uh.b(this.mScriptEntityArrayList);
    }

    public boolean isForbidSeverSniff(String str) {
        if (r0a.g(str)) {
            return true;
        }
        for (String str2 : this.sForbidSniffUrlList) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public void requestConfigFromServer(final String str, RequestCallback.OnRequestDataListener<SniffScriptBean> onRequestDataListener) {
        if (r0a.g(str)) {
            return;
        }
        try {
            SniffGetScriptReqBean sniffGetScriptReqBean = new SniffGetScriptReqBean();
            sniffGetScriptReqBean.setScript_key(new URL(str).getHost());
            sniffGetScriptReqBean.setApp_version(b.d());
            sniffGetScriptReqBean.setScript_version("1.0.0");
            if (onRequestDataListener == null) {
                ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).getSniffScript(sniffGetScriptReqBean).enqueue(new CallbackWithState<BaseResponse<SniffScriptBean>>() {
                    @Override
                    public void onFailture(ResponseUtil.State state) {
                        LogUtils.m(SniffScriptConfigMgr.TAG, "get_sniff_config_from_server_failed_msg:" + state.errMsg + " code=" + state.code);
                    }

                    @Override
                    public void onSuccess(gu8<BaseResponse<SniffScriptBean>> gu8Var) {
                        if (gu8Var.a() == null || ((BaseResponse) gu8Var.a()).getData() == null || r0a.g(((SniffScriptBean) ((BaseResponse) gu8Var.a()).getData()).script_key)) {
                            LogUtils.j(SniffScriptConfigMgr.TAG, "get_sniff_config_from_server_but_not_support_url:" + str);
                            return;
                        }
                        LogUtils.j(SniffScriptConfigMgr.TAG, "get_sniff_config_from_server", "url=" + str, "data=" + gu8Var);
                        SniffScriptConfigMgr.this.updateSniffScriptDB((SniffScriptBean) ((BaseResponse) gu8Var.a()).getData(), true);
                    }
                });
            } else {
                ((APIService) APIServiceManager.getInstance().getApi(APIService.class)).getSniffScript(sniffGetScriptReqBean).enqueue(new CallbackWithDirectData(onRequestDataListener));
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }

    public void updateSniffScriptDB(SniffScriptBean sniffScriptBean, boolean z) {
        if (sniffScriptBean == null || r0a.g(sniffScriptBean.script_key)) {
            return;
        }
        if (!z) {
            this.sniffUrlDao.updateSniffScriptEntity(sniffScriptBean);
            this.mScriptEntityArrayList.add(sniffScriptBean);
            return;
        }
        SniffScriptBean sniffScriptEntity = this.sniffUrlDao.getSniffScriptEntity(sniffScriptBean.script_key);
        if (!fc7.c(sniffScriptEntity)) {
            this.sniffUrlDao.insert(sniffScriptBean);
            this.mScriptEntityArrayList.add(sniffScriptBean);
        } else if (sniffScriptBean.isNewer(sniffScriptEntity)) {
            this.sniffUrlDao.updateSniffScriptEntity(sniffScriptBean);
            this.mScriptEntityArrayList.remove(sniffScriptEntity);
            this.mScriptEntityArrayList.add(sniffScriptBean);
        }
    }
}

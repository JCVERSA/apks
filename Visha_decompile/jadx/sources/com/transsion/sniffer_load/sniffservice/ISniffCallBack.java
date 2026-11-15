package com.transsion.sniffer_load.sniffservice;

import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoArrayBean;

public interface ISniffCallBack {
    void onClientScriptSniffFailed(String str);

    void onClientScriptSniffResult(SniffVideoInfoArrayBean sniffVideoInfoArrayBean);

    void onJsSniffResults(SniffVideoInfoArrayBean sniffVideoInfoArrayBean);

    void onServerSniffFailed(String str, String str2, String str3);

    void onServerSniffResult(String str, SniffResultBean sniffResultBean);

    void onServerSniffResultAsync(String str, SniffResultBean sniffResultBean);

    void onStartClientSniff(String str);
}

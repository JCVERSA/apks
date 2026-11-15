package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.dbdata.beans.audioedit.LastFMResponseBean;
import defpackage.jq0;
import defpackage.q94;
import defpackage.wk8;

public interface IAudioLastFmCoverApiService {
    @q94("/2.0/")
    jq0<LastFMResponseBean> getReleaseCover(@wk8("mbid") String str, @wk8("method") String str2, @wk8("api_key") String str3, @wk8("format") String str4);
}

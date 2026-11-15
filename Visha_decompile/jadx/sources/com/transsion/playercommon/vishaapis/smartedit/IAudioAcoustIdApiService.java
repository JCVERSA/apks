package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.dbdata.beans.audioedit.AcoustIdResponseBean;
import defpackage.jq0;
import defpackage.q94;
import defpackage.wk8;
import defpackage.wy9;

public interface IAudioAcoustIdApiService {
    @q94(AudioSmartEditApiConfig.AcoustIDAPI.API_GET_MBID)
    @wy9
    jq0<AcoustIdResponseBean> lookupByFingerprint(@wk8("client") String str, @wk8("duration") Integer num, @wk8("fingerprint") String str2, @wk8("meta") String str3);
}

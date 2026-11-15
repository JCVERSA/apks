package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.dbdata.beans.audioedit.CoverArtResponseBean;
import defpackage.ay7;
import defpackage.jq0;
import defpackage.q94;

public interface IAudioCoverArtApiService {
    @q94("/release/{mbid}")
    jq0<CoverArtResponseBean> getReleaseCover(@ay7("mbid") String str);
}

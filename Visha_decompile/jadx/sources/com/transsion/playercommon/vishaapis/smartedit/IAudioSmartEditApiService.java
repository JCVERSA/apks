package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.dbdata.beans.media.MusicBrainzResponseBean;
import defpackage.ay7;
import defpackage.jq0;
import defpackage.q94;
import defpackage.wk8;

public interface IAudioSmartEditApiService {
    @q94(AudioSmartEditApiConfig.MusicBrainzAPI.API_GET_RECORDING_DETAILS)
    jq0<MusicBrainzResponseBean> getRecordingDetails(@ay7("mbid") String str, @wk8("inc") String str2, @wk8("fmt") String str3);
}

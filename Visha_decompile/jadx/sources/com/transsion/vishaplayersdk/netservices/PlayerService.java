package com.transsion.vishaplayersdk.netservices;

import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.vishaplayersdk.netservices.beans.VideoAuthResult;
import defpackage.jq0;
import defpackage.q94;
import defpackage.wk8;
import defpackage.wy9;

public interface PlayerService {
    @q94(PlayerServiceConfig.API.API_VISHA_VIDEO_AUTH)
    @wy9
    jq0<BaseResponse<VideoAuthResult>> videoAuthorize(@wk8("video_id") long j, @wk8("video_serial_id") long j2);
}

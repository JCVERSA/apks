package com.transsion.playercommon.vishaapis.opensubtitle;

import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.subtitle.OpenSubtitle;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.ay7;
import defpackage.gu8;
import defpackage.jq0;
import defpackage.mc7;
import defpackage.q94;
import defpackage.wib;
import defpackage.wk8;
import defpackage.wy9;
import java.util.List;
import okhttp3.ResponseBody;

public interface SubTitleService {
    @q94
    @wy9
    jq0<ResponseBody> downloadFile(@wib String str);

    @q94("episode-{episode}/imdbid-{imdbId}/moviebytesize-{movieByteSize}/moviehash-{movieHash}/query-{name}/season-{season}/sublanguageid-{subLanguageId}/tag_{tag}")
    @Deprecated
    mc7<List<OpenSubtitle>> query(@ay7("movieByteSize") long j, @ay7("movieHash") String str, @ay7("name") String str2, @ay7("imdbId") String str3, @ay7(Progress.TAG) String str4, @ay7("episode") int i, @ay7("season") int i2, @ay7("subLanguageId") String str5);

    @q94("visha/api/search/sub-search")
    @wy9
    mc7<gu8<BaseResponse<List<OpenSubtitle>>>> query(@wk8("query") String str, @wk8("lang") String str2);
}

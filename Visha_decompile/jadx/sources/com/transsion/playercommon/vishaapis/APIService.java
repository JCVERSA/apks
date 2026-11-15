package com.transsion.playercommon.vishaapis;

import com.transsion.dbdata.beans.sniff.SniffGetResultReqBean;
import com.transsion.dbdata.beans.sniff.SniffGetScriptReqBean;
import com.transsion.dbdata.beans.sniff.SniffResultBean;
import com.transsion.dbdata.beans.sniff.SniffScriptBean;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.gg0;
import defpackage.jq0;
import defpackage.zu7;
import java.util.List;
import okhttp3.RequestBody;

public interface APIService {
    @zu7(APIServiceConfig.API.API_SNIFFER_GET_RESULT)
    jq0<BaseResponse<List<SniffResultBean>>> getSniffResultFromServer(@gg0 SniffGetResultReqBean sniffGetResultReqBean);

    @zu7(APIServiceConfig.API.API_GET_SNIFF_SCRIPT)
    jq0<BaseResponse<SniffScriptBean>> getSniffScript(@gg0 SniffGetScriptReqBean sniffGetScriptReqBean);

    @zu7(APIServiceConfig.API.VISHA_SNIFFER_SUBMIT)
    jq0<BaseResponse<SniffResultBean>> submitSniffInfo(@gg0 RequestBody requestBody);
}

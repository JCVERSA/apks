package com.transsion.playercommon.vishaapis;

import defpackage.jq0;
import defpackage.q94;
import defpackage.wib;
import defpackage.wy9;
import okhttp3.ResponseBody;

public interface FileService {
    @q94
    @wy9
    jq0<ResponseBody> downloadFileWithDynamicUrlAsync(@wib String str);

    @q94
    jq0<ResponseBody> downloadFileWithDynamicUrlSync(@wib String str);

    @q94(FileServiceConfig.API.API_FILE_TEST_1_PIC)
    @wy9
    jq0<ResponseBody> downloadFileWithFixedUrl();

    @q94
    @wy9
    jq0<ResponseBody> getFileLength(@wib String str);
}

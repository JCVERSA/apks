package defpackage;

import com.transsion.cloud_drive.base.internal.ServiceProvider;
import com.transsion.cloud_drive.base.internal.request.GetDownloadUrlRequest;
import com.transsion.cloud_drive.base.network.response.ApiResponse;

public final class t5b implements s5b {
    @Override
    public ApiResponse a(String str) {
        y45.j(str, "fileId");
        return ServiceProvider.a.a().g(new GetDownloadUrlRequest(str));
    }
}

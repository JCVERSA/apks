package defpackage;

import com.transsion.cloud_drive.base.api.model.FreeSpaceRequest;
import com.transsion.cloud_drive.base.api.model.ReceiveFreeSpaceRequest;
import com.transsion.cloud_drive.base.api.request.MccMap;
import com.transsion.cloud_drive.base.network.response.ApiResponse;

public final class fu9 implements eu9 {
    public final gu9 a;

    public fu9(gu9 gu9Var) {
        y45.j(gu9Var, "spaceService");
        this.a = gu9Var;
    }

    @Override
    public ApiResponse a(MccMap mccMap) {
        return this.a.b(new FreeSpaceRequest(mccMap));
    }

    @Override
    public ApiResponse b(MccMap mccMap) {
        return this.a.a(new ReceiveFreeSpaceRequest(mccMap));
    }

    @Override
    public ApiResponse c() {
        return this.a.c();
    }
}

package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

public final class v0e implements xh1 {
    @Override
    public final Object a(xda xdaVar) throws ApiException {
        if (((Boolean) xdaVar.m()).booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}

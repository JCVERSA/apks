package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;

public final class C2823qm extends AbstractC2897tm {
    @Override
    public final ProtobufStateStorage a(Context context, IBinaryDataHelper iBinaryDataHelper) {
        byte[] bArrA;
        byte[] bArrA2;
        S3 s3 = new S3();
        try {
            bArrA = Wi.a(context.getPackageName());
        } catch (Throwable unused) {
            bArrA = new byte[16];
        }
        try {
            bArrA2 = Wi.a(new StringBuilder(context.getPackageName()).reverse().toString());
        } catch (Throwable unused2) {
            bArrA2 = new byte[16];
        }
        return new C3040zf("clids_info", iBinaryDataHelper, new F8(s3, new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bArrA, bArrA2)), new N3());
    }

    @Override
    public final IBinaryDataHelper c(Context context) {
        C2729n3 c2729n3;
        C2559g7 c2559g7A = C2559g7.a(context);
        synchronized (c2559g7A) {
            try {
                if (c2559g7A.i == null) {
                    c2559g7A.i = new C2729n3(c2559g7A.g());
                }
                c2729n3 = c2559g7A.i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2729n3;
    }

    @Override
    public final IBinaryDataHelper d(Context context) {
        IBinaryDataHelper iBinaryDataHelperG;
        C2559g7 c2559g7A = C2559g7.a(context);
        synchronized (c2559g7A) {
            iBinaryDataHelperG = c2559g7A.g();
        }
        return iBinaryDataHelperG;
    }
}

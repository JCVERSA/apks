package com.google.android.gms.auth.api.signin;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;

final class zbb implements PendingResultUtil.ResultConverter {
    private zbb() {
    }

    @Override
    @Nullable
    public final Object convert(Result result) {
        return ((GoogleSignInResult) result).getSignInAccount();
    }

    zbb(zba zbaVar) {
    }
}

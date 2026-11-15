package com.google.android.gms.auth.account;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;

final class zzg implements PendingResultUtil.ResultConverter {
    zzg(WorkAccountClient workAccountClient) {
    }

    @Override
    public final Object convert(Result result) {
        return ((WorkAccountApi.AddAccountResult) result).getAccount();
    }
}

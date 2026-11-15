package com.transsion.retrofit.cache;

import defpackage.gu8;
import defpackage.jq0;
import defpackage.tq0;

public interface CacheCallback<T> extends tq0 {
    @Override
    void onFailure(jq0 jq0Var, Throwable th);

    void onGetCache(jq0<T> jq0Var, gu8<T> gu8Var);

    @Override
    void onResponse(jq0 jq0Var, gu8 gu8Var);
}

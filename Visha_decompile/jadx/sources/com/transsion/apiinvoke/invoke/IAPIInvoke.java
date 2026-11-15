package com.transsion.apiinvoke.invoke;

import com.transsion.apiinvoke.invoke.api.ApiCallback;

public interface IAPIInvoke {
    ApiResponse invoke();

    void invokeAsync(ApiCallback apiCallback);
}

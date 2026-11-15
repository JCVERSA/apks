package com.transsion.apiinvoke.ipc.session.server;

import com.transsion.apiinvoke.invoke.ApiResponse;

public interface ServerCallback {
    void onResponse(ApiResponse apiResponse);
}

package com.transsion.infra.gateway.core.bean;

import defpackage.pab;

public class GatewayResponse {

    @pab(name = "data")
    public String data;

    @pab(name = "error_code")
    public String errorCode;

    @pab(name = "error_msg")
    public String errorMsg;
}

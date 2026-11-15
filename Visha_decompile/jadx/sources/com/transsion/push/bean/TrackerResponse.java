package com.transsion.push.bean;

import defpackage.pab;

public class TrackerResponse {

    @pab(name = "data")
    public TrackerConfig config;
    public String message;
    public int status;

    public String toString() {
        return "TrackerResponse{status=" + this.status + ", message='" + this.message + "', config=" + this.config + '}';
    }
}

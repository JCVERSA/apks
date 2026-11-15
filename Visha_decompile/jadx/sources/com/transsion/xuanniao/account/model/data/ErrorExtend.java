package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class ErrorExtend implements Serializable {
    public long currentTime;
    private Long endTime;
    public boolean needCaptcha;
    public long remainingTime;

    public Long getEndTime() {
        return Long.valueOf(System.currentTimeMillis() + this.remainingTime);
    }
}

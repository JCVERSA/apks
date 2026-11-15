package com.hisavana.common.interfacz;

public interface IBidWithNotify {
    String getPayload();

    boolean isExpired();

    void notifyLoss();

    void notifyWin();
}

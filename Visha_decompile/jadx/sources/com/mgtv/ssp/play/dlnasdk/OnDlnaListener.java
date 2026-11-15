package com.mgtv.ssp.play.dlnasdk;

public interface OnDlnaListener {
    void onDlnaError(String str);

    void onDlnaPrepared(DlnaInfo dlnaInfo);
}

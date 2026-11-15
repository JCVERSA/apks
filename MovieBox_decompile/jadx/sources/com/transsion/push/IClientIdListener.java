package com.transsion.push;

public interface IClientIdListener {
    void onFail(String str);

    void onSuccess(String str);
}

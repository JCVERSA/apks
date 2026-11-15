package com.transsion.push;

public interface ITopicListener {
    void onFail(String str);

    void onSuccess();
}

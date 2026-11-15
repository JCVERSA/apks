package com.transsion.playercommon.vishaapis.opensubtitle;

public interface RepoCallback<T> {
    void onFailed(Throwable th);

    default void onFinish() {
    }

    void onSuccess(T t);
}

package com.transsion.retrofit.callback;

public abstract class RequestCallback {
    protected Param mParam = new Param();

    public interface OnRequestCacheDataListener<T> extends OnRequestDataListener<T> {
        void returnCacheData(String str);
    }

    public interface OnRequestDataListener<T> {
        void returnDataFailed(String str, String str2);

        void returnDataSuccess(T t);
    }

    public static class Param {
        private boolean isDestroy;

        public boolean isDestroy() {
            return this.isDestroy;
        }
    }

    public void onDestory() {
        this.mParam.isDestroy = true;
    }
}

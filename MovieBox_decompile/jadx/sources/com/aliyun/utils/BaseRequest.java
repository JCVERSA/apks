package com.aliyun.utils;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class BaseRequest {
    public static final String DATA_KEY_EXTRA = "data_extra";
    public static final int WHAT_FAIL = 0;
    public static final int WHAT_SUCCESS = 1;
    private static ExecutorService sThreadPool = Executors.newCachedThreadPool();
    public WeakReference<Context> mContextWeak;
    private OnRequestListener outerListener;
    protected boolean wantStop = false;
    private MsgDispatcher handler = null;
    private OnRequestListener innerListener = new OnRequestListener() {
        @Override
        public void onFail(int i10, String str, String str2) {
            if (BaseRequest.this.outerListener != null) {
                BaseRequest.this.outerListener.onFail(i10, str, str2);
            }
        }

        @Override
        public void onSuccess(Object obj, String str) {
            if (BaseRequest.this.outerListener != null) {
                BaseRequest.this.outerListener.onSuccess(obj, str);
            }
        }
    };

    private static class MsgDispatcher extends Handler {
        private BaseRequest mBaseRequest;

        public MsgDispatcher(BaseRequest baseRequest) {
            this.mBaseRequest = baseRequest;
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            BaseRequest baseRequest = this.mBaseRequest;
            if (baseRequest != null) {
                baseRequest.dealMsg(message);
            }
        }
    }

    public interface OnRequestListener<Result> {
        void onFail(int i10, String str, String str2);

        void onSuccess(Result result, String str);
    }

    public BaseRequest(Context context, OnRequestListener onRequestListener) {
        this.outerListener = null;
        this.mContextWeak = new WeakReference<>(context);
        this.outerListener = onRequestListener;
    }

    public void dealMsg(Message message) {
        Bundle data = message.getData();
        String string = data != null ? data.getString(DATA_KEY_EXTRA, "") : "";
        int i10 = message.what;
        if (i10 == 1) {
            this.innerListener.onSuccess(message.obj, string);
        } else if (i10 == 0) {
            this.innerListener.onFail(message.arg1, (String) message.obj, string);
        }
    }

    public void getAsync() {
        this.handler = new MsgDispatcher(this);
        sThreadPool.execute(new Runnable() {
            @Override
            public void run() {
                BaseRequest.this.runInBackground();
            }
        });
    }

    public void getSync() {
        runInBackground();
    }

    public abstract void runInBackground();

    public void sendFailResult(int i10, String str, String str2) {
        if (this.wantStop) {
            return;
        }
        MsgDispatcher msgDispatcher = this.handler;
        if (msgDispatcher == null) {
            this.innerListener.onFail(i10, str, str2);
            return;
        }
        Message messageObtainMessage = msgDispatcher.obtainMessage(0);
        messageObtainMessage.what = 0;
        messageObtainMessage.arg1 = i10;
        messageObtainMessage.obj = str;
        Bundle bundle = new Bundle();
        bundle.putString(DATA_KEY_EXTRA, str2);
        messageObtainMessage.setData(bundle);
        this.handler.sendMessage(messageObtainMessage);
    }

    public void sendSuccessResult(Object obj, String str) {
        if (this.wantStop) {
            return;
        }
        MsgDispatcher msgDispatcher = this.handler;
        if (msgDispatcher == null) {
            this.innerListener.onSuccess(obj, str);
            return;
        }
        Message messageObtainMessage = msgDispatcher.obtainMessage(1);
        messageObtainMessage.obj = obj;
        Bundle bundle = new Bundle();
        bundle.putString(DATA_KEY_EXTRA, str);
        messageObtainMessage.setData(bundle);
        this.handler.sendMessage(messageObtainMessage);
    }

    public void stop() {
        this.wantStop = true;
        stopInner();
    }

    public abstract void stopInner();
}

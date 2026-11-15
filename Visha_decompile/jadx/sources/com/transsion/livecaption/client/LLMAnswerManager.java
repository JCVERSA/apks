package com.transsion.livecaption.client;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.transsion.livecaption.LLMAnswer;
import com.transsion.livecaption.LLMAnswerCallback;
import com.transsion.livecaption.bean.NotifcationMode;
import com.transsion.livecaption.client.utils.GsonUtils;
import com.transsion.livecaption.constant.State;
import java.util.NoSuchElementException;

public class LLMAnswerManager {
    private static final String TAG = "LLMAnswerManager";
    private static LLMAnswerManager instance;
    private LLMAnswerCallbackImpl mCallback;
    private Context mContext;
    LLMAnswer mLLMAnswer;
    private State mState = State.NONE;
    LLMAnswerConnection mConnection = new LLMAnswerConnection();
    private final IBinder.DeathRecipient recipient = new IBinder.DeathRecipient() {
        @Override
        public final void binderDied() {
            this.b.lambda$new$0();
        }
    };

    public interface AnswerCallback {
        void onCallback(NotifcationMode notifcationMode) throws RemoteException;

        void onError(int i, String str) throws RemoteException;
    }

    public class LLMAnswerCallbackImpl extends LLMAnswerCallback.Stub {
        private final AnswerCallback mAnswerCallback;

        public LLMAnswerCallbackImpl(AnswerCallback answerCallback) {
            this.mAnswerCallback = answerCallback;
        }

        @Override
        public void onCallback(String str) throws RemoteException {
            Log.d("LLMAnswerCallbackImpl", "onCallback  result = " + str);
            this.mAnswerCallback.onCallback(GsonUtils.GsonStringToNotification(str));
        }

        @Override
        public void onError(int i, String str) throws RemoteException {
            if (i == -1) {
                Log.d("LLMAnswerCallbackImpl", "LLM_SERVICE_SEIZE_ERROR");
                LLMAnswerManager.this.stopLLMNotification();
            }
            this.mAnswerCallback.onError(i, str);
        }
    }

    public class LLMAnswerConnection implements ServiceConnection {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(LLMAnswerManager.TAG, "LLMAnswerManager onServiceConnected");
            if (iBinder == null) {
                Log.d(LLMAnswerManager.TAG, "LLMAnswerManager onServiceConnected service is null");
                try {
                    LLMAnswerManager.this.mCallback.onError(-1, "LLMAnswerManager onServiceConnected service is null");
                } catch (RemoteException unused) {
                }
                LLMAnswerManager.this.stopLLMNotification();
            }
            LLMAnswerManager.this.mLLMAnswer = LLMAnswer.Stub.asInterface(iBinder);
            LLMAnswerManager.this.addAnswerCallbackToService();
            try {
                LLMAnswerManager.this.mCallback.onError(0, "LLMAnswerManager onServiceConnected");
            } catch (RemoteException unused2) {
            }
            try {
                iBinder.linkToDeath(LLMAnswerManager.this.recipient, 0);
            } catch (RemoteException unused3) {
            }
            LLMAnswerManager.this.mState = State.CONNECTED;
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(LLMAnswerManager.TAG, "on Service Disconnected");
            if (LLMAnswerManager.this.mCallback != null) {
                try {
                    LLMAnswerManager.this.mCallback.onError(1011, "LLMAnswerService disconnected.");
                } catch (RemoteException unused) {
                }
            }
            LLMAnswerManager lLMAnswerManager = LLMAnswerManager.this;
            lLMAnswerManager.mLLMAnswer = null;
            lLMAnswerManager.mState = State.DISCONNECTED;
        }

        private LLMAnswerConnection() {
        }
    }

    public void addAnswerCallbackToService() {
        Log.d(TAG, "addAnswerCallback");
        try {
            this.mLLMAnswer.setCallback(this.mCallback, 10);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static LLMAnswerManager getInstance() {
        if (instance == null) {
            synchronized (LLMAnswerManager.class) {
                try {
                    if (instance == null) {
                        instance = new LLMAnswerManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void lambda$new$0() {
        LLMAnswerCallbackImpl lLMAnswerCallbackImpl = this.mCallback;
        if (lLMAnswerCallbackImpl != null) {
            try {
                lLMAnswerCallbackImpl.onError(1015, "service death.");
            } catch (RemoteException unused) {
            }
        }
    }

    public void init(Context context, AnswerCallback answerCallback) {
        this.mContext = context;
        this.mCallback = new LLMAnswerCallbackImpl(answerCallback);
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.transsion.livecaption", "com.transsion.livecaption.LLMAnswerService"));
        if (this.mConnection == null) {
            this.mConnection = new LLMAnswerConnection();
        }
        if (context.bindService(intent, this.mConnection, 1)) {
            Log.d(TAG, "LLMAnswerService bind success");
        } else {
            Log.d(TAG, "LLMAnswerService bind fail");
            try {
                this.mCallback.onError(-2, "LLMAnswerService init: bind fail");
            } catch (RemoteException unused) {
            }
        }
        this.mState = State.BOUND;
    }

    public void removeAnswerCallback() {
        try {
            LLMAnswer lLMAnswer = this.mLLMAnswer;
            if (lLMAnswer == null) {
                Log.d(TAG, "service error, removeAnswerCallback fail");
                return;
            }
            try {
                lLMAnswer.asBinder().unlinkToDeath(this.recipient, 0);
            } catch (NoSuchElementException unused) {
            }
            this.mLLMAnswer.removeCallback();
            this.mCallback = null;
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void sendNotification(NotifcationMode notifcationMode) {
        if (this.mCallback == null) {
            Log.d(TAG, "sendNotification mCallback is null");
            return;
        }
        if (notifcationMode == null) {
            Log.d(TAG, "sendNotification nc is null");
            return;
        }
        if (notifcationMode.getNotiKey() == null || notifcationMode.getNotiKey().isEmpty()) {
            Log.d(TAG, "sendNotification nc.getNotiKey() is null");
            return;
        }
        if (notifcationMode.getPackageName() == null || notifcationMode.getPackageName().isEmpty()) {
            Log.d(TAG, "sendNotification nc.getPackageName() is null");
            return;
        }
        if (notifcationMode.getContent() == null) {
            Log.d(TAG, "sendNotification nc.getContent() is null");
            return;
        }
        if (notifcationMode.getGroupKey() == null || notifcationMode.getGroupKey().isEmpty()) {
            Log.d(TAG, "sendNotification nc.getGroupKey() is null");
        }
        Log.d(TAG, "sendNotification nc:" + notifcationMode);
        try {
            LLMAnswer lLMAnswer = this.mLLMAnswer;
            if (lLMAnswer != null) {
                lLMAnswer.sendCommand(GsonUtils.NotificationToGsonString(notifcationMode));
            } else {
                Log.d(TAG, "service error, sendNotification fail");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void stopLLMNotification() {
        Log.i(TAG, "stop LLMNotification");
        removeAnswerCallback();
        if (this.mState == State.STOPPED || this.mConnection == null) {
            return;
        }
        LLMAnswer lLMAnswer = this.mLLMAnswer;
        if (lLMAnswer != null) {
            try {
                lLMAnswer.asBinder().unlinkToDeath(this.recipient, 0);
                this.mLLMAnswer = null;
            } catch (NoSuchElementException unused) {
            }
            try {
                this.mContext.unbindService(this.mConnection);
            } catch (IllegalArgumentException unused2) {
            }
        }
        this.mContext = null;
        this.mState = State.STOPPED;
    }
}

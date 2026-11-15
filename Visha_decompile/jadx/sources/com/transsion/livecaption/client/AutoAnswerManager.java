package com.transsion.livecaption.client;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.livecaption.SmartAnswer;
import com.transsion.livecaption.SmartAnswerCallback;
import com.transsion.livecaption.bean.SmartAnswerBean;

public class AutoAnswerManager {
    private SmartAnswerBean callInfo;
    private final Context context;
    private Gson gson;
    private AutoAnswerListener mListener;
    SmartAnswer smartAnswer;
    private final String TAG = "AutoAnswerManager";
    private final String ID = "com.transsion.livecaption";
    private final String CLASS = "com.transsion.livecaption.SmartAnswerService";
    private final IBinder.DeathRecipient recipient = new IBinder.DeathRecipient() {
        @Override
        public final void binderDied() {
            this.b.lambda$new$0();
        }
    };
    private final SmartAnswerCallback.Stub smartAnswerCallback = new SmartAnswerCallback.Stub() {
        @Override
        public void onCallback(Bundle bundle) throws RemoteException {
            if (AutoAnswerManager.this.mListener == null) {
                Log.w("AutoAnswerManager", "client_api onCallback is null.");
                return;
            }
            AutoAnswerManager.this.mListener.onCallback(bundle);
            Log.i("AutoAnswerManager", "client_api onCallback,type:" + bundle.getInt("DATA_TYPE") + ", code:" + bundle.getInt("DATA_CODE"));
        }

        @Override
        public void onError(int i, String str) throws RemoteException {
            if (AutoAnswerManager.this.mListener != null) {
                AutoAnswerManager.this.mListener.onError(i, str);
            }
        }
    };
    private final ServiceConnection mServiceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e("AutoAnswerManager", "Client bind Service successful");
            try {
                AutoAnswerManager.this.smartAnswer = SmartAnswer.Stub.asInterface(iBinder);
                iBinder.linkToDeath(AutoAnswerManager.this.recipient, 0);
            } catch (RemoteException unused) {
            }
            AutoAnswerManager.this.onConnected();
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            Log.w("AutoAnswerManager", "Client unbind Service.");
            AutoAnswerManager autoAnswerManager = AutoAnswerManager.this;
            autoAnswerManager.smartAnswer = null;
            autoAnswerManager.stop(null);
        }
    };

    public interface AutoAnswerListener {
        void onCallback(Bundle bundle);

        void onError(int i, String str);
    }

    public AutoAnswerManager(Context context, AutoAnswerListener autoAnswerListener) {
        this.context = context;
        this.mListener = autoAnswerListener;
        connectService();
        this.gson = new Gson();
        Log.i("AutoAnswerManager", "client version:25.04.17.subtitle.2");
    }

    private void connectService() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.transsion.livecaption", "com.transsion.livecaption.SmartAnswerService"));
        intent.putExtra("client_version", BuildConfig.myVersion);
        Log.e("AutoAnswerManager", "client bind service:" + this.context.bindService(intent, this.mServiceConnection, 1));
    }

    public void lambda$new$0() {
        AutoAnswerListener autoAnswerListener = this.mListener;
        if (autoAnswerListener != null) {
            autoAnswerListener.onError(1015, "service death.");
        }
    }

    public void onConnected() {
        try {
            SmartAnswer smartAnswer = this.smartAnswer;
            if (smartAnswer != null) {
                smartAnswer.setCallback(this.smartAnswerCallback);
                Bundle bundle = new Bundle();
                bundle.putInt("DATA_TYPE", 1);
                bundle.putInt("DATA_CODE", 5000);
                this.smartAnswer.sendCommand(bundle);
            }
            if (this.mListener != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putInt("DATA_TYPE", 1);
                bundle2.putInt("DATA_CODE", 1011);
                this.mListener.onCallback(bundle2);
            }
        } catch (RemoteException e) {
            Log.w("AutoAnswerManager", e.getMessage());
        }
    }

    public void start(SmartAnswerBean smartAnswerBean) {
        Log.i("AutoAnswerManager", "start auto answer.");
        this.callInfo = smartAnswerBean.m122clone();
        Bundle bundle = new Bundle();
        bundle.putInt("DATA_TYPE", 1);
        bundle.putInt("DATA_CODE", 5001);
        bundle.getString("DATA_MESSAGE", this.gson.toJson(smartAnswerBean));
        SmartAnswer smartAnswer = this.smartAnswer;
        if (smartAnswer != null) {
            try {
                smartAnswer.sendCommand(bundle);
            } catch (RemoteException unused) {
            }
        } else {
            AutoAnswerListener autoAnswerListener = this.mListener;
            if (autoAnswerListener != null) {
                autoAnswerListener.onError(203, "platform service disconnect.");
            } else {
                Log.w("AutoAnswerManager", "listener is null, can't callback client");
            }
        }
        Log.i("AutoAnswerManager", "started auto answer.");
    }

    public void stop(Bundle bundle) {
        Log.i("AutoAnswerManager", "stop auto answer.");
        SmartAnswer smartAnswer = this.smartAnswer;
        if (smartAnswer != null) {
            try {
                smartAnswer.stopSmartAnswer(bundle);
            } catch (RemoteException unused) {
            }
        }
        try {
            this.context.unbindService(this.mServiceConnection);
        } catch (IllegalArgumentException e) {
            Log.i("AutoAnswerManager", "client unbind service:" + e.getMessage());
        }
        Log.i("AutoAnswerManager", "stopped auto answer.");
    }
}

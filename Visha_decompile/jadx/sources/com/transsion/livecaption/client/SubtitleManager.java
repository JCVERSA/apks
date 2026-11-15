package com.transsion.livecaption.client;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.livecaption.IAapCallback;
import com.transsion.livecaption.IAapService;
import com.transsion.livecaption.api.ISubtitle;
import com.transsion.livecaption.bean.SubtitleBean;
import com.transsion.livecaption.constant.ICode;
import com.transsion.livecaption.constant.State;

public class SubtitleManager implements ISubtitle {
    IAapService aapService;
    private final Context context;
    private Gson gson;
    IAapCallback.Stub subtitleCallback;
    private final String TAG = "SubtitleManager";
    private final String ID = "com.transsion.livecaption";
    private final String CLASS = "com.transsion.livecaption.service.SubtitleService";
    private State mState = State.NONE;
    private final IBinder.DeathRecipient recipient = new IBinder.DeathRecipient() {
        @Override
        public final void binderDied() {
            this.b.lambda$new$0();
        }
    };
    private final ServiceConnection mServiceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e("SubtitleManager", "Client bind Service successful");
            try {
                SubtitleManager.this.aapService = IAapService.Stub.asInterface(iBinder);
                iBinder.linkToDeath(SubtitleManager.this.recipient, 0);
            } catch (RemoteException e) {
                Log.w("SubtitleManager", "service disconnected.");
                SubtitleManager.this.disconnected(e);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("state from ");
            sb.append(SubtitleManager.this.mState);
            sb.append(" to ");
            State state = State.CONNECTED;
            sb.append(state);
            Log.i("SubtitleManager", sb.toString());
            SubtitleManager.this.mState = state;
            SubtitleManager.this.onConnected();
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            SubtitleManager subtitleManager = SubtitleManager.this;
            subtitleManager.aapService = null;
            subtitleManager.release();
            StringBuilder sb = new StringBuilder();
            sb.append("Client unbind Service , state from ");
            sb.append(SubtitleManager.this.mState);
            sb.append(" to ");
            State state = State.DISCONNECTED;
            sb.append(state);
            Log.w("SubtitleManager", sb.toString());
            SubtitleManager.this.mState = state;
            IAapCallback.Stub stub = SubtitleManager.this.subtitleCallback;
            if (stub != null) {
                try {
                    stub.onError(1015, "service disconnected.");
                } catch (RemoteException unused) {
                }
            }
        }
    };
    private Handler handler = new Handler(Looper.getMainLooper());
    private Runnable timeoutRunnable = new Runnable() {
        @Override
        public void run() {
            SubtitleManager.this.stop();
        }
    };

    public SubtitleManager(Context context, IAapCallback.Stub stub) {
        this.context = context;
        setCallback(stub);
        bindService();
    }

    private void bindService() {
        connectService();
        this.gson = new Gson();
        Log.i("SubtitleManager", "client version:25.04.17.subtitle.2");
    }

    private void connectService() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.transsion.livecaption", "com.transsion.livecaption.service.SubtitleService"));
        intent.putExtra("client_version", BuildConfig.myVersion);
        boolean zBindService = this.context.bindService(intent, this.mServiceConnection, 1);
        Log.e("SubtitleManager", "client bind service:" + zBindService);
        if (zBindService) {
            StringBuilder sb = new StringBuilder();
            sb.append("state from ");
            sb.append(this.mState);
            sb.append(" to ");
            State state = State.BOUND;
            sb.append(state);
            Log.i("SubtitleManager", sb.toString());
            this.mState = state;
        }
    }

    private void disConnectService() {
        try {
            this.context.unbindService(this.mServiceConnection);
            StringBuilder sb = new StringBuilder();
            sb.append("state from ");
            sb.append(this.mState);
            sb.append(" to ");
            State state = State.DISCONNECTED;
            sb.append(state);
            Log.i("SubtitleManager", sb.toString());
            this.mState = state;
        } catch (IllegalArgumentException e) {
            Log.w("SubtitleManager", "client unbind service:" + e.getMessage());
            this.mState = State.RELEASED;
            try {
                this.subtitleCallback.onError(1015, "service dead.");
            } catch (RemoteException unused) {
            }
        }
    }

    public void disconnected(RemoteException remoteException) {
        IAapCallback.Stub stub = this.subtitleCallback;
        if (stub != null) {
            try {
                stub.onEvent(1015);
            } catch (RemoteException unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state from ");
        sb.append(this.mState);
        sb.append(" to ");
        State state = State.DISCONNECTED;
        sb.append(state);
        Log.i("SubtitleManager", sb.toString());
        this.mState = state;
    }

    public void lambda$new$0() {
        if (this.subtitleCallback != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("state from ");
            sb.append(this.mState);
            sb.append(" to ");
            State state = State.DISCONNECTED;
            sb.append(state);
            Log.i("SubtitleManager", sb.toString());
            try {
                State state2 = this.mState;
                if (state2 == State.RELEASED || state2 == state) {
                    this.subtitleCallback.onEvent(1015);
                } else {
                    this.subtitleCallback.onError(1015, "service dead.");
                }
                this.mState = state;
            } catch (RemoteException e) {
                Log.w("SubtitleManager", "service disconnected.");
                disconnected(e);
            }
        }
    }

    public void onConnected() {
        try {
            IAapService iAapService = this.aapService;
            if (iAapService == null) {
                IAapCallback.Stub stub = this.subtitleCallback;
                if (stub != null) {
                    stub.onError(1001, "aapService is null.");
                    return;
                }
                return;
            }
            IAapCallback.Stub stub2 = this.subtitleCallback;
            if (stub2 == null) {
                Log.e("SubtitleManager", "subtitleCallback is null.");
                disConnectService();
                return;
            }
            iAapService.setCallback(stub2);
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 1);
            bundle.putInt("DATA_CODE", ICode.BUSINESSES.ACTION_INIT_SUBTITLE);
            this.aapService.sendCommand(bundle);
            IAapCallback.Stub stub3 = this.subtitleCallback;
            if (stub3 != null) {
                stub3.onEvent(1011);
            }
        } catch (RemoteException e) {
            Log.w("SubtitleManager", "service disconnected.");
            disconnected(e);
        }
    }

    private void setParams(SubtitleBean subtitleBean, int i) {
        this.handler.removeCallbacks(this.timeoutRunnable);
        Log.i("SubtitleManager", "set params.");
        try {
            subtitleBean.setPkgName(Application.getProcessName());
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 1);
            bundle.putInt("DATA_CODE", i);
            bundle.putString("DATA_MESSAGE", this.gson.toJson(subtitleBean));
            this.aapService.sendCommand(bundle);
            StringBuilder sb = new StringBuilder();
            sb.append("state from ");
            sb.append(this.mState);
            sb.append(" to ");
            State state = State.STARTED;
            sb.append(state);
            Log.i("SubtitleManager", sb.toString());
            this.mState = state;
        } catch (RemoteException e) {
            disconnected(e);
        } catch (NullPointerException unused) {
            IAapCallback.Stub stub = this.subtitleCallback;
            if (stub != null) {
                try {
                    stub.onError(1015, "service is disconnected,new manager again if need .");
                } catch (RemoteException unused2) {
                }
            }
        }
    }

    @Override
    public State getState() {
        return this.mState;
    }

    @Override
    public void release() {
        this.handler.removeCallbacks(this.timeoutRunnable);
        Log.i("SubtitleManager", "follow release:" + this.mState);
        State state = this.mState;
        if (state == State.DISCONNECTED || this.aapService == null) {
            return;
        }
        if (state != State.RELEASED) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("DATA_TYPE", 1);
                bundle.putInt("DATA_CODE", 1014);
                this.aapService.sendCommand(bundle);
            } catch (RemoteException e) {
                Log.w("SubtitleManager", "client stop service:" + e.getMessage());
                disconnected(e);
            } catch (NullPointerException unused) {
            }
            this.mState = State.RELEASED;
        }
        disConnectService();
    }

    @Override
    public void setCallback(IAapCallback.Stub stub) {
        this.subtitleCallback = stub;
    }

    @Override
    public void start(SubtitleBean subtitleBean) {
        Log.i("SubtitleManager", "follow start subtitle with " + subtitleBean.getInputType());
        if (this.subtitleCallback == null) {
            Log.e("SubtitleManager", "start subtitleCallback is null.");
            return;
        }
        State state = this.mState;
        if (state == State.CONNECTED || state == State.STOPPED) {
            setParams(subtitleBean, ICode.BUSINESSES.ACTION_START_SUBTITLE);
            return;
        }
        Log.w("SubtitleManager", "call start after receive event ICode.BUSINESSES.EVENT_CODE_AAP_SERVICE_CONNECTED.");
        try {
            this.subtitleCallback.onEvent(10002);
        } catch (RemoteException e) {
            disconnected(e);
        }
    }

    @Override
    public void stop(int i) {
        if (i < 0) {
            Log.i("SubtitleManager", "stop:timeout < 0");
        } else {
            this.handler.removeCallbacks(this.timeoutRunnable);
            this.handler.postDelayed(this.timeoutRunnable, ((long) i) * 1000);
        }
    }

    @Override
    public void translate(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 2);
            bundle.putInt("DATA_CODE", 1001);
            bundle.putString("DATA_MESSAGE", str);
            this.aapService.sendCommand(bundle);
        } catch (RemoteException e) {
            disconnected(e);
        } catch (NullPointerException unused) {
            IAapCallback.Stub stub = this.subtitleCallback;
            if (stub != null) {
                try {
                    stub.onError(1015, "service is disconnected,new manager again if need .");
                } catch (RemoteException unused2) {
                }
            }
        }
    }

    @Override
    public void update(SubtitleBean subtitleBean) {
        Log.i("SubtitleManager", "follow update params:" + this.mState);
        if (this.subtitleCallback == null) {
            Log.e("SubtitleManager", "update subtitleCallback is null.");
            return;
        }
        State state = this.mState;
        if (state == State.STARTED || state == State.STOPPED) {
            setParams(subtitleBean, ICode.BUSINESSES.ACTION_UPDATE_SUBTITLE);
            return;
        }
        Log.w("SubtitleManager", "call update after start or stop.");
        try {
            this.subtitleCallback.onEvent(10003);
        } catch (RemoteException e) {
            disconnected(e);
        }
    }

    @Override
    public void stop() {
        Log.i("SubtitleManager", "follow stop:" + this.mState);
        if (this.mState == State.STOPPED) {
            Log.i("SubtitleManager", "stopped, return.");
            return;
        }
        Log.i("SubtitleManager", "stop subtitle.");
        if (this.mState == State.DISCONNECTED || this.aapService == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 1);
            bundle.putInt("DATA_CODE", 1013);
            this.aapService.sendCommand(bundle);
        } catch (RemoteException e) {
            Log.w("SubtitleManager", "client stop service:" + e.getMessage());
            disconnected(e);
        } catch (NullPointerException unused) {
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state from ");
        sb.append(this.mState);
        sb.append(" to ");
        State state = State.STOPPED;
        sb.append(state);
        Log.i("SubtitleManager", sb.toString());
        this.mState = state;
    }
}

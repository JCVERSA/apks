package com.transsion.aicore.nexusflow.client;

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
import com.transsion.aicore.nexusflow.IAapCallback;
import com.transsion.aicore.nexusflow.IAapService;
import com.transsion.aicore.nexusflow.api.ISubtitle;
import com.transsion.aicore.nexusflow.bean.SubtitleBean;
import com.transsion.aicore.nexusflow.constant.State;
import com.transsion.livecaption.constant.ICode;

public class SubtitleManager implements ISubtitle {
    public final Context a;
    public Gson c;
    public IAapCallback.Stub d;
    public IAapService f;
    public State b = State.NONE;
    public final IBinder.DeathRecipient e = new IBinder.DeathRecipient() {
        @Override
        public final void binderDied() {
            this.b.m();
        }
    };
    public final ServiceConnection g = new a();
    public final Handler h = new Handler(Looper.getMainLooper());
    public final Runnable i = new Runnable() {
        @Override
        public void run() {
            SubtitleManager.this.stop();
        }
    };

    public class a implements ServiceConnection {
        public a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e("NexusFlow.SubtitleManager", "Client bind Service successful");
            Log.i("NexusFlow.SubtitleManager", "Service component: " + componentName.toString());
            Log.i("NexusFlow.SubtitleManager", "Service IBinder: ".concat(iBinder.getClass().getName()));
            try {
                Log.i("NexusFlow.SubtitleManager", "Service interface descriptor: " + iBinder.getInterfaceDescriptor());
                SubtitleManager.this.f = IAapService.Stub.asInterface(iBinder);
                if (SubtitleManager.this.f == null) {
                    Log.e("NexusFlow.SubtitleManager", "Failed to create IAapService interface from binder");
                    SubtitleManager.this.k(new RemoteException("Interface creation failed"));
                    return;
                }
                Log.i("NexusFlow.SubtitleManager", "IAapService interface created successfully");
                iBinder.linkToDeath(SubtitleManager.this.e, 0);
                StringBuilder sb = new StringBuilder("state from ");
                sb.append(SubtitleManager.this.b);
                sb.append(" to ");
                State state = State.CONNECTED;
                sb.append(state);
                Log.i("NexusFlow.SubtitleManager", sb.toString());
                SubtitleManager subtitleManager = SubtitleManager.this;
                subtitleManager.b = state;
                subtitleManager.n();
            } catch (RemoteException e) {
                Log.w("NexusFlow.SubtitleManager", "service disconnected during interface setup: " + e.getMessage());
                SubtitleManager.this.k(e);
            } catch (SecurityException e2) {
                Log.e("NexusFlow.SubtitleManager", "SecurityException during interface setup: " + e2.getMessage());
                SubtitleManager.this.l(e2);
            } catch (Exception e3) {
                Log.e("NexusFlow.SubtitleManager", "Unexpected error during service connection: " + e3.getMessage());
                SubtitleManager.this.k(new RemoteException("Connection error: " + e3.getMessage()));
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            SubtitleManager subtitleManager = SubtitleManager.this;
            subtitleManager.f = null;
            subtitleManager.release();
            StringBuilder sb = new StringBuilder("Client unbind Service , state from ");
            sb.append(SubtitleManager.this.b);
            sb.append(" to ");
            State state = State.DISCONNECTED;
            sb.append(state);
            Log.w("NexusFlow.SubtitleManager", sb.toString());
            SubtitleManager subtitleManager2 = SubtitleManager.this;
            subtitleManager2.b = state;
            IAapCallback.Stub stub = subtitleManager2.d;
            if (stub != null) {
                try {
                    stub.onError(1015, "service disconnected.");
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public SubtitleManager(Context context, IAapCallback.Stub stub) {
        this.a = context;
        setCallback(stub);
        h();
    }

    @Override
    public State getState() {
        return this.b;
    }

    public final void h() {
        i();
        this.c = new Gson();
        Log.i("NexusFlow.SubtitleManager", "client version:1758093675945");
    }

    public final void i() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.transsion.aicore.nexusflow", "com.transsion.aicore.nexusflow.service.SubtitleService"));
        intent.putExtra("client_version", "1758093675945");
        boolean zBindService = this.a.bindService(intent, this.g, 1);
        Log.e("NexusFlow.SubtitleManager", "client bind service:" + zBindService);
        if (zBindService) {
            StringBuilder sb = new StringBuilder("state from ");
            sb.append(this.b);
            sb.append(" to ");
            State state = State.BOUND;
            sb.append(state);
            Log.i("NexusFlow.SubtitleManager", sb.toString());
            this.b = state;
        }
    }

    public final void j() {
        try {
            this.a.unbindService(this.g);
            StringBuilder sb = new StringBuilder("state from ");
            sb.append(this.b);
            sb.append(" to ");
            State state = State.DISCONNECTED;
            sb.append(state);
            Log.i("NexusFlow.SubtitleManager", sb.toString());
            this.b = state;
        } catch (IllegalArgumentException e) {
            Log.w("NexusFlow.SubtitleManager", "client unbind service:" + e.getMessage());
            this.b = State.RELEASED;
            try {
                this.d.onError(1015, "service dead.");
            } catch (RemoteException unused) {
            }
        }
    }

    public final void k(RemoteException remoteException) {
        Log.e("NexusFlow.SubtitleManager", "service disconnect: " + remoteException.getMessage());
        IAapCallback.Stub stub = this.d;
        if (stub != null) {
            try {
                stub.onEvent(1015);
            } catch (RemoteException unused) {
            }
        }
        StringBuilder sb = new StringBuilder("state from ");
        sb.append(this.b);
        sb.append(" to ");
        State state = State.DISCONNECTED;
        sb.append(state);
        Log.i("NexusFlow.SubtitleManager", sb.toString());
        this.b = state;
    }

    public final void l(SecurityException securityException) {
        Log.e("NexusFlow.SubtitleManager", "Interface mismatch detected: " + securityException.getMessage());
        IAapCallback.Stub stub = this.d;
        if (stub != null) {
            try {
                stub.onError(1015, "Service interface mismatch. Please check AIDL compatibility: " + securityException.getMessage());
            } catch (RemoteException unused) {
                Log.e("NexusFlow.SubtitleManager", "Failed to notify callback about interface mismatch");
            }
        }
        this.b = State.DISCONNECTED;
        j();
    }

    public final void m() {
        if (this.d != null) {
            StringBuilder sb = new StringBuilder("state from ");
            sb.append(this.b);
            sb.append(" to ");
            State state = State.DISCONNECTED;
            sb.append(state);
            Log.i("NexusFlow.SubtitleManager", sb.toString());
            try {
                State state2 = this.b;
                if (state2 == State.RELEASED || state2 == state) {
                    this.d.onEvent(1015);
                } else {
                    this.d.onError(1015, "service dead.");
                }
                this.b = state;
            } catch (RemoteException e) {
                Log.w("NexusFlow.SubtitleManager", "service disconnected.");
                k(e);
            }
        }
    }

    public final void n() {
        try {
            if (this.f == null) {
                IAapCallback.Stub stub = this.d;
                if (stub != null) {
                    stub.onError(1001, "aapService is null.");
                    return;
                }
                return;
            }
            if (this.d != null) {
                this.h.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            SubtitleManager subtitleManager = SubtitleManager.this;
                            if (subtitleManager.f == null || subtitleManager.d == null) {
                                Log.e("NexusFlow.SubtitleManager", "Service or callback is null after delay");
                                SubtitleManager.this.k(new RemoteException("Service became null"));
                            } else {
                                Log.i("NexusFlow.SubtitleManager", "Setting callback after delay...");
                                SubtitleManager subtitleManager2 = SubtitleManager.this;
                                subtitleManager2.f.setCallback(subtitleManager2.d);
                                Bundle bundle = new Bundle();
                                bundle.putInt("DATA_TYPE", 1);
                                bundle.putInt("DATA_CODE", ICode.BUSINESSES.ACTION_INIT_SUBTITLE);
                                SubtitleManager.this.f.sendCommand(bundle);
                                IAapCallback.Stub stub2 = SubtitleManager.this.d;
                                if (stub2 != null) {
                                    stub2.onEvent(1011);
                                }
                            }
                        } catch (RemoteException e) {
                            Log.w("NexusFlow.SubtitleManager", "service disconnected in delayed callback.");
                            SubtitleManager.this.k(e);
                        } catch (SecurityException e2) {
                            Log.e("NexusFlow.SubtitleManager", "SecurityException in delayed callback setup: " + e2.getMessage());
                            SubtitleManager.this.l(e2);
                        } catch (Exception e3) {
                            Log.e("NexusFlow.SubtitleManager", "Unexpected error in delayed callback: " + e3.getMessage());
                            SubtitleManager.this.k(new RemoteException("Unexpected error: " + e3.getMessage()));
                        }
                    }
                }, 100L);
            } else {
                Log.e("NexusFlow.SubtitleManager", "subtitleCallback is null.");
                j();
            }
        } catch (Exception e) {
            Log.e("NexusFlow.SubtitleManager", "Error in onConnected: " + e.getMessage());
            k(new RemoteException("onConnected error: " + e.getMessage()));
        }
    }

    public final void o(SubtitleBean subtitleBean, int i) {
        this.h.removeCallbacks(this.i);
        Log.i("NexusFlow.SubtitleManager", "set params.");
        try {
            subtitleBean.mPkgName = Application.getProcessName();
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 1);
            bundle.putInt("DATA_CODE", i);
            bundle.putString("DATA_MESSAGE", this.c.toJson(subtitleBean));
            this.f.sendCommand(bundle);
            StringBuilder sb = new StringBuilder("state from ");
            sb.append(this.b);
            sb.append(" to ");
            State state = State.STARTED;
            sb.append(state);
            Log.i("NexusFlow.SubtitleManager", sb.toString());
            this.b = state;
        } catch (RemoteException e) {
            k(e);
        } catch (NullPointerException unused) {
            IAapCallback.Stub stub = this.d;
            if (stub != null) {
                try {
                    stub.onError(1015, "service is disconnected,new manager again if need .");
                } catch (RemoteException unused2) {
                }
            }
        }
    }

    @Override
    public void release() {
        this.h.removeCallbacks(this.i);
        Log.i("NexusFlow.SubtitleManager", "follow release:" + this.b);
        State state = this.b;
        if (state == State.DISCONNECTED || this.f == null) {
            return;
        }
        if (state != State.RELEASED) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("DATA_TYPE", 1);
                bundle.putInt("DATA_CODE", 1014);
                this.f.sendCommand(bundle);
            } catch (RemoteException e) {
                Log.w("NexusFlow.SubtitleManager", "client stop service:" + e.getMessage());
                k(e);
            } catch (NullPointerException unused) {
            }
            this.b = State.RELEASED;
        }
        j();
    }

    @Override
    public void setCallback(IAapCallback.Stub stub) {
        this.d = stub;
    }

    @Override
    public void start(SubtitleBean subtitleBean) {
        Log.i("NexusFlow.SubtitleManager", "follow start subtitle with " + subtitleBean.mInputType);
        if (this.d == null) {
            Log.e("NexusFlow.SubtitleManager", "start subtitleCallback is null.");
            return;
        }
        State state = this.b;
        if (state == State.CONNECTED || state == State.STOPPED) {
            o(subtitleBean, ICode.BUSINESSES.ACTION_START_SUBTITLE);
            return;
        }
        Log.w("NexusFlow.SubtitleManager", "call start after receive event ICode.BUSINESSES.EVENT_CODE_AAP_SERVICE_CONNECTED.");
        try {
            this.d.onEvent(10002);
        } catch (RemoteException e) {
            k(e);
        }
    }

    @Override
    public void stop(int i) {
        if (i < 0) {
            Log.i("NexusFlow.SubtitleManager", "stop:timeout < 0");
        } else {
            this.h.removeCallbacks(this.i);
            this.h.postDelayed(this.i, ((long) i) * 1000);
        }
    }

    @Override
    public void translate(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 2);
            bundle.putInt("DATA_CODE", 1001);
            bundle.putString("DATA_MESSAGE", str);
            this.f.sendCommand(bundle);
        } catch (RemoteException e) {
            k(e);
        } catch (NullPointerException unused) {
            IAapCallback.Stub stub = this.d;
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
        Log.i("NexusFlow.SubtitleManager", "follow update params:" + this.b);
        if (this.d == null) {
            Log.e("NexusFlow.SubtitleManager", "update subtitleCallback is null.");
            return;
        }
        State state = this.b;
        if (state == State.STARTED || state == State.STOPPED) {
            o(subtitleBean, ICode.BUSINESSES.ACTION_UPDATE_SUBTITLE);
            return;
        }
        Log.w("NexusFlow.SubtitleManager", "call update after start or stop.");
        try {
            this.d.onEvent(10003);
        } catch (RemoteException e) {
            k(e);
        }
    }

    @Override
    public void stop() {
        Log.i("NexusFlow.SubtitleManager", "follow stop:" + this.b);
        if (this.b == State.STOPPED) {
            Log.i("NexusFlow.SubtitleManager", "stopped, return.");
            return;
        }
        Log.i("NexusFlow.SubtitleManager", "stop subtitle.");
        if (this.b == State.DISCONNECTED || this.f == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("DATA_TYPE", 1);
            bundle.putInt("DATA_CODE", 1013);
            this.f.sendCommand(bundle);
        } catch (RemoteException e) {
            Log.w("NexusFlow.SubtitleManager", "client stop service:" + e.getMessage());
            k(e);
        } catch (NullPointerException unused) {
        }
        StringBuilder sb = new StringBuilder("state from ");
        sb.append(this.b);
        sb.append(" to ");
        State state = State.STOPPED;
        sb.append(state);
        Log.i("NexusFlow.SubtitleManager", sb.toString());
        this.b = state;
    }
}

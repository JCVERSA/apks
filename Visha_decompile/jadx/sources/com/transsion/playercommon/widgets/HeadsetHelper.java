package com.transsion.playercommon.widgets;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import com.transsion.livecaption.constant.ICode;

public class HeadsetHelper implements LifecycleEventObserver {
    public final BroadcastReceiver b = new a();
    public Status c;

    public interface Status {

        public enum Sta {
            IN,
            OUT
        }

        void k(Sta sta);
    }

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                Log.v("visha_HeadsetHelper", "onReceive " + action);
                if ("android.intent.action.HEADSET_PLUG".equals(action)) {
                    if (intent.hasExtra(ICode.CALL.CALL_KEY_STATE)) {
                        if (intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 2) == 1) {
                            if (HeadsetHelper.this.c != null) {
                                HeadsetHelper.this.c.k(Status.Sta.IN);
                            }
                        } else if (intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 2) == 0 && HeadsetHelper.this.c != null) {
                            HeadsetHelper.this.c.k(Status.Sta.OUT);
                        }
                    }
                } else if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(action)) {
                    int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
                    if (intExtra != 0) {
                        if (intExtra == 2) {
                            Log.d("visha_HeadsetHelper", "蓝牙耳机连接");
                            if (HeadsetHelper.this.c != null) {
                                HeadsetHelper.this.c.k(Status.Sta.IN);
                            }
                        }
                    } else if (HeadsetHelper.this.c != null) {
                        HeadsetHelper.this.c.k(Status.Sta.OUT);
                    }
                }
            } catch (Exception e) {
                Log.e("visha_HeadsetHelper", "mBroadcastReceiver onReceive " + e.getMessage());
            }
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Lifecycle.Event.ON_DESTROY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public HeadsetHelper(Status status) {
        this.c = status;
    }

    public final void b(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        context.registerReceiver(this.b, intentFilter);
    }

    public final void c(Context context) {
        this.c = null;
        context.unregisterReceiver(this.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = b.a[event.ordinal()];
        if (i == 1) {
            if (lifecycleOwner instanceof Context) {
                b((Context) lifecycleOwner);
            }
        } else if (i == 2 && (lifecycleOwner instanceof Context)) {
            c((Context) lifecycleOwner);
        }
    }
}

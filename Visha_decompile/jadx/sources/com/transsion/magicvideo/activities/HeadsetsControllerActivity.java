package com.transsion.magicvideo.activities;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.receiver.HeadsetsControllerReceiver;
import defpackage.il6;
import defpackage.jf;
import defpackage.se;

public class HeadsetsControllerActivity extends BasePermissionActivity implements HeadsetsControllerReceiver.a, il6.c {
    public boolean N = false;
    public AudioManager O;
    public ComponentName P;
    public a Q;

    public class a extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                Log.v("HeadsetsControllerActivity", "AudioBecomingNoisyReceiver onReceive");
                HeadsetsControllerActivity.this.B0();
            } catch (Exception e) {
                Log.e("HeadsetsControllerActivity", "AudioBecomingNoisyReceiver onReceive error: " + e.getMessage());
            }
        }

        public a() {
        }
    }

    public void B0() {
    }

    public void C0(int i, KeyEvent keyEvent) {
    }

    public void D0() {
        Log.d("HeadsetsControllerActivity", "registerHeadsetsControllerListener");
        a aVar = new a();
        this.Q = aVar;
        registerReceiver(aVar, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
        if (Build.VERSION.SDK_INT > 29) {
            il6.c(this);
            return;
        }
        this.P = new ComponentName(this, (Class<?>) HeadsetsControllerReceiver.class);
        AudioManager audioManager = (AudioManager) se.a().getSystemService("audio");
        this.O = audioManager;
        if (audioManager == null) {
            return;
        }
        audioManager.registerMediaButtonEventReceiver(this.P);
    }

    public final void E0(int i, KeyEvent keyEvent) {
        if (this.N && jf.n(i)) {
            C0(i, keyEvent);
        }
    }

    public void F0() {
        a aVar = this.Q;
        if (aVar != null) {
            try {
                unregisterReceiver(aVar);
            } catch (Exception e) {
                Log.e("HeadsetsControllerActivity", "unregisterHeadsetsControllerListener error: " + e.getMessage());
            }
        }
        if (Build.VERSION.SDK_INT > 29) {
            il6.g(this);
        } else {
            if (this.O == null) {
                return;
            }
            Log.d("HeadsetsControllerActivity", "unregisterHeadsetsControllerListener");
            this.O.unregisterMediaButtonEventReceiver(this.P);
        }
    }

    @Override
    public void a(int i, KeyEvent keyEvent) {
        Log.d("HeadsetsControllerActivity", "onMediaButtonEventKeyUp:" + i + ",mActivityResume:" + this.N);
        E0(i, keyEvent);
    }

    @Override
    public final void i(int i, KeyEvent keyEvent) {
        Log.d("HeadsetsControllerActivity", "mHeadsetsKeyUp:" + i + ",mActivityResume:" + this.N);
        E0(i, keyEvent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HeadsetsControllerReceiver.a(this);
    }

    @Override
    public void onDestroy() {
        HeadsetsControllerReceiver.b(this);
        super.onDestroy();
    }

    @Override
    public void onStart() {
        super.onStart();
        this.N = true;
    }

    @Override
    public void onStop() {
        super.onStop();
        this.N = false;
    }
}

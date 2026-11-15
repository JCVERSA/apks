package com.transsion.playercommon.utils;

import android.app.Application;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.hubsdk.api.media.TranAudioManager;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.h27;
import defpackage.pp3;
import defpackage.se;
import defpackage.wob;

public class MediaVolumeManager {
    public static volatile MediaVolumeManager w;
    public static int x;
    public AudioManager a;
    public Dialog b;
    public TextView c;
    public ImageView d;
    public ImageView e;
    public ImageView f;
    public OSSeekbar g;
    public final Context h;
    public LinearLayout n;
    public int i = -1;
    public int j = -1;
    public int k = -1;
    public long l = System.currentTimeMillis();
    public boolean m = false;
    public boolean o = false;
    public boolean p = false;
    public final Object q = new Object();
    public final Handler r = ThreadUtils.o();
    public int s = -1;
    public final Runnable t = new Runnable() {
        @Override
        public final void run() {
            this.b.r();
        }
    };
    public final BroadcastReceiver u = new a();
    public final Runnable v = new Runnable() {
        @Override
        public void run() {
            if (MediaVolumeManager.this.b != null) {
                try {
                    MediaVolumeManager.this.b.dismiss();
                } catch (Exception e) {
                    LogUtils.l("MediaVolumeManager", "VolumeDialog Dismiss Error: " + e.getMessage());
                }
            }
        }
    };

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if (TranAudioManager.VOLUME_CHANGED_ACTION.equals(intent.getAction()) && intent.getIntExtra(TranAudioManager.EXTRA_VOLUME_STREAM_TYPE, -1) == 3) {
                    int intExtra = intent.getIntExtra(TranAudioManager.EXTRA_VOLUME_STREAM_VALUE, -1);
                    int intExtra2 = intent.getIntExtra(TranAudioManager.EXTRA_PREV_VOLUME_STREAM_VALUE, -1);
                    synchronized (MediaVolumeManager.this.q) {
                        if (intExtra >= 0 && intExtra != intExtra2) {
                            if (intExtra != MediaVolumeManager.this.j) {
                                Log.d("MediaVolumeManager", "volumeReceiver onReceive, volume=" + intExtra);
                                MediaVolumeManager.this.s = intExtra;
                                MediaVolumeManager.this.r.removeCallbacks(MediaVolumeManager.this.t);
                                MediaVolumeManager.this.r.postDelayed(MediaVolumeManager.this.t, 50L);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                LogUtils.m("MediaVolumeManager", "volumeReceiver onReceive error: " + e.getMessage());
            }
        }
    }

    public class b implements View.OnTouchListener {
        public float b;
        public boolean c = true;
        public final Context d;

        public b(Context context) {
            this.d = context;
        }

        public final void b(float f, Context context) {
            if (MediaVolumeManager.this.g == null) {
                MediaVolumeManager.this.p = false;
                return;
            }
            MediaVolumeManager.this.g.setProgress(f);
            MediaVolumeManager.this.D(context, f / 2.0f, true);
            MediaVolumeManager.this.p = false;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float bottom;
            float top;
            int action = motionEvent.getAction();
            if (action == 0) {
                MediaVolumeManager.this.B(0, false);
                MediaVolumeManager.this.p = false;
            } else if (action == 1) {
                this.b = 0.0f;
                this.c = true;
                MediaVolumeManager.this.B(0, true);
                MediaVolumeManager.this.A();
                if (MediaVolumeManager.this.p) {
                    final float f = (MediaVolumeManager.this.j / MediaVolumeManager.x) * 100.0f;
                    LogUtils.w("MediaVolumeManager", "ACTION_UP: snap back to safe volume=" + MediaVolumeManager.this.j + ", safeProgress=" + f);
                    if (MediaVolumeManager.this.g != null) {
                        OSSeekbar oSSeekbar = MediaVolumeManager.this.g;
                        final Context context = this.d;
                        oSSeekbar.postDelayed(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.b(f, context);
                            }
                        }, 350L);
                    } else {
                        MediaVolumeManager.this.p = false;
                    }
                }
            } else if (action == 2) {
                float progressFloat = MediaVolumeManager.this.g.getProgressFloat();
                if (progressFloat >= 100.0f) {
                    if (this.c) {
                        this.b = motionEvent.getRawY();
                        this.c = false;
                    } else {
                        float rawY = this.b - motionEvent.getRawY();
                        float fL = rawY / com.transsion.utils.a.l(this.d);
                        if (rawY > 0.0f) {
                            bottom = this.b;
                            top = MediaVolumeManager.this.n.getTop();
                        } else {
                            bottom = MediaVolumeManager.this.n.getBottom();
                            top = this.b;
                        }
                        float fD = bottom - top;
                        if (fD > com.transsion.utils.a.d(this.d, 200.0f)) {
                            fD = com.transsion.utils.a.d(this.d, 200.0f);
                        }
                        if (fD != 0.0f) {
                            fL = rawY / fD;
                        }
                        MediaVolumeManager.this.D(this.d, (MediaVolumeManager.this.w(fL) * 100.0f) / 2.0f, true);
                    }
                } else if (progressFloat >= 0.0f) {
                    MediaVolumeManager.this.y(progressFloat);
                    MediaVolumeManager.this.D(this.d, progressFloat / 2.0f, true);
                }
                MediaVolumeManager.this.B(0, false);
            }
            return false;
        }
    }

    public class c implements OSSeekbar.c {
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override
        public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
        }

        @Override
        public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
        }

        @Override
        public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
            if (oSSeekbar != null) {
                float progressFloat = oSSeekbar.getProgressFloat();
                if (progressFloat < 0.0f || progressFloat >= 100.0f) {
                    return;
                }
                MediaVolumeManager.this.y(progressFloat);
                MediaVolumeManager.this.D(this.a, progressFloat / 2.0f, true);
            }
        }
    }

    public MediaVolumeManager() {
        Application applicationA = se.a();
        this.h = applicationA;
        this.a = (AudioManager) applicationA.getSystemService("audio");
        v();
    }

    public static MediaVolumeManager s() {
        if (w == null) {
            synchronized (MediaVolumeManager.class) {
                try {
                    if (w == null) {
                        w = new MediaVolumeManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return w;
    }

    public void A() {
        LogUtils.M("MediaVolumeManager", "changeVolume resetGesture");
        this.i = -1;
        this.k = -1;
    }

    public void B(int i, boolean z) {
        Dialog dialog = this.b;
        if (dialog != null) {
            if (i != 0) {
                dialog.dismiss();
                return;
            }
            dialog.show();
            Handler handlerO = ThreadUtils.o();
            if (!z) {
                handlerO.removeCallbacks(this.v);
            } else {
                handlerO.removeCallbacks(this.v);
                handlerO.postDelayed(this.v, 2000L);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0065 A[PHI: r0
      0x0065: PHI (r0v8 int) = (r0v3 int), (r0v4 int) binds: [B:30:0x0063, B:33:0x0069] A[DONT_GENERATE, DONT_INLINE]] */
    public final void C(int i, boolean z) {
        if (this.g == null) {
            return;
        }
        if (!pp3.w() && !pp3.j()) {
            this.g.setProgress(i);
            ImageView imageView = this.e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            ImageView imageView2 = this.f;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            F();
            return;
        }
        this.g.setProgress(Math.min(i, 100));
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z || Math.abs(jCurrentTimeMillis - this.l) > 50) {
            this.l = jCurrentTimeMillis;
            if (i <= 100) {
                TextView textView = this.c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView3 = this.d;
                if (imageView3 != null) {
                    imageView3.setVisibility(0);
                }
            } else {
                int i2 = 150;
                if (150 >= i) {
                    i = i2;
                } else {
                    i2 = 200;
                    if (200 >= i) {
                        i = i2;
                    }
                }
                TextView textView2 = this.c;
                if (textView2 != null) {
                    textView2.setVisibility(0);
                    this.c.setText(i + "%");
                }
                ImageView imageView4 = this.d;
                if (imageView4 != null) {
                    imageView4.setVisibility(8);
                }
            }
            ImageView imageView5 = this.e;
            if (imageView5 != null) {
                imageView5.setVisibility(0);
                this.e.setImageResource(i / 50 >= 3 ? R.drawable.video_play_volume3 : R.drawable.video_play_volume2);
            }
            boolean z2 = i / 50 > 3;
            ImageView imageView6 = this.f;
            if (imageView6 != null) {
                imageView6.setVisibility(0);
                this.f.setImageResource(z2 ? R.drawable.video_play_volume3 : R.drawable.video_play_volume2);
            }
            if (z2 && !this.o) {
                wob.b(100L);
            }
            this.o = z2;
        }
    }

    public void D(Context context, float f, boolean z) {
        E(context, Math.round(f), z);
    }

    public void E(Context context, int i, boolean z) {
        Dialog dialog = this.b;
        if (dialog == null) {
            p(context, z);
        } else if (z != this.m) {
            q(dialog, z);
        }
        this.m = z;
        ImageView imageView = this.d;
        if (imageView != null) {
            imageView.setImageResource(i == 0 ? R.drawable.video_play_volume0 : R.drawable.ic_public_volume);
        }
        C(i * 2, z);
        B(0, true);
    }

    public final void F() {
        ViewGroup.LayoutParams layoutParams;
        boolean z;
        ViewGroup.LayoutParams layoutParams2;
        OSSeekbar oSSeekbar = this.g;
        if (oSSeekbar == null || (layoutParams = oSSeekbar.getLayoutParams()) == null) {
            return;
        }
        int dimensionPixelOffset = this.h.getResources().getDimensionPixelOffset(R.dimen.video_brightness_seekbar_height);
        boolean z2 = true;
        if (layoutParams.width == dimensionPixelOffset && layoutParams.height == dimensionPixelOffset) {
            z = false;
        } else {
            layoutParams.width = dimensionPixelOffset;
            layoutParams.height = dimensionPixelOffset;
            this.g.setLayoutParams(layoutParams);
            z = true;
        }
        View view = (View) this.g.getParent();
        if (view == null || (layoutParams2 = view.getLayoutParams()) == null || (layoutParams2.width == dimensionPixelOffset && layoutParams2.height == dimensionPixelOffset)) {
            z2 = z;
        } else {
            layoutParams2.width = dimensionPixelOffset;
            layoutParams2.height = dimensionPixelOffset;
            view.setLayoutParams(layoutParams2);
        }
        if (z2) {
            this.g.requestLayout();
        }
    }

    public int G(int i, boolean z) {
        int i2;
        double d = (((double) i) * 1.0d) / ((double) x);
        if (!z) {
            LogUtils.j("MediaVolumeManager", "volumeBigLevel isEvent=" + z);
            if (this.i == i) {
                return this.j;
            }
            this.i = i;
        }
        if (this.p) {
            int i3 = this.j;
            if (i > i3) {
                try {
                    this.a.setStreamVolume(3, i3 + 1, 4);
                } catch (SecurityException e) {
                    LogUtils.l("MediaVolumeManager", "volumeBigLevel setStreamVolume denied: " + e.getMessage());
                } catch (Exception e2) {
                    LogUtils.l("MediaVolumeManager", "volumeBigLevel setStreamVolume failed: " + e2.getMessage());
                }
                return this.j;
            }
            if (i < i3) {
                this.p = false;
            }
        }
        if (i > (z ? this.j : this.i)) {
            if (d > 1.5d) {
                i = x * 2;
            } else if (d > 1.0d) {
                i2 = x;
                i = (int) (i2 * 1.5f);
            }
        } else if (1.0d < d && d < 1.5d) {
            i = x;
        } else if (1.5d < d && d < 2.0d) {
            i2 = x;
            i = (int) (i2 * 1.5f);
        }
        m(i, x);
        return i;
    }

    public final void m(int i, int i2) {
        LogUtils.j("MediaVolumeManager", "changeVolume");
        synchronized (this.q) {
            this.j = i;
        }
        try {
            if (i > i2) {
                h27.c().e(1164, Integer.valueOf((i * 100) / i2));
                this.a.setStreamVolume(3, i2, 4);
                return;
            }
            this.a.setStreamVolume(3, i, 4);
            int streamVolume = this.a.getStreamVolume(3);
            synchronized (this.q) {
                try {
                    if (streamVolume < i) {
                        this.p = true;
                        this.k = streamVolume;
                        this.j = streamVolume;
                    } else {
                        this.j = i;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            h27.c().e(1164, 100);
        } catch (SecurityException e) {
            LogUtils.l("MediaVolumeManager", "changeVolume setStreamVolume denied: " + e.getMessage());
        } catch (Exception e2) {
            LogUtils.l("MediaVolumeManager", "changeVolume setStreamVolume failed: " + e2.getMessage());
        }
    }

    public final int n(int i) {
        return Math.min(Math.max(i, 0), (pp3.w() || pp3.j()) ? x * 2 : x);
    }

    public void o() {
        if (this.b != null) {
            ThreadUtils.o().removeCallbacks(this.v);
            this.b.cancel();
            this.b = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.c = null;
            this.g = null;
            this.n = null;
        }
    }

    public final void p(Context context, boolean z) {
        Dialog dialog = this.b;
        if (dialog != null) {
            dialog.cancel();
        }
        Dialog dialog2 = new Dialog(context);
        this.b = dialog2;
        dialog2.setContentView(R.layout.media_play_volume);
        q(this.b, z);
        this.n = (LinearLayout) this.b.findViewById(R.id.ll_volume);
        this.c = (TextView) this.b.findViewById(R.id.volume_tip);
        this.d = (ImageView) this.b.findViewById(R.id.right_volume_iv);
        this.e = (ImageView) this.b.findViewById(R.id.volume_iv_left);
        this.f = (ImageView) this.b.findViewById(R.id.volume_iv_right);
        OSSeekbar oSSeekbar = (OSSeekbar) this.b.findViewById(R.id.seekbar_vertical_right);
        this.g = oSSeekbar;
        oSSeekbar.setEnabled(true);
        this.g.setOnTouchListener(new b(context));
        this.g.setOnProgressChangedListener(new c(context));
    }

    public final void q(Dialog dialog, boolean z) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -2;
            attributes.height = -2;
            attributes.gravity = (z ? GravityCompat.END : GravityCompat.START) | 16;
            attributes.x = com.transsion.utils.a.d(this.h, 24.0f);
            attributes.flags = 40;
            window.setAttributes(attributes);
        }
    }

    public final void r() {
        int i = this.s;
        this.s = -1;
        synchronized (this.q) {
            if (i >= 0) {
                if (i != this.j) {
                    LogUtils.j("MediaVolumeManager", "volumeReceiver dispatch debounced volume change");
                    this.j = i;
                    A();
                    h27.c().e(1164, 100);
                }
            }
        }
    }

    public int t() {
        int i;
        synchronized (this.q) {
            z();
            i = this.j;
        }
        return i;
    }

    public int u() {
        int i;
        synchronized (this.q) {
            z();
            i = x;
        }
        return i;
    }

    public final void v() {
        x = this.a.getStreamMaxVolume(3);
        this.j = this.a.getStreamVolume(3);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(TranAudioManager.VOLUME_CHANGED_ACTION);
        this.h.registerReceiver(this.u, intentFilter);
    }

    public float w(float f) {
        if (this.k == -1) {
            this.k = this.j;
        }
        return G(n(this.k + ((int) ((f * 1.25f) * x))), false) / x;
    }

    public float x(boolean z) {
        return G(n(this.j + (z ? 1 : -1)), true) / x;
    }

    public void y(float f) {
        G(n(Math.round(((f / 2.0f) / 100.0f) * ((pp3.w() || pp3.j()) ? x * 2 : x))), false);
    }

    public final void z() {
        if (x <= 0) {
            x = this.a.getStreamMaxVolume(3);
        }
        if (this.j < 0) {
            this.j = this.a.getStreamVolume(3);
        }
    }
}

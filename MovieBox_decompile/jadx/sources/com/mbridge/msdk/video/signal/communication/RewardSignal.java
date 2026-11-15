package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.t0;

public class RewardSignal extends BaseRewardSignal implements BaseIRewardCommunication {

    public static final int f38670i = 0;

    private Handler f38671h = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        final Object f38672a;

        final String f38673b;

        a(Object obj, String str) {
            this.f38672a = obj;
            this.f38673b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.getEndScreenInfo(this.f38672a, this.f38673b);
        }
    }

    class b implements Runnable {

        final Object f38675a;

        final String f38676b;

        b(Object obj, String str) {
            this.f38675a = obj;
            this.f38676b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.install(this.f38675a, this.f38676b);
        }
    }

    class c implements Runnable {

        final Object f38678a;

        final String f38679b;

        c(Object obj, String str) {
            this.f38678a = obj;
            this.f38679b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.notifyCloseBtn(this.f38678a, this.f38679b);
        }
    }

    class d implements Runnable {

        final Object f38681a;

        final String f38682b;

        d(Object obj, String str) {
            this.f38681a = obj;
            this.f38682b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.toggleCloseBtn(this.f38681a, this.f38682b);
        }
    }

    class e implements Runnable {

        final Object f38684a;

        final String f38685b;

        e(Object obj, String str) {
            this.f38684a = obj;
            this.f38685b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.getEndScreenInfo(this.f38684a, this.f38685b);
        }
    }

    class f implements Runnable {

        final Object f38687a;

        final String f38688b;

        f(Object obj, String str) {
            this.f38687a = obj;
            this.f38688b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.setOrientation(this.f38687a, this.f38688b);
        }
    }

    class g implements Runnable {

        final Object f38690a;

        final String f38691b;

        g(Object obj, String str) {
            this.f38690a = obj;
            this.f38691b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.handlerPlayableException(this.f38690a, this.f38691b);
        }
    }

    class h implements Runnable {

        final Object f38693a;

        final String f38694b;

        h(Object obj, String str) {
            this.f38693a = obj;
            this.f38694b = str;
        }

        @Override
        public void run() {
            RewardSignal.super.openURL(this.f38693a, this.f38694b);
        }
    }

    @Override
    public void getEndScreenInfo(Object obj, String str) {
        if (t0.h()) {
            super.getEndScreenInfo(obj, str);
        } else {
            this.f38671h.post(new a(obj, str));
        }
    }

    @Override
    public void handlerPlayableException(Object obj, String str) {
        if (t0.h()) {
            super.handlerPlayableException(obj, str);
        } else {
            this.f38671h.post(new g(obj, str));
        }
    }

    @Override
    public void install(Object obj, String str) {
        if (t0.h()) {
            super.install(obj, str);
        } else {
            this.f38671h.post(new b(obj, str));
        }
    }

    @Override
    public void notifyCloseBtn(Object obj, String str) {
        if (t0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f38671h.post(new c(obj, str));
        }
    }

    @Override
    public void openURL(Object obj, String str) {
        if (t0.h()) {
            super.openURL(obj, str);
        } else {
            this.f38671h.post(new h(obj, str));
        }
    }

    @Override
    public void setOrientation(Object obj, String str) {
        if (t0.h()) {
            super.setOrientation(obj, str);
        } else {
            this.f38671h.post(new f(obj, str));
        }
    }

    @Override
    public void toggleCloseBtn(Object obj, String str) {
        if (t0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f38671h.post(new d(obj, str));
        }
    }

    @Override
    public void triggerCloseBtn(Object obj, String str) {
        if (t0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f38671h.post(new e(obj, str));
        }
    }
}

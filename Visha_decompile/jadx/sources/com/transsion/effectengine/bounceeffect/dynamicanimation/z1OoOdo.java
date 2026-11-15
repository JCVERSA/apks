package com.transsion.effectengine.bounceeffect.dynamicanimation;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.view.Choreographer;
import androidx.annotation.NonNull;
import java.util.ArrayList;

public final class z1OoOdo {
    public static final ThreadLocal<z1OoOdo> z1OoOcase = new ThreadLocal<>();
    public final z1OoOnew z1OoOnew;
    public final ArrayMap<z1OoOif, Long> z1OoOdo = new ArrayMap<>();
    public final ArrayList<z1OoOif> z1OoOif = new ArrayList<>();
    public final C0217z1OoOdo z1OoOfor = new C0217z1OoOdo(this, 0);
    public final Runnable z1OoOint = new Runnable() {
        @Override
        public final void run() {
            this.b.z1OoOif();
        }
    };
    public long z1OoOtry = 0;
    public boolean z1OoObyte = false;

    public class C0217z1OoOdo {
        public C0217z1OoOdo() {
        }

        public C0217z1OoOdo(z1OoOdo z1ooodo, int i) {
            this();
        }
    }

    public static class z1OoOfor implements z1OoOnew {
        public final Handler z1OoOdo = new Handler(Looper.myLooper());
        public long z1OoOif;

        public void z1OoOif(Runnable runnable) {
            this.z1OoOif = SystemClock.uptimeMillis();
            runnable.run();
        }

        @Override
        public final void z1OoOdo(@NonNull final Runnable runnable) {
            this.z1OoOdo.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.z1OoOif(runnable);
                }
            }, Math.max(10 - (SystemClock.uptimeMillis() - this.z1OoOif), 0L));
        }

        @Override
        public final boolean z1OoOdo() {
            return Thread.currentThread() == this.z1OoOdo.getLooper().getThread();
        }
    }

    public interface z1OoOif {
        boolean doAnimationFrame(long j);
    }

    public static final class z1OoOint implements z1OoOnew {
        public final Choreographer z1OoOdo = Choreographer.getInstance();
        public final Looper z1OoOif = Looper.myLooper();

        @Override
        public final void z1OoOdo(@NonNull final Runnable runnable) {
            this.z1OoOdo.postFrameCallback(new Choreographer.FrameCallback() {
                @Override
                public final void doFrame(long j) {
                    runnable.run();
                }
            });
        }

        @Override
        public final boolean z1OoOdo() {
            return Thread.currentThread() == this.z1OoOif.getThread();
        }
    }

    public interface z1OoOnew {
        void z1OoOdo(@NonNull Runnable runnable);

        boolean z1OoOdo();
    }

    public z1OoOdo(@NonNull z1OoOnew z1ooonew) {
        this.z1OoOnew = z1ooonew;
    }

    public static z1OoOdo z1OoOdo() {
        ThreadLocal<z1OoOdo> threadLocal = z1OoOcase;
        if (threadLocal.get() == null) {
            threadLocal.set(new z1OoOdo(new z1OoOint()));
        }
        return threadLocal.get();
    }

    public final void z1OoOif(z1OoOif z1oooif) {
        this.z1OoOdo.remove(z1oooif);
        int iIndexOf = this.z1OoOif.indexOf(z1oooif);
        if (iIndexOf >= 0) {
            this.z1OoOif.set(iIndexOf, null);
            this.z1OoObyte = true;
        }
    }

    public void z1OoOif() {
        C0217z1OoOdo c0217z1OoOdo = this.z1OoOfor;
        z1OoOdo.this.z1OoOtry = SystemClock.uptimeMillis();
        z1OoOdo z1ooodo = z1OoOdo.this;
        z1ooodo.z1OoOdo(z1ooodo.z1OoOtry);
        if (z1OoOdo.this.z1OoOif.size() > 0) {
            z1OoOdo z1ooodo2 = z1OoOdo.this;
            z1ooodo2.z1OoOnew.z1OoOdo(z1ooodo2.z1OoOint);
        }
    }

    public final void z1OoOdo(z1OoOif z1oooif) {
        if (this.z1OoOif.size() == 0) {
            this.z1OoOnew.z1OoOdo(this.z1OoOint);
        }
        if (this.z1OoOif.contains(z1oooif)) {
            return;
        }
        this.z1OoOif.add(z1oooif);
    }

    public final void z1OoOdo(long j) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        for (int i = 0; i < this.z1OoOif.size(); i++) {
            z1OoOif z1oooif = this.z1OoOif.get(i);
            if (z1oooif != null) {
                Long l = this.z1OoOdo.get(z1oooif);
                if (l == null) {
                    z1oooif.doAnimationFrame(j);
                } else if (l.longValue() < jUptimeMillis) {
                    this.z1OoOdo.remove(z1oooif);
                    z1oooif.doAnimationFrame(j);
                }
            }
        }
        if (this.z1OoObyte) {
            for (int size = this.z1OoOif.size() - 1; size >= 0; size--) {
                if (this.z1OoOif.get(size) == null) {
                    this.z1OoOif.remove(size);
                }
            }
            this.z1OoObyte = false;
        }
    }
}

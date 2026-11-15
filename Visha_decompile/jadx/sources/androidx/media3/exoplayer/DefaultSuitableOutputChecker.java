package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.d52;
import defpackage.p42;
import defpackage.r42;
import defpackage.t42;
import defpackage.u42;
import defpackage.x42;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

final class DefaultSuitableOutputChecker implements SuitableOutputChecker {

    @Nullable
    private final SuitableOutputChecker impl;

    @RequiresApi(23)
    public static final class ImplApi23 implements SuitableOutputChecker {
        private AudioDeviceCallback audioDeviceCallback;

        @Nullable
        private AudioManager audioManager;
        private BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;

        private ImplApi23() {
        }

        public boolean hasSupportedAudioOutput() {
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) Assertions.checkStateNotNull(this.audioManager)).getDevices(2)) {
                if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
                int i = Util.SDK_INT;
                if (i >= 26 && audioDeviceInfo.getType() == 22) {
                    return true;
                }
                if (i >= 28 && audioDeviceInfo.getType() == 23) {
                    return true;
                }
                if (i >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                    return true;
                }
                if (i >= 33 && audioDeviceInfo.getType() == 30) {
                    return true;
                }
            }
            return false;
        }

        public void lambda$disable$2() {
            AudioManager audioManager = this.audioManager;
            if (audioManager != null) {
                audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) Assertions.checkNotNull(this.audioDeviceCallback));
            }
        }

        public static void lambda$enable$0(SuitableOutputChecker.Callback callback, Boolean bool, Boolean bool2) {
            callback.onSelectedOutputSuitabilityChanged(bool2.booleanValue());
        }

        public void lambda$enable$1(Context context) {
            AudioManager audioManager;
            Assertions.checkNotNull(this.isSuitableForPlaybackState);
            if (Util.isWear(context) && (audioManager = (AudioManager) context.getSystemService("audio")) != null) {
                this.audioManager = audioManager;
                AudioDeviceCallback audioDeviceCallback = new AudioDeviceCallback() {
                    @Override
                    public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                        ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                    }

                    @Override
                    public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                        ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                    }
                };
                this.audioDeviceCallback = audioDeviceCallback;
                audioManager.registerAudioDeviceCallback(audioDeviceCallback, new Handler((Looper) Assertions.checkNotNull(Looper.myLooper())));
                this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(hasSupportedAudioOutput()));
            }
        }

        @Override
        public void disable() {
            ((BackgroundThreadStateHandler) Assertions.checkNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$disable$2();
                }
            });
        }

        @Override
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper looper, Looper looper2, Clock clock) {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(Boolean.TRUE, looper2, looper, clock, new BackgroundThreadStateHandler.StateChangeListener() {
                @Override
                public final void onStateChanged(Object obj, Object obj2) {
                    DefaultSuitableOutputChecker.ImplApi23.lambda$enable$0(callback, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.isSuitableForPlaybackState = backgroundThreadStateHandler;
            backgroundThreadStateHandler.runInBackground(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$enable$1(context);
                }
            });
        }

        @Override
        public boolean isSelectedOutputSuitableForPlayback() {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            if (backgroundThreadStateHandler == null) {
                return true;
            }
            return backgroundThreadStateHandler.get().booleanValue();
        }
    }

    @RequiresApi(35)
    public static final class ImplApi35 implements SuitableOutputChecker {
        private static final RouteDiscoveryPreference EMPTY_DISCOVERY_PREFERENCE;

        @Nullable
        private MediaRouter2$ControllerCallback controllerCallback;
        private BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;
        private MediaRouter2$RouteCallback routeCallback;
        private MediaRouter2 router;

        static {
            u42.a();
            EMPTY_DISCOVERY_PREFERENCE = t42.a(ImmutableList.of(), false).build();
        }

        private ImplApi35() {
        }

        private static boolean isRouteSuitableForMediaPlayback(MediaRoute2Info mediaRoute2Info, int i, boolean z) {
            int suitabilityStatus = mediaRoute2Info.getSuitabilityStatus();
            if (suitabilityStatus == 1) {
                return (i == 1 || i == 2) && z;
            }
            return suitabilityStatus == 0;
        }

        public void lambda$disable$2() {
            x42.a(Assertions.checkNotNull(this.router)).unregisterControllerCallback(p42.a(Assertions.checkNotNull(this.controllerCallback)));
            this.controllerCallback = null;
            this.router.unregisterRouteCallback(r42.a(Assertions.checkNotNull(this.routeCallback)));
        }

        public static void lambda$enable$0(SuitableOutputChecker.Callback callback, Boolean bool, Boolean bool2) {
            callback.onSelectedOutputSuitabilityChanged(bool2.booleanValue());
        }

        public void lambda$enable$1(Context context) {
            Assertions.checkNotNull(this.isSuitableForPlaybackState);
            this.router = MediaRouter2.getInstance(context);
            this.routeCallback = new MediaRouter2$RouteCallback() {
            };
            final BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            Objects.requireNonNull(backgroundThreadStateHandler);
            Executor executor = new Executor() {
                @Override
                public final void execute(Runnable runnable) {
                    backgroundThreadStateHandler.runInBackground(runnable);
                }
            };
            this.router.registerRouteCallback(executor, this.routeCallback, EMPTY_DISCOVERY_PREFERENCE);
            MediaRouter2$ControllerCallback mediaRouter2$ControllerCallback = new MediaRouter2$ControllerCallback() {
                public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
                    ImplApi35.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi35.isSelectedOutputSuitableForPlayback(ImplApi35.this.router)));
                }
            };
            this.controllerCallback = mediaRouter2$ControllerCallback;
            this.router.registerControllerCallback(executor, mediaRouter2$ControllerCallback);
            this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(isSelectedOutputSuitableForPlayback(this.router)));
        }

        @Override
        public void disable() {
            ((BackgroundThreadStateHandler) Assertions.checkStateNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$disable$2();
                }
            });
        }

        @Override
        @SuppressLint({"ThreadSafe"})
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper looper, Looper looper2, Clock clock) {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(Boolean.TRUE, looper2, looper, clock, new BackgroundThreadStateHandler.StateChangeListener() {
                @Override
                public final void onStateChanged(Object obj, Object obj2) {
                    DefaultSuitableOutputChecker.ImplApi35.lambda$enable$0(callback, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.isSuitableForPlaybackState = backgroundThreadStateHandler;
            backgroundThreadStateHandler.runInBackground(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$enable$1(context);
                }
            });
        }

        @Override
        public boolean isSelectedOutputSuitableForPlayback() {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            if (backgroundThreadStateHandler == null) {
                return true;
            }
            return backgroundThreadStateHandler.get().booleanValue();
        }

        public static boolean isSelectedOutputSuitableForPlayback(MediaRouter2 mediaRouter2) {
            int transferReason = x42.a(Assertions.checkNotNull(mediaRouter2)).getSystemController().getRoutingSessionInfo().getTransferReason();
            boolean zWasTransferInitiatedBySelf = mediaRouter2.getSystemController().wasTransferInitiatedBySelf();
            Iterator it = mediaRouter2.getSystemController().getSelectedRoutes().iterator();
            while (it.hasNext()) {
                if (isRouteSuitableForMediaPlayback(d52.a(it.next()), transferReason, zWasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }
    }

    public DefaultSuitableOutputChecker() {
        int i = Util.SDK_INT;
        if (i >= 35) {
            this.impl = new ImplApi35();
        } else if (i >= 23) {
            this.impl = new ImplApi23();
        } else {
            this.impl = null;
        }
    }

    @Override
    public void disable() {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        if (suitableOutputChecker != null) {
            suitableOutputChecker.disable();
        }
    }

    @Override
    public void enable(SuitableOutputChecker.Callback callback, Context context, Looper looper, Looper looper2, Clock clock) {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        if (suitableOutputChecker != null) {
            suitableOutputChecker.enable(callback, context, looper, looper2, clock);
        }
    }

    @Override
    public boolean isSelectedOutputSuitableForPlayback() {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        return suitableOutputChecker == null || suitableOutputChecker.isSelectedOutputSuitableForPlayback();
    }
}

package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

final class SingletonConnectivityReceiver {
    private static final String TAG = "ConnectivityMonitor";
    private static volatile SingletonConnectivityReceiver instance;
    private final FrameworkConnectivityMonitor frameworkConnectivityMonitor;
    private boolean isRegistered;
    final Set<ConnectivityMonitor.ConnectivityListener> listeners = new HashSet();

    private interface FrameworkConnectivityMonitor {
        boolean register();

        void unregister();
    }

    private static final class FrameworkConnectivityMonitorPostApi24 implements FrameworkConnectivityMonitor {
        private final GlideSuppliers.GlideSupplier<ConnectivityManager> connectivityManager;
        boolean isConnected;
        final ConnectivityMonitor.ConnectivityListener listener;
        private final ConnectivityManager.NetworkCallback networkCallback = new AnonymousClass1();

        class AnonymousClass1 extends ConnectivityManager.NetworkCallback {
            AnonymousClass1() {
            }

            private void postOnConnectivityChange(final boolean z10) {
                Util.postOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass1.this.onConnectivityChange(z10);
                    }
                });
            }

            @Override
            public void onAvailable(@NonNull Network network) {
                postOnConnectivityChange(true);
            }

            void onConnectivityChange(boolean z10) {
                Util.assertMainThread();
                FrameworkConnectivityMonitorPostApi24 frameworkConnectivityMonitorPostApi24 = FrameworkConnectivityMonitorPostApi24.this;
                boolean z11 = frameworkConnectivityMonitorPostApi24.isConnected;
                frameworkConnectivityMonitorPostApi24.isConnected = z10;
                if (z11 != z10) {
                    frameworkConnectivityMonitorPostApi24.listener.onConnectivityChanged(z10);
                }
            }

            @Override
            public void onLost(@NonNull Network network) {
                postOnConnectivityChange(false);
            }
        }

        FrameworkConnectivityMonitorPostApi24(GlideSuppliers.GlideSupplier<ConnectivityManager> glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.connectivityManager = glideSupplier;
            this.listener = connectivityListener;
        }

        @Override
        @SuppressLint({"MissingPermission"})
        public boolean register() {
            this.isConnected = this.connectivityManager.get().getActiveNetwork() != null;
            try {
                this.connectivityManager.get().registerDefaultNetworkCallback(this.networkCallback);
                return true;
            } catch (RuntimeException e10) {
                if (Log.isLoggable(SingletonConnectivityReceiver.TAG, 5)) {
                    Log.w(SingletonConnectivityReceiver.TAG, "Failed to register callback", e10);
                }
                return false;
            }
        }

        @Override
        public void unregister() {
            this.connectivityManager.get().unregisterNetworkCallback(this.networkCallback);
        }
    }

    private static final class FrameworkConnectivityMonitorPreApi24 implements FrameworkConnectivityMonitor {
        static final Executor EXECUTOR = AsyncTask.SERIAL_EXECUTOR;
        private final GlideSuppliers.GlideSupplier<ConnectivityManager> connectivityManager;
        final BroadcastReceiver connectivityReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(@NonNull Context context, Intent intent) {
                FrameworkConnectivityMonitorPreApi24.this.onConnectivityChange();
            }
        };
        final Context context;
        volatile boolean isConnected;
        volatile boolean isRegistered;
        final ConnectivityMonitor.ConnectivityListener listener;

        FrameworkConnectivityMonitorPreApi24(Context context, GlideSuppliers.GlideSupplier<ConnectivityManager> glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.context = context.getApplicationContext();
            this.connectivityManager = glideSupplier;
            this.listener = connectivityListener;
        }

        @SuppressLint({"MissingPermission"})
        boolean isConnected() {
            try {
                NetworkInfo activeNetworkInfo = this.connectivityManager.get().getActiveNetworkInfo();
                return activeNetworkInfo != null && activeNetworkInfo.isConnected();
            } catch (RuntimeException e10) {
                if (Log.isLoggable(SingletonConnectivityReceiver.TAG, 5)) {
                    Log.w(SingletonConnectivityReceiver.TAG, "Failed to determine connectivity status when connectivity changed", e10);
                }
                return true;
            }
        }

        void notifyChangeOnUiThread(final boolean z10) {
            Util.postOnUiThread(new Runnable() {
                @Override
                public void run() {
                    FrameworkConnectivityMonitorPreApi24.this.listener.onConnectivityChanged(z10);
                }
            });
        }

        void onConnectivityChange() {
            EXECUTOR.execute(new Runnable() {
                @Override
                public void run() {
                    boolean z10 = FrameworkConnectivityMonitorPreApi24.this.isConnected;
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.isConnected = frameworkConnectivityMonitorPreApi24.isConnected();
                    if (z10 != FrameworkConnectivityMonitorPreApi24.this.isConnected) {
                        if (Log.isLoggable(SingletonConnectivityReceiver.TAG, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("connectivity changed, isConnected: ");
                            sb2.append(FrameworkConnectivityMonitorPreApi24.this.isConnected);
                        }
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi25 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi25.notifyChangeOnUiThread(frameworkConnectivityMonitorPreApi25.isConnected);
                    }
                }
            });
        }

        @Override
        public boolean register() {
            EXECUTOR.execute(new Runnable() {
                @Override
                public void run() {
                    FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                    frameworkConnectivityMonitorPreApi24.isConnected = frameworkConnectivityMonitorPreApi24.isConnected();
                    try {
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi25 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi25.context.registerReceiver(frameworkConnectivityMonitorPreApi25.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        FrameworkConnectivityMonitorPreApi24.this.isRegistered = true;
                    } catch (SecurityException e10) {
                        if (Log.isLoggable(SingletonConnectivityReceiver.TAG, 5)) {
                            Log.w(SingletonConnectivityReceiver.TAG, "Failed to register", e10);
                        }
                        FrameworkConnectivityMonitorPreApi24.this.isRegistered = false;
                    }
                }
            });
            return true;
        }

        @Override
        public void unregister() {
            EXECUTOR.execute(new Runnable() {
                @Override
                public void run() {
                    if (FrameworkConnectivityMonitorPreApi24.this.isRegistered) {
                        FrameworkConnectivityMonitorPreApi24.this.isRegistered = false;
                        FrameworkConnectivityMonitorPreApi24 frameworkConnectivityMonitorPreApi24 = FrameworkConnectivityMonitorPreApi24.this;
                        frameworkConnectivityMonitorPreApi24.context.unregisterReceiver(frameworkConnectivityMonitorPreApi24.connectivityReceiver);
                    }
                }
            });
        }
    }

    private SingletonConnectivityReceiver(@NonNull final Context context) {
        GlideSuppliers.GlideSupplier glideSupplierMemorize = GlideSuppliers.memorize(new GlideSuppliers.GlideSupplier<ConnectivityManager>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public ConnectivityManager get() {
                return (ConnectivityManager) context.getSystemService("connectivity");
            }
        });
        ConnectivityMonitor.ConnectivityListener connectivityListener = new ConnectivityMonitor.ConnectivityListener() {
            @Override
            public void onConnectivityChanged(boolean z10) {
                ArrayList arrayList;
                Util.assertMainThread();
                synchronized (SingletonConnectivityReceiver.this) {
                    arrayList = new ArrayList(SingletonConnectivityReceiver.this.listeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ConnectivityMonitor.ConnectivityListener) it.next()).onConnectivityChanged(z10);
                }
            }
        };
        this.frameworkConnectivityMonitor = Build.VERSION.SDK_INT >= 24 ? new FrameworkConnectivityMonitorPostApi24(glideSupplierMemorize, connectivityListener) : new FrameworkConnectivityMonitorPreApi24(context, glideSupplierMemorize, connectivityListener);
    }

    static SingletonConnectivityReceiver get(@NonNull Context context) {
        if (instance == null) {
            synchronized (SingletonConnectivityReceiver.class) {
                try {
                    if (instance == null) {
                        instance = new SingletonConnectivityReceiver(context.getApplicationContext());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return instance;
    }

    private void maybeRegisterReceiver() {
        if (this.isRegistered || this.listeners.isEmpty()) {
            return;
        }
        this.isRegistered = this.frameworkConnectivityMonitor.register();
    }

    private void maybeUnregisterReceiver() {
        if (this.isRegistered && this.listeners.isEmpty()) {
            this.frameworkConnectivityMonitor.unregister();
            this.isRegistered = false;
        }
    }

    static void reset() {
        instance = null;
    }

    synchronized void register(ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.listeners.add(connectivityListener);
        maybeRegisterReceiver();
    }

    synchronized void unregister(ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.listeners.remove(connectivityListener);
        maybeUnregisterReceiver();
    }
}

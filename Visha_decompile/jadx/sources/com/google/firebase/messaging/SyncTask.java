package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import defpackage.he9;
import defpackage.wi4;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class SyncTask implements Runnable {
    private final FirebaseMessaging firebaseMessaging;
    private final long nextDelaySeconds;

    @SuppressLint({"ThreadPoolCreation"})
    @VisibleForTesting
    ExecutorService processorExecutor = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.concurrent.a("firebase-iid-executor"));
    private final PowerManager.WakeLock syncWakeLock;

    public static class a extends BroadcastReceiver {
        public SyncTask a;
        public Context b;

        public a(SyncTask syncTask) {
            this.a = syncTask;
        }

        public void a() {
            if (SyncTask.isDebugLogEnabled()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            SyncTask syncTask = this.a;
            if (syncTask != null) {
                Context context = syncTask.getContext();
                this.b = context;
                context.registerReceiver(this, intentFilter);
            }
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            SyncTask syncTask = this.a;
            if (syncTask != null && syncTask.isDeviceConnected()) {
                if (SyncTask.isDebugLogEnabled()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.a.firebaseMessaging.l(this.a, 0L);
                Context context2 = this.b;
                if (context2 != null) {
                    context2.unregisterReceiver(this);
                }
                this.a = null;
            }
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    @VisibleForTesting
    public SyncTask(FirebaseMessaging firebaseMessaging, long j) {
        this.firebaseMessaging = firebaseMessaging;
        this.nextDelaySeconds = j;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getContext().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.syncWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    public static boolean isDebugLogEnabled() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    public Context getContext() {
        return this.firebaseMessaging.m();
    }

    public boolean isDeviceConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @VisibleForTesting
    public boolean maybeRefreshToken() throws IOException {
        try {
            if (this.firebaseMessaging.k() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return true;
            }
            Log.d("FirebaseMessaging", "Token successfully retrieved");
            return true;
        } catch (IOException e) {
            if (!wi4.h(e.getMessage())) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            Log.w("FirebaseMessaging", "Token retrieval failed: " + e.getMessage() + ". Will retry token retrieval");
            return false;
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override
    @SuppressLint({"WakelockTimeout"})
    public void run() {
        if (he9.b().e(getContext())) {
            this.syncWakeLock.acquire();
        }
        try {
            this.firebaseMessaging.G(true);
            if (!this.firebaseMessaging.x()) {
                this.firebaseMessaging.G(false);
            } else if (he9.b().d(getContext()) && !isDeviceConnected()) {
                new a(this).a();
            } else {
                if (maybeRefreshToken()) {
                    this.firebaseMessaging.G(false);
                } else {
                    this.firebaseMessaging.K(this.nextDelaySeconds);
                }
            }
        } catch (IOException e) {
            Log.e("FirebaseMessaging", "Topic sync or token retrieval failed on hard failure exceptions: " + e.getMessage() + ". Won't retry the operation.");
            this.firebaseMessaging.G(false);
        } finally {
            if (he9.b().e(getContext())) {
                this.syncWakeLock.release();
            }
        }
    }
}

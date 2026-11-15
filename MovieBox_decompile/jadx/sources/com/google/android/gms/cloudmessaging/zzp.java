package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.transsion.push.PushConstants;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

final class zzp implements ServiceConnection {
    zzq zzc;
    final zzv zzf;
    int zza = 0;
    final Messenger zzb = new Messenger(new com.google.android.gms.internal.cloudmessaging.zzf(Looper.getMainLooper(), new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            int i10 = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Received response to request: ");
                sb2.append(i10);
            }
            zzp zzpVar = this.zza;
            synchronized (zzpVar) {
                try {
                    zzs zzsVar = (zzs) zzpVar.zze.get(i10);
                    if (zzsVar == null) {
                        Log.w("MessengerIpcClient", "Received response for unknown request: " + i10);
                        return true;
                    }
                    zzpVar.zze.remove(i10);
                    zzpVar.zzf();
                    Bundle data = message.getData();
                    if (data.getBoolean("unsupported", false)) {
                        zzsVar.zzc(new zzt(4, "Not supported by GmsCore", null));
                        return true;
                    }
                    zzsVar.zza(data);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }));
    final Queue zzd = new ArrayDeque();
    final SparseArray zze = new SparseArray();

    zzp(zzv zzvVar, zzo zzoVar) {
        this.zzf = zzvVar;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.zzf.zzc.execute(new Runnable() {
            @Override
            public final void run() {
                zzp zzpVar = this.zza;
                IBinder iBinder2 = iBinder;
                synchronized (zzpVar) {
                    if (iBinder2 == null) {
                        zzpVar.zza(0, "Null service connection");
                        return;
                    }
                    try {
                        zzpVar.zzc = new zzq(iBinder2);
                        zzpVar.zza = 2;
                        zzpVar.zzc();
                    } catch (RemoteException e10) {
                        zzpVar.zza(0, e10.getMessage());
                    }
                }
            }
        });
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.zzf.zzc.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.zza(2, "Service disconnected");
            }
        });
    }

    final synchronized void zza(int i10, @Nullable String str) {
        zzb(i10, str, null);
    }

    final synchronized void zzb(int i10, @Nullable String str, @Nullable Throwable th2) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                "Disconnected: ".concat(String.valueOf(str));
            }
            int i11 = this.zza;
            if (i11 == 0) {
                throw new IllegalStateException();
            }
            if (i11 != 1 && i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                this.zza = 4;
                return;
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.zza = 4;
            ConnectionTracker.getInstance().unbindService(this.zzf.zzb, this);
            zzt zztVar = new zzt(i10, str, th2);
            Iterator it = this.zzd.iterator();
            while (it.hasNext()) {
                ((zzs) it.next()).zzc(zztVar);
            }
            this.zzd.clear();
            for (int i12 = 0; i12 < this.zze.size(); i12++) {
                ((zzs) this.zze.valueAt(i12)).zzc(zztVar);
            }
            this.zze.clear();
        } catch (Throwable th3) {
            throw th3;
        }
    }

    final void zzc() {
        this.zzf.zzc.execute(new Runnable() {
            @Override
            public final void run() {
                final zzs zzsVar;
                while (true) {
                    final zzp zzpVar = this.zza;
                    synchronized (zzpVar) {
                        try {
                            if (zzpVar.zza != 2) {
                                return;
                            }
                            if (zzpVar.zzd.isEmpty()) {
                                zzpVar.zzf();
                                return;
                            } else {
                                zzsVar = (zzs) zzpVar.zzd.poll();
                                zzpVar.zze.put(zzsVar.zza, zzsVar);
                                zzpVar.zzf.zzc.schedule(new Runnable() {
                                    @Override
                                    public final void run() {
                                        zzpVar.zze(zzsVar.zza);
                                    }
                                }, 30L, TimeUnit.SECONDS);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        "Sending ".concat(String.valueOf(zzsVar));
                    }
                    zzv zzvVar = zzpVar.zzf;
                    Messenger messenger = zzpVar.zzb;
                    int i10 = zzsVar.zzc;
                    Context context = zzvVar.zzb;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i10;
                    messageObtain.arg1 = zzsVar.zza;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", zzsVar.zzb());
                    bundle.putString(PushConstants.PROVIDER_FIELD_PKG, context.getPackageName());
                    bundle.putBundle("data", zzsVar.zzd);
                    messageObtain.setData(bundle);
                    try {
                        zzpVar.zzc.zza(messageObtain);
                    } catch (RemoteException e10) {
                        zzpVar.zza(2, e10.getMessage());
                    }
                }
            }
        });
    }

    final synchronized void zzd() {
        if (this.zza == 1) {
            zza(1, "Timed out while binding");
        }
    }

    final synchronized void zze(int i10) {
        zzs zzsVar = (zzs) this.zze.get(i10);
        if (zzsVar != null) {
            Log.w("MessengerIpcClient", "Timing out request: " + i10);
            this.zze.remove(i10);
            zzsVar.zzc(new zzt(3, "Timed out waiting for response", null));
            zzf();
        }
    }

    final synchronized void zzf() {
        try {
            if (this.zza == 2 && this.zzd.isEmpty() && this.zze.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.zza = 3;
                ConnectionTracker.getInstance().unbindService(this.zzf.zzb, this);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    final synchronized boolean zzg(zzs zzsVar) {
        int i10 = this.zza;
        if (i10 != 0) {
            if (i10 == 1) {
                this.zzd.add(zzsVar);
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            this.zzd.add(zzsVar);
            zzc();
            return true;
        }
        this.zzd.add(zzsVar);
        Preconditions.checkState(this.zza == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.zza = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (ConnectionTracker.getInstance().bindService(this.zzf.zzb, intent, this, 1)) {
                this.zzf.zzc.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.zzd();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                zza(0, "Unable to bind to service");
            }
        } catch (SecurityException e10) {
            zzb(0, "Unable to bind to service", e10);
        }
        return true;
    }
}

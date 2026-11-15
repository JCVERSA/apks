package com.amazonaws.mobileconnectors.s3.transferutility;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;

public class TransferService extends Service {

    private static final Log f17890d = LogFactory.b(TransferService.class);

    static TransferNetworkLossHandler f17891e;

    boolean f17892a = true;

    private int f17893b = 1;

    private boolean f17894c = true;

    @Override
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) == 0) {
            return;
        }
        printWriter.printf("network status: %s\n", Boolean.valueOf(f17891e.e()));
        Map mapE = TransferStatusUpdater.c(this).e();
        printWriter.printf("# of active transfers: %d\n", Integer.valueOf(mapE.size()));
        for (TransferRecord transferRecord : mapE.values()) {
            printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.f17879p, transferRecord.f17880q, transferRecord.f17878o, Long.valueOf(transferRecord.f17871h), Long.valueOf(transferRecord.f17872i));
        }
        printWriter.flush();
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log log = f17890d;
        log.d("Starting Transfer Service to listen for network connectivity changes.");
        f17891e = TransferNetworkLossHandler.d(getApplicationContext());
        synchronized (this) {
            if (this.f17892a) {
                try {
                    log.d("Registering the network receiver");
                    registerReceiver(f17891e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f17892a = false;
                } catch (IllegalArgumentException unused) {
                    f17890d.j("Ignoring the exception trying to register the receiver for connectivity change.");
                } catch (IllegalStateException unused2) {
                    f17890d.j("Ignoring the leak in registering the receiver.");
                }
            }
        }
    }

    @Override
    public void onDestroy() {
        try {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    f17890d.d("Moving the service out of the Foreground state.");
                    synchronized (this) {
                        stopForeground(this.f17894c);
                    }
                    super.onDestroy();
                }
                f17890d.d("De-registering the network receiver.");
                synchronized (this) {
                    try {
                        if (!this.f17892a) {
                            unregisterReceiver(f17891e);
                            this.f17892a = true;
                            f17891e = null;
                        }
                        super.onDestroy();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (IllegalArgumentException unused) {
                f17890d.j("Exception trying to de-register the network receiver");
            }
        } catch (Exception e10) {
            f17890d.f("Error in moving the service out of the foreground state: " + e10);
        }
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                synchronized (this) {
                    try {
                        Notification notification = (Notification) intent.getParcelableExtra("notification");
                        if (notification != null) {
                            this.f17893b = intent.getIntExtra("ongoing-notification-id", this.f17893b);
                            this.f17894c = intent.getBooleanExtra("remove-notification", this.f17894c);
                            f17890d.d("Putting the service in Foreground state.");
                            startForeground(this.f17893b, notification);
                        } else {
                            f17890d.f("No notification is passed in the intent. Unable to transition to foreground.");
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Exception e10) {
                f17890d.f("Error in moving the service to foreground state: " + e10);
            }
            return 1;
        }
        synchronized (this) {
            if (this.f17892a) {
                try {
                    try {
                        f17890d.d("Registering the network receiver");
                        registerReceiver(f17891e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f17892a = false;
                    } catch (IllegalStateException unused) {
                        f17890d.j("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException unused2) {
                    f17890d.j("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
            return 1;
        }
    }
}

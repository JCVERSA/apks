package com.mgtv.thirdsdk.playcore.b;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import org.apache.commons.lang3.BooleanUtils;

public class b {
    private c a;
    private Handler e;
    private boolean f;
    private boolean i;
    private int g = com.hunantv.imgo.net.c.c();
    private String h = e();
    private BroadcastReceiver b = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (b.this.f) {
                b.this.d.removeMessages(2);
                b.this.d.sendEmptyMessage(2);
            }
        }
    };
    private IntentFilter c = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    private Handler d = new Handler() {
        @Override
        public void handleMessage(Message message) {
            if (message.what != 2) {
                return;
            }
            b.this.d();
        }
    };

    @SuppressLint({"HandlerLeak"})
    public b() {
    }

    public void d() {
        if (this.i || this.a == null) {
            return;
        }
        int iC = com.hunantv.imgo.net.c.c();
        boolean z = iC == 1;
        String strE = e();
        if (iC != this.g) {
            this.g = iC;
        } else if (iC != 0 || TextUtils.equals(strE, this.h)) {
            return;
        } else {
            this.h = strE;
        }
        this.a.a(z, this.i);
    }

    private static String e() {
        System.setProperty("java.net.preferIPv6Addresses", BooleanUtils.FALSE);
        String hostAddress = null;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress()) {
                        hostAddress = inetAddressNextElement.getHostAddress();
                        if (!hostAddress.contains("::")) {
                            return hostAddress;
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hostAddress != null ? hostAddress : ImgoP2pConstants.LOCAL_HOST;
    }

    private void f() {
        try {
            Handler handler = this.e;
            if (handler != null) {
                handler.getLooper().quitSafely();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized void a(Context context) {
        if (!this.f && context != null && context.getApplicationContext() != null) {
            this.f = true;
            try {
                context.getApplicationContext().registerReceiver(this.b, this.c);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public synchronized void b(Context context) {
        if (this.f && context != null && context.getApplicationContext() != null) {
            this.f = false;
            try {
                context.getApplicationContext().unregisterReceiver(this.b);
            } catch (Exception e) {
                e.printStackTrace();
            }
            f();
            return;
        }
        f();
    }

    public void c() {
        this.i = false;
        if (this.f) {
            this.d.sendEmptyMessage(2);
        }
    }

    public void a() {
        this.i = true;
    }

    public void a(c cVar) {
        this.a = cVar;
    }

    public void b() {
        this.i = false;
    }
}

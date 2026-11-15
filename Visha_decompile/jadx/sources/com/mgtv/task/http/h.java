package com.mgtv.task.http;

import android.content.Context;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import okhttp3.Dns;

public class h implements Dns {
    private static h a;
    private Context b;

    private h(Context context) {
        this.b = context;
    }

    public static h a(Context context) {
        if (a == null) {
            a = new h(context);
        }
        return a;
    }

    @Override
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        return Dns.SYSTEM.lookup(str);
    }
}

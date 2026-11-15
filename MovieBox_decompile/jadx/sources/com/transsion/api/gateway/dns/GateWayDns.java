package com.transsion.api.gateway.dns;

import com.transsion.api.gateway.utils.GatewayUtils;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.Dns;

public class GateWayDns implements Dns {

    public static AtomicBoolean f41392a = new AtomicBoolean(false);
    private static volatile GateWayDns mInstance;

    public static GateWayDns getInstance() {
        if (mInstance == null) {
            synchronized (GateWayDns.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new GateWayDns();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return mInstance;
    }

    public boolean getIsUseGatewayDns() {
        return f41392a.get();
    }

    @Override
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        b bVar;
        CopyOnWriteArrayList copyOnWriteArrayList;
        GatewayUtils.L.d("look up");
        if (!com.transsion.api.gateway.config.b.a().f41389a.f41367a) {
            GatewayUtils.L.d("dns function closed");
            return Dns.SYSTEM.lookup(str);
        }
        if (!GatewayUtils.canUseGateWay(str)) {
            return Dns.SYSTEM.lookup(str);
        }
        if (!getIsUseGatewayDns()) {
            GatewayUtils.L.d("use dns");
            return Dns.SYSTEM.lookup(str);
        }
        ArrayList<InetAddress> arrayList = new ArrayList();
        c.a().getClass();
        synchronized (c.class) {
            try {
                bVar = null;
                b bVar2 = null;
                for (b bVar3 : c.f41395a) {
                    String str2 = bVar3.f41393a;
                    if (str2 != null && str2.equals(str)) {
                        bVar2 = bVar3;
                    }
                }
                if (bVar2 != null) {
                    bVar = new b(bVar2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (bVar != null && (copyOnWriteArrayList = bVar.f41394b) != null && copyOnWriteArrayList.size() != 0) {
            Iterator it = bVar.f41394b.iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(InetAddress.getByAddress(str, GatewayUtils.textToNumericFormatV4(((d) it.next()).f41397b)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (arrayList.size() <= 0) {
            GatewayUtils.L.d("use dns");
            return Dns.SYSTEM.lookup(str);
        }
        GatewayUtils.L.d("use nodns ips");
        for (InetAddress inetAddress : arrayList) {
            GatewayUtils.L.d(inetAddress.getHostName() + inetAddress.getHostAddress());
        }
        return arrayList;
    }

    public void setIsUseGatewayDns(boolean z10) {
        f41392a.set(z10);
    }
}

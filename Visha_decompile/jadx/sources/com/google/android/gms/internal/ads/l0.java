package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.eve;
import defpackage.fve;
import defpackage.gve;
import defpackage.hve;
import defpackage.ive;
import defpackage.jve;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

public final class l0 {
    public final int a;
    public final eve b = new hve();

    public l0(int i) {
        this.a = i;
    }

    public final String a(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(((String) arrayList.get(i)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] strArrSplit = sb.toString().split("\n");
        if (strArrSplit.length == 0) {
            return "";
        }
        fve fveVar = new fve();
        int i2 = this.a;
        PriorityQueue priorityQueue = new PriorityQueue(i2, new zzazj(this));
        for (String str : strArrSplit) {
            String[] strArrB = gve.b(str, false);
            if (strArrB.length != 0) {
                jve.c(strArrB, i2, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                fveVar.b.write(this.b.b(((ive) it.next()).b));
            } catch (IOException e) {
                int i3 = zze.zza;
                zzo.zzh("Error while writing hash to byteStream", e);
            }
        }
        return fveVar.toString();
    }
}

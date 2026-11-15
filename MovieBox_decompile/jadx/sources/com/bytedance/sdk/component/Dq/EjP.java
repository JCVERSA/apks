package com.bytedance.sdk.component.Dq;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.utils.Zq;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class EjP {
    private static AtomicInteger TKC = new AtomicInteger(0);
    public static final String[] Sj = {"com.bytedance.sdk", "com.bykv.vk", "com.ss", "tt_pangle"};
    public static final String[] sP = {"tt_pangle", "bd_tracker"};
    private static int EjP = 0;
    private static int HiB = 0;

    public static class Sj {
        public String EjP;
        public int Sj;
        public String TKC;
        public String sP;

        public Sj(String str, int i10, String str2, String str3) {
            this.TKC = str;
            this.Sj = i10;
            this.EjP = str2;
            this.sP = str3;
        }

        public void Sj(int i10) {
            this.Sj = i10;
        }

        public String toString() {
            return "ThreadModel{times=" + this.Sj + ", name='" + this.sP + "', lastStackStack='" + this.TKC + "'}";
        }

        public int Sj() {
            return this.Sj;
        }
    }

    public static void Sj() {
        try {
            sP();
        } catch (Throwable unused) {
        }
    }

    private static void sP() {
        int i10;
        TKC tkcUA = vS.uA();
        if (tkcUA == null) {
            return;
        }
        int i11 = 1;
        int iAddAndGet = TKC.addAndGet(1);
        int i12 = vS.TKC;
        if (i12 < 0 || iAddAndGet % i12 != 0 || Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        HashMap map = new HashMap();
        if (allStackTraces == null) {
            return;
        }
        boolean zSj = Zq.Sj();
        int size = allStackTraces.size();
        if (size > HiB) {
            HiB = size;
        }
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
        int i13 = 0;
        int i14 = 0;
        while (it.hasNext()) {
            Map.Entry<Thread, StackTraceElement[]> next = it.next();
            i14 += i11;
            Thread key = next.getKey();
            StackTraceElement[] value = next.getValue();
            StringBuilder sb2 = new StringBuilder("\n");
            if (zSj) {
                sb2.append("Thread Name is : " + key.getName());
                sb2.append("\n");
            }
            int length = value.length;
            String str = null;
            int i15 = 0;
            while (i15 < length) {
                String string = value[i15].toString();
                Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = it;
                if (zSj) {
                    sb2.append(string + "\n");
                }
                if (TextUtils.isEmpty(str) && (Sj(string, Sj) || Sj(key.getName(), sP))) {
                    i13++;
                    str = string;
                }
                i15++;
                it = it2;
            }
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it3 = it;
            if (zSj) {
                if (TextUtils.isEmpty(str)) {
                    i10 = 1;
                } else {
                    String str2 = str + UrlUtils.AND_MARK + key.getName();
                    Sj sj2 = (Sj) map.get(str2);
                    if (sj2 != null) {
                        i10 = 1;
                        sj2.Sj(sj2.Sj() + 1);
                    } else {
                        i10 = 1;
                        sj2 = new Sj(str2, 1, sb2.toString(), key.getName());
                    }
                    map.put(str2, sj2);
                }
                if (!TextUtils.isEmpty(sb2.toString())) {
                    Log.e("PoolTaskStatistics", "Thread index = " + i14 + "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
                    Log.w("PoolTaskStatistics", sb2.toString());
                }
            } else {
                i10 = 1;
            }
            i11 = i10;
            it = it3;
        }
        if (i13 > EjP) {
            EjP = i13;
        }
        if (zSj) {
            Log.e("PoolTaskStatistics", "SDK current threads=" + i13 + ", SDK Max threads=" + EjP + ", Application threads = " + size + ", Application max threads = " + HiB);
            Iterator it4 = map.entrySet().iterator();
            while (it4.hasNext()) {
                ((Sj) ((Map.Entry) it4.next()).getValue()).toString();
            }
        }
        tkcUA.Sj(new com.bytedance.sdk.component.Dq.sP.Sj(i13, EjP, size, HiB));
    }

    private static boolean Sj(String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}

package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.util.PriorityQueue;

public abstract class jve {
    public static long a(long j, int i) {
        if (i == 1) {
            return j;
        }
        int i2 = i >> 1;
        long j2 = (j * j) % 1073807359;
        return ((i & 1) == 0 ? a(j2, i2) : j * (a(j2, i2) % 1073807359)) % 1073807359;
    }

    public static String b(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            int i4 = zze.zza;
            zzo.zzg("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i5 = i3 - 1;
            if (i >= i5) {
                sb.append(strArr[i5]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    public static void c(String[] strArr, int i, int i2, PriorityQueue priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            d(i, e(strArr, 0, length), b(strArr, 0, length), length, priorityQueue);
            return;
        }
        long jE = e(strArr, 0, 6);
        d(i, jE, b(strArr, 0, 6), 6, priorityQueue);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 >= length2 - 5) {
                return;
            }
            long jA = gve.a(strArr[i3 - 1]);
            long jA2 = gve.a(strArr[i3 + 5]);
            String strB = b(strArr, i3, 6);
            jE = ((((((jE + 1073807359) - ((a(16785407L, 5) * ((jA + 2147483647L) % 1073807359)) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((jA2 + 2147483647L) % 1073807359)) % 1073807359;
            d(i, jE, strB, length2, priorityQueue);
            i3++;
        }
    }

    public static void d(int i, long j, String str, int i2, PriorityQueue priorityQueue) {
        ive iveVar = new ive(j, str, i2);
        if ((priorityQueue.size() != i || (((ive) priorityQueue.peek()).c <= iveVar.c && ((ive) priorityQueue.peek()).a <= iveVar.a)) && !priorityQueue.contains(iveVar)) {
            priorityQueue.add(iveVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static long e(String[] strArr, int i, int i2) {
        long jA = (((long) gve.a(strArr[0])) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            jA = (((jA * 16785407) % 1073807359) + ((((long) gve.a(strArr[i3])) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return jA;
    }
}

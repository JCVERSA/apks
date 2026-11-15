package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.Zq;
import java.util.Deque;

public class Jcg extends vS {
    private boolean Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
        if ('-' != Sj(i10, str)) {
            return com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(Sj(i10, str));
        }
        if (deque.peek() != null && !com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(deque.peek().Sj())) {
            return false;
        }
        if (com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(Sj(i10 + 1, str))) {
            return true;
        }
        throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i10));
    }

    @Override
    public int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        char cSj;
        if (!Sj(str, i10, deque)) {
            return sj2.Sj(str, i10, deque);
        }
        int i11 = Sj(i10, str) == '-' ? i10 + 1 : i10;
        boolean z10 = false;
        while (true) {
            cSj = Sj(i11, str);
            if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(cSj) && (z10 || cSj != '.')) {
                break;
            }
            i11++;
            if (cSj == '.') {
                z10 = true;
            }
        }
        if (cSj != '.') {
            deque.push(new Zq(str.substring(i10, i11)));
            return i11;
        }
        throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i10, i11));
    }
}

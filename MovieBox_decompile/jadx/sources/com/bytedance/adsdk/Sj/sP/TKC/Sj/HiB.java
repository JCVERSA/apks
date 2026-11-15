package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import java.util.Deque;

public class HiB extends vS {
    @Override
    public int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        char cSj;
        int i11 = i10;
        while (true) {
            cSj = Sj(i11, str);
            if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.sP(cSj) && !com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(cSj)) {
                break;
            }
            i11++;
        }
        if (cSj != '(') {
            return sj2.Sj(str, i10, deque);
        }
        deque.push(new com.bytedance.adsdk.Sj.sP.sP.Sj.TEQ(str.substring(i10, i11)));
        return i11 + 1;
    }
}

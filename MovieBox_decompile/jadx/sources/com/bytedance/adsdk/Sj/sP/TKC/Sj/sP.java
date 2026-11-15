package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.sU;
import java.util.Deque;

public class sP extends vS {
    @Override
    public int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        if ('\'' != Sj(i10, str)) {
            return sj2.Sj(str, i10, deque);
        }
        int i11 = i10 + 1;
        int length = str.length();
        int i12 = i11;
        while (i12 < length && Sj(i12, str) != '\'') {
            i12++;
        }
        if (Sj(i12, str) != '\'') {
            throw new com.bytedance.adsdk.Sj.Sj.Sj("String expression not surrounded by '", str.substring(i10));
        }
        deque.push(new sU(str.substring(i11, i12)));
        return i12 + 1;
    }
}

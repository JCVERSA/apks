package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.uvD;
import java.util.Deque;

public class Dq extends vS {
    @Override
    public int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.EjP(Sj(i10, str))) {
            return sj2.Sj(str, i10, deque);
        }
        int i11 = i10 + 1;
        String str2 = new String(new char[]{Sj(i10, str), Sj(i11, str)});
        if (com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(str2) != null) {
            deque.push(new uvD(com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(str2)));
            return i10 + 2;
        }
        String strValueOf = String.valueOf(Sj(i10, str));
        if (com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(strValueOf) != null) {
            deque.push(new uvD(com.bytedance.adsdk.Sj.sP.EjP.TKC.Sj(strValueOf)));
            return i11;
        }
        throw new IllegalArgumentException("Unrecognized:" + strValueOf + "examine:" + str.substring(0, i10));
    }
}

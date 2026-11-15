package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.dx;
import java.util.Deque;

public class EjP extends vS {
    @Override
    public int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        if ('(' != Sj(i10, str)) {
            return sj2.Sj(str, i10, deque);
        }
        deque.push(new dx(com.bytedance.adsdk.Sj.sP.EjP.EjP.LEFT_PAREN));
        return i10 + 1;
    }
}

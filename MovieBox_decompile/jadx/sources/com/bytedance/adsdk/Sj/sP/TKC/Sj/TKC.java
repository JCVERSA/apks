package com.bytedance.adsdk.Sj.sP.TKC.Sj;

import com.bytedance.adsdk.Sj.sP.sP.Sj.zR;
import java.util.Deque;

public class TKC extends vS {
    @Override
    public int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        char cSj = Sj(i10, str);
        return (com.bytedance.adsdk.Sj.sP.HiB.Sj.sP(cSj) || cSj == '$') ? Sj(str, i10, deque) : sj2.Sj(str, i10, deque);
    }

    private int Sj(String str, int i10, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
        int i11;
        int i12 = 0;
        while (true) {
            i11 = i12 + i10;
            char cSj = Sj(i11, str);
            if (!com.bytedance.adsdk.Sj.sP.HiB.Sj.sP(cSj) && !com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC(cSj) && '.' != cSj && '[' != cSj && ']' != cSj && '_' != cSj && '-' != cSj && '$' != cSj) {
                break;
            }
            i12++;
        }
        String strSubstring = str.substring(i10, i11);
        if (com.bytedance.adsdk.Sj.sP.EjP.Sj.Sj(strSubstring) != null) {
            deque.push(new com.bytedance.adsdk.Sj.sP.sP.Sj.Jcg(strSubstring));
        } else {
            deque.push(new zR(strSubstring));
        }
        return i11;
    }
}

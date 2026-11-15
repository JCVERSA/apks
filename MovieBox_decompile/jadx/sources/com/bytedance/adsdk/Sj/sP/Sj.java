package com.bytedance.adsdk.Sj.sP;

import com.bytedance.adsdk.Sj.sP.TKC.Sj.Dq;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.EjP;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.HiB;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.Jcg;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.TEQ;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.TKC;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.sP;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.uA;
import com.bytedance.adsdk.Sj.sP.TKC.Sj.vS;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;

public class Sj {
    private static final com.bytedance.adsdk.Sj.sP.TKC.Sj Sj;
    private Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> EjP = new LinkedList();
    private String HiB;
    private com.bytedance.adsdk.Sj.sP.sP.Sj TKC;
    private final com.bytedance.adsdk.Sj.sP.TKC.Sj sP;

    static {
        int i10 = 8;
        vS[] vSVarArr = {new TEQ(), new EjP(), new uA(), new sP(), new HiB(), new com.bytedance.adsdk.Sj.sP.TKC.Sj.Sj(), new Jcg(), new TKC(), new Dq()};
        final com.bytedance.adsdk.Sj.sP.TKC.Sj sj2 = new com.bytedance.adsdk.Sj.sP.TKC.Sj() {
            @Override
            public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
                return i11;
            }
        };
        while (i10 >= 0) {
            final vS vSVar = vSVarArr[i10];
            i10--;
            sj2 = new com.bytedance.adsdk.Sj.sP.TKC.Sj() {
                @Override
                public int Sj(String str, int i11, Deque<com.bytedance.adsdk.Sj.sP.sP.Sj> deque) {
                    return vSVar.Sj(str, i11, deque, sj2);
                }
            };
        }
        Sj = sj2;
    }

    private Sj(String str, com.bytedance.adsdk.Sj.sP.TKC.Sj sj2) {
        this.sP = sj2;
        this.HiB = str;
        try {
            Sj();
        } catch (Exception e10) {
            throw new com.bytedance.adsdk.Sj.Sj.sP(str, e10);
        }
    }

    public static Sj Sj(String str) {
        return new Sj(str, Sj);
    }

    private void Sj() {
        int length = this.HiB.length();
        int i10 = 0;
        while (i10 < length) {
            int iSj = this.sP.Sj(this.HiB, i10, this.EjP);
            if (iSj == i10) {
                throw new IllegalArgumentException("Unrecognized expression, unrecognized characters encountered during parsing:" + this.HiB.substring(0, i10));
            }
            i10 = iSj;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            com.bytedance.adsdk.Sj.sP.sP.Sj sjPollFirst = this.EjP.pollFirst();
            if (sjPollFirst == null) {
                this.TKC = com.bytedance.adsdk.Sj.sP.HiB.sP.Sj(arrayList, this.HiB, i10);
                this.EjP = null;
                return;
            }
            arrayList.add(0, sjPollFirst);
        }
    }

    public <T> T Sj(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("default_key", jSONObject);
        return (T) Sj(map);
    }

    public <T> T Sj(Map<String, JSONObject> map) {
        return (T) this.TKC.Sj(map);
    }
}

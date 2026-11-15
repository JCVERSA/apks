package com.bytedance.sdk.component.vS.Sj.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class sP extends Sj {
    private final EjP Sj;
    private final Queue<String> TKC;
    private final TKC sP;

    public sP() {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.TKC = concurrentLinkedQueue;
        this.Sj = new vS(concurrentLinkedQueue);
        this.sP = new TKC();
    }

    @Override
    public synchronized void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i10) {
        EjP ejP;
        if (i10 != 5) {
            try {
                if (Dq.Jcg().uvD().Sj(Dq.Jcg().vS()) && (ejP = this.Sj) != null && sj2 != null) {
                    ejP.Sj(sj2, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        TKC tkc = this.sP;
        if (tkc != null && sj2 != null) {
            tkc.Sj(sj2, i10);
        }
    }

    @Override
    public synchronized void Sj(int i10, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        try {
            Iterator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> it = list.iterator();
            while (it.hasNext()) {
                this.TKC.remove(it.next().TKC());
            }
            EjP ejP = this.Sj;
            if (ejP != null) {
                ejP.Sj(i10, list);
            }
            TKC tkc = this.sP;
            if (tkc != null) {
                tkc.Sj(i10, list);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public synchronized List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i10, int i11, List<String> list) {
        List list2;
        try {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj = this.Sj.Sj(i10, i11, list);
            if (listSj != null && listSj.size() != 0) {
                listSj.size();
                if (i10 == 1 || i10 == 2) {
                    list2 = listSj;
                    List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSP = this.sP.sP((com.bytedance.sdk.component.vS.Sj.EjP.Sj) listSj.get(0), listSj.size());
                    list2 = listSj;
                    if (listSP != null && listSP.size() != 0) {
                        list2 = listSj;
                        listSP.size();
                        HashMap map = new HashMap();
                        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 : listSP) {
                            map.put(sj2.TKC(), sj2);
                        }
                        ArrayList arrayList = new ArrayList(this.TKC);
                        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj3 : listSP) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                if (TextUtils.equals(sj3.TKC(), (String) it.next())) {
                                    map.remove(sj3.TKC());
                                    break;
                                }
                            }
                        }
                        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj4 : listSj) {
                            map.put(sj4.TKC(), sj4);
                        }
                        listSj.clear();
                        Iterator it2 = map.keySet().iterator();
                        while (it2.hasNext()) {
                            listSj.add(map.get((String) it2.next()));
                        }
                        listSP.clear();
                        list2 = listSj;
                    }
                }
            } else {
                ArrayList<String> arrayList2 = new ArrayList(this.TKC);
                if (list != null && !list.isEmpty()) {
                    arrayList2.addAll(list);
                }
                List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj2 = this.sP.Sj(i10, i11, arrayList2);
                if (listSj2 != null && listSj2.size() != 0) {
                    HashMap map2 = new HashMap();
                    for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj5 : listSj2) {
                        map2.put(sj5.TKC(), sj5);
                    }
                    arrayList2.size();
                    if (arrayList2.size() != 0) {
                        for (String str : arrayList2) {
                            if (map2.get(str) != null) {
                                map2.remove(str);
                            }
                        }
                    }
                    listSj2.clear();
                    Iterator it3 = map2.keySet().iterator();
                    while (it3.hasNext()) {
                        listSj2.add(map2.get((String) it3.next()));
                    }
                }
                list2 = listSj2;
            }
            if (list2 != null && !list2.isEmpty()) {
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    this.TKC.offer(((com.bytedance.sdk.component.vS.Sj.EjP.Sj) it4.next()).TKC());
                }
                return list2;
            }
            return new ArrayList();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized boolean Sj(int i10, boolean z10) {
        if (this.Sj.Sj(i10, z10)) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.fF(), 1);
            return true;
        }
        if ((i10 != 1 && i10 != 2) || !this.sP.Sj(i10, z10)) {
            return false;
        }
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.JcM(), 1);
        return true;
    }

    @Override
    public void Sj(int i10, long j10) {
        this.sP.Sj(i10, j10);
        this.Sj.Sj(i10, j10);
    }
}

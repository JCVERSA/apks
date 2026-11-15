package com.bykv.vk.openvk.Sj.Sj.sP.sP.vS;

import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public abstract class Sj {

    class C0170Sj extends Thread {
        final Sj Sj;
        private final Queue<a> EjP = new ArrayBlockingQueue(10);
        private Queue<a> sP = new LinkedBlockingQueue();
        private boolean TKC = true;
        private Queue<a> HiB = new LinkedBlockingQueue();

        private class a {

            public int f19685a;

            public String f19686b;

            public String[] f19687c;

            public int f19688d;

            public String f19689e;

            public TKC f19690f;

            public a() {
            }
        }

        public C0170Sj(Sj sj2) {
        }

        private a Sj(int i10, TKC tkc) {
            this.EjP.size();
            a aVarPoll = this.EjP.poll();
            if (aVarPoll == null) {
                aVarPoll = new a();
            }
            aVarPoll.f19685a = i10;
            aVarPoll.f19690f = tkc;
            return aVarPoll;
        }

        private void TKC(a aVar) {
            if (aVar == null) {
                return;
            }
            this.sP.offer(aVar);
            notify();
        }

        private synchronized void sP(a aVar) {
            this.HiB.add(aVar);
            notify();
        }

        @Override
        public void run() {
            while (this.TKC) {
                synchronized (this) {
                    try {
                        if (!this.HiB.isEmpty()) {
                            Sj();
                        }
                        while (!this.sP.isEmpty()) {
                            a aVarPoll = this.sP.poll();
                            if (aVarPoll != null) {
                                int i10 = aVarPoll.f19685a;
                                if (i10 == 0) {
                                    String[] strArr = aVarPoll.f19687c;
                                    if (strArr != null && strArr.length > 0) {
                                        ArrayList arrayList = new ArrayList();
                                        for (String str : aVarPoll.f19687c) {
                                            if (h6.a.r(str)) {
                                                arrayList.add(str);
                                            }
                                        }
                                        EjP.j().h(false, !TextUtils.isEmpty(aVarPoll.f19689e), aVarPoll.f19688d, aVarPoll.f19686b, (String[]) arrayList.toArray(new String[arrayList.size()]));
                                    }
                                } else if (i10 == 1) {
                                    EjP.j().e(aVarPoll.f19686b);
                                } else if (i10 == 2) {
                                    EjP.j().a();
                                } else if (i10 == 3) {
                                    EjP.j().a();
                                    com.bykv.vk.openvk.Sj.Sj.sP.sP.a.a();
                                    com.bykv.vk.openvk.Sj.Sj.sP.sP.a.b();
                                } else if (i10 == 4) {
                                    EjP.j().a();
                                    this.TKC = false;
                                }
                                Sj(aVarPoll);
                            }
                        }
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        private void Sj(a aVar) {
            aVar.f19687c = null;
            aVar.f19686b = null;
            aVar.f19685a = -1;
            aVar.f19690f = null;
            this.EjP.offer(aVar);
        }

        private void Sj() {
            while (true) {
                a aVarPoll = this.HiB.poll();
                if (aVarPoll == null) {
                    return;
                }
                aVarPoll.f19686b = aVarPoll.f19690f.Fmk();
                aVarPoll.f19687c = new String[]{aVarPoll.f19690f.Fmk()};
                int iSj = aVarPoll.f19690f.Sj();
                if (iSj <= 0) {
                    iSj = aVarPoll.f19690f.TKC();
                }
                aVarPoll.f19688d = iSj;
                aVarPoll.f19689e = aVarPoll.f19690f.sef();
                if (!TextUtils.isEmpty(aVarPoll.f19690f.sef())) {
                    aVarPoll.f19686b = aVarPoll.f19690f.sef();
                }
                aVarPoll.f19690f = null;
                TKC(aVarPoll);
            }
        }

        public void Sj(TKC tkc) {
            sP(Sj(0, tkc));
        }
    }
}

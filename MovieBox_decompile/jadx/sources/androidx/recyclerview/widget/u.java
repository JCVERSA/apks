package androidx.recyclerview.widget;

import androidx.collection.x;
import androidx.collection.x0;

class u {

    final x0 f14117a = new x0();

    final x f14118b = new x();

    static class a {

        static androidx.core.util.f f14119d = new androidx.core.util.g(20);

        int f14120a;

        RecyclerView.j.c f14121b;

        RecyclerView.j.c f14122c;

        private a() {
        }

        static void a() {
            while (f14119d.acquire() != null) {
            }
        }

        static a b() {
            a aVar = (a) f14119d.acquire();
            return aVar == null ? new a() : aVar;
        }

        static void c(a aVar) {
            aVar.f14120a = 0;
            aVar.f14121b = null;
            aVar.f14122c = null;
            f14119d.release(aVar);
        }
    }

    interface b {
        void a(RecyclerView.a0 a0Var, RecyclerView.j.c cVar, RecyclerView.j.c cVar2);

        void b(RecyclerView.a0 a0Var);

        void c(RecyclerView.a0 a0Var, RecyclerView.j.c cVar, RecyclerView.j.c cVar2);

        void d(RecyclerView.a0 a0Var, RecyclerView.j.c cVar, RecyclerView.j.c cVar2);
    }

    u() {
    }

    private RecyclerView.j.c l(RecyclerView.a0 a0Var, int i10) {
        a aVar;
        RecyclerView.j.c cVar;
        int iIndexOfKey = this.f14117a.indexOfKey(a0Var);
        if (iIndexOfKey >= 0 && (aVar = (a) this.f14117a.valueAt(iIndexOfKey)) != null) {
            int i11 = aVar.f14120a;
            if ((i11 & i10) != 0) {
                int i12 = (~i10) & i11;
                aVar.f14120a = i12;
                if (i10 == 4) {
                    cVar = aVar.f14121b;
                } else {
                    if (i10 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVar.f14122c;
                }
                if ((i12 & 12) == 0) {
                    this.f14117a.removeAt(iIndexOfKey);
                    a.c(aVar);
                }
                return cVar;
            }
        }
        return null;
    }

    void a(RecyclerView.a0 a0Var, RecyclerView.j.c cVar) {
        a aVarB = (a) this.f14117a.get(a0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14117a.put(a0Var, aVarB);
        }
        aVarB.f14120a |= 2;
        aVarB.f14121b = cVar;
    }

    void b(RecyclerView.a0 a0Var) {
        a aVarB = (a) this.f14117a.get(a0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14117a.put(a0Var, aVarB);
        }
        aVarB.f14120a |= 1;
    }

    void c(long j10, RecyclerView.a0 a0Var) {
        this.f14118b.k(j10, a0Var);
    }

    void d(RecyclerView.a0 a0Var, RecyclerView.j.c cVar) {
        a aVarB = (a) this.f14117a.get(a0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14117a.put(a0Var, aVarB);
        }
        aVarB.f14122c = cVar;
        aVarB.f14120a |= 8;
    }

    void e(RecyclerView.a0 a0Var, RecyclerView.j.c cVar) {
        a aVarB = (a) this.f14117a.get(a0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14117a.put(a0Var, aVarB);
        }
        aVarB.f14121b = cVar;
        aVarB.f14120a |= 4;
    }

    void f() {
        this.f14117a.clear();
        this.f14118b.b();
    }

    RecyclerView.a0 g(long j10) {
        return (RecyclerView.a0) this.f14118b.e(j10);
    }

    boolean h(RecyclerView.a0 a0Var) {
        a aVar = (a) this.f14117a.get(a0Var);
        return (aVar == null || (aVar.f14120a & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.a0 a0Var) {
        a aVar = (a) this.f14117a.get(a0Var);
        return (aVar == null || (aVar.f14120a & 4) == 0) ? false : true;
    }

    void j() {
        a.a();
    }

    public void k(RecyclerView.a0 a0Var) {
        p(a0Var);
    }

    RecyclerView.j.c m(RecyclerView.a0 a0Var) {
        return l(a0Var, 8);
    }

    RecyclerView.j.c n(RecyclerView.a0 a0Var) {
        return l(a0Var, 4);
    }

    void o(b bVar) {
        for (int size = this.f14117a.size() - 1; size >= 0; size--) {
            RecyclerView.a0 a0Var = (RecyclerView.a0) this.f14117a.keyAt(size);
            a aVar = (a) this.f14117a.removeAt(size);
            int i10 = aVar.f14120a;
            if ((i10 & 3) == 3) {
                bVar.b(a0Var);
            } else if ((i10 & 1) != 0) {
                RecyclerView.j.c cVar = aVar.f14121b;
                if (cVar == null) {
                    bVar.b(a0Var);
                } else {
                    bVar.c(a0Var, cVar, aVar.f14122c);
                }
            } else if ((i10 & 14) == 14) {
                bVar.a(a0Var, aVar.f14121b, aVar.f14122c);
            } else if ((i10 & 12) == 12) {
                bVar.d(a0Var, aVar.f14121b, aVar.f14122c);
            } else if ((i10 & 4) != 0) {
                bVar.c(a0Var, aVar.f14121b, null);
            } else if ((i10 & 8) != 0) {
                bVar.a(a0Var, aVar.f14121b, aVar.f14122c);
            }
            a.c(aVar);
        }
    }

    void p(RecyclerView.a0 a0Var) {
        a aVar = (a) this.f14117a.get(a0Var);
        if (aVar == null) {
            return;
        }
        aVar.f14120a &= -2;
    }

    void q(RecyclerView.a0 a0Var) {
        for (int iN = this.f14118b.n() - 1; iN >= 0; iN--) {
            if (a0Var == this.f14118b.o(iN)) {
                this.f14118b.m(iN);
                break;
            }
        }
        a aVar = (a) this.f14117a.remove(a0Var);
        if (aVar != null) {
            a.c(aVar);
        }
    }
}

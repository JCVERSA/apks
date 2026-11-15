package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;

final class a implements l.a {

    private androidx.core.util.f f14024a;

    final ArrayList f14025b;

    final ArrayList f14026c;

    final InterfaceC0105a f14027d;

    Runnable f14028e;

    final boolean f14029f;

    final l f14030g;

    private int f14031h;

    interface InterfaceC0105a {
        void a(int i10, int i11);

        void b(b bVar);

        void c(b bVar);

        void d(int i10, int i11);

        void e(int i10, int i11, Object obj);

        RecyclerView.a0 f(int i10);

        void g(int i10, int i11);

        void h(int i10, int i11);
    }

    static final class b {

        int f14032a;

        int f14033b;

        Object f14034c;

        int f14035d;

        b(int i10, int i11, int i12, Object obj) {
            this.f14032a = i10;
            this.f14033b = i11;
            this.f14035d = i12;
            this.f14034c = obj;
        }

        String a() {
            int i10 = this.f14032a;
            if (i10 == 1) {
                return "add";
            }
            if (i10 == 2) {
                return "rm";
            }
            if (i10 != 4) {
                return i10 != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i10 = this.f14032a;
            if (i10 != bVar.f14032a) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.f14035d - this.f14033b) == 1 && this.f14035d == bVar.f14033b && this.f14033b == bVar.f14035d) {
                return true;
            }
            if (this.f14035d != bVar.f14035d || this.f14033b != bVar.f14033b) {
                return false;
            }
            Object obj2 = this.f14034c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f14034c)) {
                    return false;
                }
            } else if (bVar.f14034c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f14032a * 31) + this.f14033b) * 31) + this.f14035d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f14033b + "c:" + this.f14035d + ",p:" + this.f14034c + "]";
        }
    }

    a(InterfaceC0105a interfaceC0105a) {
        this(interfaceC0105a, false);
    }

    private void c(b bVar) {
        v(bVar);
    }

    private void d(b bVar) {
        v(bVar);
    }

    private void f(b bVar) {
        boolean z10;
        byte b10;
        int i10 = bVar.f14033b;
        int i11 = bVar.f14035d + i10;
        byte b11 = -1;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            if (this.f14027d.f(i12) != null || h(i12)) {
                if (b11 == 0) {
                    k(a(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 1;
            } else {
                if (b11 == 1) {
                    v(a(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 0;
            }
            if (z10) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            b11 = b10;
        }
        if (i13 != bVar.f14035d) {
            b(bVar);
            bVar = a(2, i10, i13, null);
        }
        if (b11 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private void g(b bVar) {
        int i10 = bVar.f14033b;
        int i11 = bVar.f14035d + i10;
        int i12 = 0;
        byte b10 = -1;
        int i13 = i10;
        while (i10 < i11) {
            if (this.f14027d.f(i10) != null || h(i10)) {
                if (b10 == 0) {
                    k(a(4, i13, i12, bVar.f14034c));
                    i13 = i10;
                    i12 = 0;
                }
                b10 = 1;
            } else {
                if (b10 == 1) {
                    v(a(4, i13, i12, bVar.f14034c));
                    i13 = i10;
                    i12 = 0;
                }
                b10 = 0;
            }
            i12++;
            i10++;
        }
        if (i12 != bVar.f14035d) {
            Object obj = bVar.f14034c;
            b(bVar);
            bVar = a(4, i13, i12, obj);
        }
        if (b10 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private boolean h(int i10) {
        int size = this.f14026c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f14026c.get(i11);
            int i12 = bVar.f14032a;
            if (i12 == 8) {
                if (n(bVar.f14035d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = bVar.f14033b;
                int i14 = bVar.f14035d + i13;
                while (i13 < i14) {
                    if (n(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(b bVar) {
        int i10;
        int i11 = bVar.f14032a;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iZ = z(bVar.f14033b, i11);
        int i12 = bVar.f14033b;
        int i13 = bVar.f14032a;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < bVar.f14035d; i15++) {
            int iZ2 = z(bVar.f14033b + (i10 * i15), bVar.f14032a);
            int i16 = bVar.f14032a;
            if (i16 == 2 ? iZ2 != iZ : !(i16 == 4 && iZ2 == iZ + 1)) {
                b bVarA = a(i16, iZ, i14, bVar.f14034c);
                l(bVarA, i12);
                b(bVarA);
                if (bVar.f14032a == 4) {
                    i12 += i14;
                }
                i14 = 1;
                iZ = iZ2;
            } else {
                i14++;
            }
        }
        Object obj = bVar.f14034c;
        b(bVar);
        if (i14 > 0) {
            b bVarA2 = a(bVar.f14032a, iZ, i14, obj);
            l(bVarA2, i12);
            b(bVarA2);
        }
    }

    private void v(b bVar) {
        this.f14026c.add(bVar);
        int i10 = bVar.f14032a;
        if (i10 == 1) {
            this.f14027d.g(bVar.f14033b, bVar.f14035d);
            return;
        }
        if (i10 == 2) {
            this.f14027d.d(bVar.f14033b, bVar.f14035d);
            return;
        }
        if (i10 == 4) {
            this.f14027d.e(bVar.f14033b, bVar.f14035d, bVar.f14034c);
        } else {
            if (i10 == 8) {
                this.f14027d.a(bVar.f14033b, bVar.f14035d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    private int z(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.f14026c.size() - 1; size >= 0; size--) {
            b bVar = (b) this.f14026c.get(size);
            int i14 = bVar.f14032a;
            if (i14 == 8) {
                int i15 = bVar.f14033b;
                int i16 = bVar.f14035d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            bVar.f14033b = i15 + 1;
                            bVar.f14035d = i16 + 1;
                        } else if (i11 == 2) {
                            bVar.f14033b = i15 - 1;
                            bVar.f14035d = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        bVar.f14035d = i16 + 1;
                    } else if (i11 == 2) {
                        bVar.f14035d = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        bVar.f14033b = i15 + 1;
                    } else if (i11 == 2) {
                        bVar.f14033b = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = bVar.f14033b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= bVar.f14035d;
                    } else if (i14 == 2) {
                        i10 += bVar.f14035d;
                    }
                } else if (i11 == 1) {
                    bVar.f14033b = i17 + 1;
                } else if (i11 == 2) {
                    bVar.f14033b = i17 - 1;
                }
            }
        }
        for (int size2 = this.f14026c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = (b) this.f14026c.get(size2);
            if (bVar2.f14032a == 8) {
                int i18 = bVar2.f14035d;
                if (i18 == bVar2.f14033b || i18 < 0) {
                    this.f14026c.remove(size2);
                    b(bVar2);
                }
            } else if (bVar2.f14035d <= 0) {
                this.f14026c.remove(size2);
                b(bVar2);
            }
        }
        return i10;
    }

    @Override
    public b a(int i10, int i11, int i12, Object obj) {
        b bVar = (b) this.f14024a.acquire();
        if (bVar == null) {
            return new b(i10, i11, i12, obj);
        }
        bVar.f14032a = i10;
        bVar.f14033b = i11;
        bVar.f14035d = i12;
        bVar.f14034c = obj;
        return bVar;
    }

    @Override
    public void b(b bVar) {
        if (this.f14029f) {
            return;
        }
        bVar.f14034c = null;
        this.f14024a.release(bVar);
    }

    public int e(int i10) {
        int size = this.f14025b.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f14025b.get(i11);
            int i12 = bVar.f14032a;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = bVar.f14033b;
                    if (i13 <= i10) {
                        int i14 = bVar.f14035d;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = bVar.f14033b;
                    if (i15 == i10) {
                        i10 = bVar.f14035d;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (bVar.f14035d <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (bVar.f14033b <= i10) {
                i10 += bVar.f14035d;
            }
        }
        return i10;
    }

    void i() {
        int size = this.f14026c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f14027d.c((b) this.f14026c.get(i10));
        }
        x(this.f14026c);
        this.f14031h = 0;
    }

    void j() {
        i();
        int size = this.f14025b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f14025b.get(i10);
            int i11 = bVar.f14032a;
            if (i11 == 1) {
                this.f14027d.c(bVar);
                this.f14027d.g(bVar.f14033b, bVar.f14035d);
            } else if (i11 == 2) {
                this.f14027d.c(bVar);
                this.f14027d.h(bVar.f14033b, bVar.f14035d);
            } else if (i11 == 4) {
                this.f14027d.c(bVar);
                this.f14027d.e(bVar.f14033b, bVar.f14035d, bVar.f14034c);
            } else if (i11 == 8) {
                this.f14027d.c(bVar);
                this.f14027d.a(bVar.f14033b, bVar.f14035d);
            }
            Runnable runnable = this.f14028e;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.f14025b);
        this.f14031h = 0;
    }

    void l(b bVar, int i10) {
        this.f14027d.b(bVar);
        int i11 = bVar.f14032a;
        if (i11 == 2) {
            this.f14027d.h(i10, bVar.f14035d);
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f14027d.e(i10, bVar.f14035d, bVar.f14034c);
        }
    }

    int m(int i10) {
        return n(i10, 0);
    }

    int n(int i10, int i11) {
        int size = this.f14026c.size();
        while (i11 < size) {
            b bVar = (b) this.f14026c.get(i11);
            int i12 = bVar.f14032a;
            if (i12 == 8) {
                int i13 = bVar.f14033b;
                if (i13 == i10) {
                    i10 = bVar.f14035d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (bVar.f14035d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = bVar.f14033b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = bVar.f14035d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += bVar.f14035d;
                }
            }
            i11++;
        }
        return i10;
    }

    boolean o(int i10) {
        return (i10 & this.f14031h) != 0;
    }

    boolean p() {
        return this.f14025b.size() > 0;
    }

    boolean q() {
        return (this.f14026c.isEmpty() || this.f14025b.isEmpty()) ? false : true;
    }

    boolean r(int i10, int i11, Object obj) {
        if (i11 < 1) {
            return false;
        }
        this.f14025b.add(a(4, i10, i11, obj));
        this.f14031h |= 4;
        return this.f14025b.size() == 1;
    }

    boolean s(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.f14025b.add(a(1, i10, i11, null));
        this.f14031h |= 1;
        return this.f14025b.size() == 1;
    }

    boolean t(int i10, int i11, int i12) {
        if (i10 == i11) {
            return false;
        }
        if (i12 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f14025b.add(a(8, i10, i11, null));
        this.f14031h |= 8;
        return this.f14025b.size() == 1;
    }

    boolean u(int i10, int i11) {
        if (i11 < 1) {
            return false;
        }
        this.f14025b.add(a(2, i10, i11, null));
        this.f14031h |= 2;
        return this.f14025b.size() == 1;
    }

    void w() {
        this.f14030g.b(this.f14025b);
        int size = this.f14025b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f14025b.get(i10);
            int i11 = bVar.f14032a;
            if (i11 == 1) {
                c(bVar);
            } else if (i11 == 2) {
                f(bVar);
            } else if (i11 == 4) {
                g(bVar);
            } else if (i11 == 8) {
                d(bVar);
            }
            Runnable runnable = this.f14028e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f14025b.clear();
    }

    void x(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            b((b) list.get(i10));
        }
        list.clear();
    }

    void y() {
        x(this.f14025b);
        x(this.f14026c);
        this.f14031h = 0;
    }

    a(InterfaceC0105a interfaceC0105a, boolean z10) {
        this.f14024a = new androidx.core.util.g(30);
        this.f14025b = new ArrayList();
        this.f14026c = new ArrayList();
        this.f14031h = 0;
        this.f14027d = interfaceC0105a;
        this.f14029f = z10;
        this.f14030g = new l(this);
    }
}

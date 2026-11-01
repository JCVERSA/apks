package c;

import java.util.HashSet;

public final class b {

    public final c f319a;

    public final a f320b;

    public b f321c;

    public int f322d = 0;

    public int f323e = -1;

    public int f324f = 1;

    public int f325g = 1;

    public int f326h = 0;

    public b.f f327i;

    public enum a {
        EF0,
        f328a,
        f329b,
        f330c,
        f331d,
        f332e,
        f333f,
        f334g,
        f335h;

        a() {
        }
    }

    public b(c cVar, a aVar) {
        this.f319a = cVar;
        this.f320b = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0022  */
    /* JADX WARN: Code duplicated, block: B:24:0x003c  */
    /* JADX WARN: Code duplicated, block: B:40:0x005b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0066  */
    /* JADX WARN: Code duplicated, block: B:49:0x006b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0070  */
    /* JADX WARN: Code duplicated, block: B:58:0x007b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0080  */
    public final boolean a(b bVar, int i2, int i3, int i4, int i5, boolean z2) {
        boolean z3;
        if (bVar == null) {
            this.f321c = null;
            this.f322d = 0;
            this.f323e = -1;
            this.f324f = 1;
            this.f326h = 2;
            return true;
        }
        if (!z2) {
            a aVar = a.f332e;
            c cVar = bVar.f319a;
            a aVar2 = bVar.f320b;
            a aVar3 = this.f320b;
            if (aVar2 == aVar3) {
                if (aVar3 != a.f333f) {
                    if (aVar3 == aVar) {
                        if (cVar.f362z > 0) {
                            if (!(this.f319a.f362z > 0)) {
                            }
                        }
                    }
                    z3 = true;
                }
                z3 = false;
            } else {
                int iOrdinal = aVar3.ordinal();
                a aVar4 = a.f334g;
                if (iOrdinal != 1) {
                    a aVar5 = a.f335h;
                    if (iOrdinal == 2) {
                        if (aVar2 != a.f329b || aVar2 == a.f331d) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (cVar instanceof e) {
                            if (!z3 || aVar2 == aVar5) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        }
                    } else if (iOrdinal == 3) {
                        if (aVar2 != a.f328a || aVar2 == a.f330c) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (cVar instanceof e) {
                            if (!z3 || aVar2 == aVar4) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        }
                    } else if (iOrdinal == 4) {
                        if (aVar2 != a.f329b) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (cVar instanceof e) {
                            if (z3) {
                            }
                            z3 = true;
                        }
                    } else if (iOrdinal != 6 || aVar2 == aVar || aVar2 == aVar4 || aVar2 == aVar5) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                } else {
                    if (aVar2 != a.f328a) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (cVar instanceof e) {
                        if (z3) {
                        }
                        z3 = true;
                    }
                }
            }
            if (!z3) {
                return false;
            }
        }
        this.f321c = bVar;
        if (i2 > 0) {
            this.f322d = i2;
        } else {
            this.f322d = 0;
        }
        this.f323e = i3;
        this.f324f = i4;
        this.f326h = i5;
        return true;
    }

    public final int b() {
        b bVar;
        if (this.f319a.F == 8) {
            return 0;
        }
        int i2 = this.f323e;
        return (i2 <= -1 || (bVar = this.f321c) == null || bVar.f319a.F != 8) ? this.f322d : i2;
    }

    public final void c() {
        this.f321c = null;
        this.f322d = 0;
        this.f323e = -1;
        this.f324f = 2;
        this.f326h = 0;
        this.f325g = 1;
    }

    public final void d() {
        b.f fVar = this.f327i;
        if (fVar == null) {
            this.f327i = new b.f(1);
        } else {
            fVar.b();
        }
    }

    public final String e(HashSet<b> hashSet) {
        String str;
        if (!hashSet.add(this)) {
            return "<-";
        }
        StringBuilder sb = new StringBuilder("null:");
        this.f319a.getClass();
        sb.append(this.f320b.toString());
        if (this.f321c != null) {
            str = " connected to " + this.f321c.e(hashSet);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public final String toString() {
        String str;
        HashSet<b> hashSet = new HashSet<>();
        StringBuilder sb = new StringBuilder("null:");
        this.f319a.getClass();
        sb.append(this.f320b.toString());
        if (this.f321c != null) {
            str = " connected to " + this.f321c.e(hashSet);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}

package androidx.recyclerview.widget;

import java.util.List;

class l {

    final a f14091a;

    interface a {
        androidx.recyclerview.widget.a.b a(int i10, int i11, int i12, Object obj);

        void b(androidx.recyclerview.widget.a.b bVar);
    }

    l(a aVar) {
        this.f14091a = aVar;
    }

    private int a(List list) {
        boolean z10 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (((androidx.recyclerview.widget.a.b) list.get(size)).f14032a != 8) {
                z10 = true;
            } else if (z10) {
                return size;
            }
        }
        return -1;
    }

    private void c(List list, int i10, androidx.recyclerview.widget.a.b bVar, int i11, androidx.recyclerview.widget.a.b bVar2) {
        int i12 = bVar.f14035d;
        int i13 = bVar2.f14033b;
        int i14 = i12 < i13 ? -1 : 0;
        int i15 = bVar.f14033b;
        if (i15 < i13) {
            i14++;
        }
        if (i13 <= i15) {
            bVar.f14033b = i15 + bVar2.f14035d;
        }
        int i16 = bVar2.f14033b;
        if (i16 <= i12) {
            bVar.f14035d = i12 + bVar2.f14035d;
        }
        bVar2.f14033b = i16 + i14;
        list.set(i10, bVar2);
        list.set(i11, bVar);
    }

    private void d(List list, int i10, int i11) {
        androidx.recyclerview.widget.a.b bVar = (androidx.recyclerview.widget.a.b) list.get(i10);
        androidx.recyclerview.widget.a.b bVar2 = (androidx.recyclerview.widget.a.b) list.get(i11);
        int i12 = bVar2.f14032a;
        if (i12 == 1) {
            c(list, i10, bVar, i11, bVar2);
        } else if (i12 == 2) {
            e(list, i10, bVar, i11, bVar2);
        } else {
            if (i12 != 4) {
                return;
            }
            f(list, i10, bVar, i11, bVar2);
        }
    }

    void b(List list) {
        while (true) {
            int iA = a(list);
            if (iA == -1) {
                return;
            } else {
                d(list, iA, iA + 1);
            }
        }
    }

    void e(List list, int i10, androidx.recyclerview.widget.a.b bVar, int i11, androidx.recyclerview.widget.a.b bVar2) {
        boolean z10;
        int i12 = bVar.f14033b;
        int i13 = bVar.f14035d;
        boolean z11 = false;
        if (i12 < i13) {
            if (bVar2.f14033b == i12 && bVar2.f14035d == i13 - i12) {
                z10 = false;
                z11 = true;
            } else {
                z10 = false;
            }
        } else if (bVar2.f14033b == i13 + 1 && bVar2.f14035d == i12 - i13) {
            z10 = true;
            z11 = true;
        } else {
            z10 = true;
        }
        int i14 = bVar2.f14033b;
        if (i13 < i14) {
            bVar2.f14033b = i14 - 1;
        } else {
            int i15 = bVar2.f14035d;
            if (i13 < i14 + i15) {
                bVar2.f14035d = i15 - 1;
                bVar.f14032a = 2;
                bVar.f14035d = 1;
                if (bVar2.f14035d == 0) {
                    list.remove(i11);
                    this.f14091a.b(bVar2);
                    return;
                }
                return;
            }
        }
        int i16 = bVar.f14033b;
        int i17 = bVar2.f14033b;
        androidx.recyclerview.widget.a.b bVarA = null;
        if (i16 <= i17) {
            bVar2.f14033b = i17 + 1;
        } else {
            int i18 = bVar2.f14035d;
            if (i16 < i17 + i18) {
                bVarA = this.f14091a.a(2, i16 + 1, (i17 + i18) - i16, null);
                bVar2.f14035d = bVar.f14033b - bVar2.f14033b;
            }
        }
        if (z11) {
            list.set(i10, bVar2);
            list.remove(i11);
            this.f14091a.b(bVar);
            return;
        }
        if (z10) {
            if (bVarA != null) {
                int i19 = bVar.f14033b;
                if (i19 > bVarA.f14033b) {
                    bVar.f14033b = i19 - bVarA.f14035d;
                }
                int i20 = bVar.f14035d;
                if (i20 > bVarA.f14033b) {
                    bVar.f14035d = i20 - bVarA.f14035d;
                }
            }
            int i21 = bVar.f14033b;
            if (i21 > bVar2.f14033b) {
                bVar.f14033b = i21 - bVar2.f14035d;
            }
            int i22 = bVar.f14035d;
            if (i22 > bVar2.f14033b) {
                bVar.f14035d = i22 - bVar2.f14035d;
            }
        } else {
            if (bVarA != null) {
                int i23 = bVar.f14033b;
                if (i23 >= bVarA.f14033b) {
                    bVar.f14033b = i23 - bVarA.f14035d;
                }
                int i24 = bVar.f14035d;
                if (i24 >= bVarA.f14033b) {
                    bVar.f14035d = i24 - bVarA.f14035d;
                }
            }
            int i25 = bVar.f14033b;
            if (i25 >= bVar2.f14033b) {
                bVar.f14033b = i25 - bVar2.f14035d;
            }
            int i26 = bVar.f14035d;
            if (i26 >= bVar2.f14033b) {
                bVar.f14035d = i26 - bVar2.f14035d;
            }
        }
        list.set(i10, bVar2);
        if (bVar.f14033b != bVar.f14035d) {
            list.set(i11, bVar);
        } else {
            list.remove(i11);
        }
        if (bVarA != null) {
            list.add(i10, bVarA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    void f(List list, int i10, androidx.recyclerview.widget.a.b bVar, int i11, androidx.recyclerview.widget.a.b bVar2) {
        androidx.recyclerview.widget.a.b bVarA;
        int i12;
        int i13;
        int i14;
        int i15 = bVar.f14035d;
        int i16 = bVar2.f14033b;
        androidx.recyclerview.widget.a.b bVarA2 = null;
        if (i15 >= i16) {
            int i17 = bVar2.f14035d;
            if (i15 < i16 + i17) {
                bVar2.f14035d = i17 - 1;
                bVarA = this.f14091a.a(4, bVar.f14033b, 1, bVar2.f14034c);
            }
            i12 = bVar.f14033b;
            i13 = bVar2.f14033b;
            if (i12 <= i13) {
                bVar2.f14033b = i13 + 1;
            } else {
                i14 = bVar2.f14035d;
                if (i12 < i13 + i14) {
                    int i18 = (i13 + i14) - i12;
                    bVarA2 = this.f14091a.a(4, i12 + 1, i18, bVar2.f14034c);
                    bVar2.f14035d -= i18;
                }
            }
            list.set(i11, bVar);
            if (bVar2.f14035d > 0) {
                list.set(i10, bVar2);
            } else {
                list.remove(i10);
                this.f14091a.b(bVar2);
            }
            if (bVarA != null) {
                list.add(i10, bVarA);
            }
            if (bVarA2 != null) {
                list.add(i10, bVarA2);
            }
        }
        bVar2.f14033b = i16 - 1;
        bVarA = null;
        i12 = bVar.f14033b;
        i13 = bVar2.f14033b;
        if (i12 <= i13) {
            bVar2.f14033b = i13 + 1;
        } else {
            i14 = bVar2.f14035d;
            if (i12 < i13 + i14) {
                int i19 = (i13 + i14) - i12;
                bVarA2 = this.f14091a.a(4, i12 + 1, i19, bVar2.f14034c);
                bVar2.f14035d -= i19;
            }
        }
        list.set(i11, bVar);
        if (bVar2.f14035d > 0) {
            list.set(i10, bVar2);
        } else {
            list.remove(i10);
            this.f14091a.b(bVar2);
        }
        if (bVarA != null) {
            list.add(i10, bVarA);
        }
        if (bVarA2 != null) {
            list.add(i10, bVarA2);
        }
    }
}

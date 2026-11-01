package h1;

import java.util.Comparator;

public final class d implements Comparator {

    public final int f1117a;

    public final int f1118b;

    public d(int i2, boolean z2) {
        this.f1117a = i2;
        switch (i2) {
            case 1:
                this.f1118b = z2 ? -1 : 1;
                break;
            case 2:
                this.f1118b = z2 ? -1 : 1;
                break;
            case 3:
                this.f1118b = z2 ? -1 : 1;
                break;
            case 4:
                this.f1118b = z2 ? -1 : 1;
                break;
            case 5:
                this.f1118b = z2 ? -1 : 1;
                break;
            case 6:
                this.f1118b = z2 ? -1 : 1;
                break;
            case 7:
                this.f1118b = z2 ? -1 : 1;
                break;
            default:
                this.f1118b = z2 ? -1 : 1;
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x0172, code lost:
    
        if (r7.b() > r8.b()) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x019c, code lost:
    
        if (r7.b() > r8.b()) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01a1, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01db, code lost:
    
        if (r7.b() > r8.b()) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0205, code lost:
    
        if (r7.b() > r8.b()) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x020a, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:?, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(d0.d dVar, d0.d dVar2) {
        int iG;
        int iCompareToIgnoreCase;
        int i2 = this.f1117a;
        int i3 = this.f1118b;
        switch (i2) {
            case 0:
                if (dVar.f()) {
                    if (!dVar2.f() || dVar.g()) {
                        return -1;
                    }
                    if (dVar2.g()) {
                        return 1;
                    }
                    if (dVar.b() == dVar2.b()) {
                        return a0.c.g(dVar.f539a, dVar2.f539a);
                    }
                } else {
                    if (dVar2.f()) {
                        return 1;
                    }
                    if (dVar.b() == dVar2.b()) {
                        return a0.c.g(dVar.f539a, dVar2.f539a);
                    }
                }
                break;
            case 1:
                if (dVar.f()) {
                    if (!dVar2.f()) {
                        return -1;
                    }
                    if (dVar.b() == dVar2.b()) {
                        return dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                    }
                } else {
                    if (dVar2.f()) {
                        return 1;
                    }
                    if (dVar.b() == dVar2.b()) {
                        return dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                    }
                }
                break;
            case 2:
                if (dVar.f()) {
                    if (!dVar2.f() || dVar.g()) {
                        return -1;
                    }
                    if (dVar2.g()) {
                        return 1;
                    }
                    iG = a0.c.g(dVar.f539a, dVar2.f539a);
                } else {
                    if (dVar2.f()) {
                        return 1;
                    }
                    iG = a0.c.g(dVar.f539a, dVar2.f539a);
                }
                return iG * i3;
            case 3:
                if (dVar.f()) {
                    if (!dVar2.f() || dVar.g()) {
                        return -1;
                    }
                    if (dVar2.g()) {
                        return 1;
                    }
                    iCompareToIgnoreCase = dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                } else {
                    if (dVar2.f()) {
                        return 1;
                    }
                    iCompareToIgnoreCase = dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                }
                return iCompareToIgnoreCase * i3;
            case 4:
                if (dVar.f()) {
                    if (!dVar2.f() || dVar.g()) {
                        return -1;
                    }
                    if (dVar2.g()) {
                        return 1;
                    }
                    return a0.c.g(dVar.f539a, dVar2.f539a);
                }
                if (dVar2.f()) {
                    return 1;
                }
                long j2 = dVar.f542d;
                long j3 = dVar2.f542d;
                if (j2 == j3) {
                    return a0.c.g(dVar.f539a, dVar2.f539a);
                }
                return j2 > j3 ? i3 : -i3;
            case 5:
                if (dVar.f()) {
                    if (!dVar2.f() || dVar.g()) {
                        return -1;
                    }
                    if (dVar2.g()) {
                        return 1;
                    }
                    return dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                }
                if (dVar2.f()) {
                    return 1;
                }
                long j4 = dVar.f542d;
                long j5 = dVar2.f542d;
                if (j4 == j5) {
                    return dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                }
                return j4 > j5 ? i3 : -i3;
            case 6:
                if (!dVar.f()) {
                    if (dVar2.f()) {
                        return 1;
                    }
                    int iCompareTo = a0.c.s(dVar.f539a).compareTo(a0.c.s(dVar2.f539a)) * i3;
                    return iCompareTo == 0 ? a0.c.g(dVar.f539a, dVar2.f539a) : iCompareTo;
                }
                if (!dVar2.f() || dVar.g()) {
                    return -1;
                }
                if (dVar2.g()) {
                    return 1;
                }
                return a0.c.g(dVar.f539a, dVar2.f539a);
            default:
                if (!dVar.f()) {
                    if (dVar2.f()) {
                        return 1;
                    }
                    int iCompareTo2 = a0.c.s(dVar.f539a).compareTo(a0.c.s(dVar2.f539a)) * i3;
                    return iCompareTo2 == 0 ? dVar.f539a.compareToIgnoreCase(dVar2.f539a) : iCompareTo2;
                }
                if (!dVar2.f() || dVar.g()) {
                    return -1;
                }
                if (dVar2.g()) {
                    return 1;
                }
                return dVar.f539a.compareToIgnoreCase(dVar2.f539a);
        }
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        switch (this.f1117a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                break;
        }
        return a((d0.d) obj, (d0.d) obj2);
    }
}

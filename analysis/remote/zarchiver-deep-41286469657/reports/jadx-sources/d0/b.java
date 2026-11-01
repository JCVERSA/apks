package d0;

import java.util.ArrayList;
import java.util.Iterator;

public class b extends ArrayList<d> {

    public int f521a;

    public long f522b;

    public int[] f523c;

    public b(int i2) {
        super(i2);
        this.f521a = 0;
        this.f522b = 0L;
        this.f523c = null;
    }

    public final synchronized void a(f fVar) {
        this.f523c = null;
        super.add(fVar);
    }

    public synchronized d b(int i2) {
        return (d) super.get(i2);
    }

    public final synchronized int c() {
        int size;
        size = super.size();
        if (size > 0 && ((d) super.get(0)).g()) {
            size--;
        }
        return size;
    }

    public final int[] d() {
        int[] iArr;
        int[] iArr2 = this.f523c;
        if (iArr2 != null) {
            return iArr2;
        }
        synchronized (this) {
            int i2 = this.f521a;
            this.f523c = new int[i2];
            if (i2 > 0) {
                int size = size();
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    if (((d) super.get(i4)).f545g) {
                        this.f523c[i3] = i4;
                        i3++;
                    }
                }
            }
            iArr = this.f523c;
        }
        return iArr;
    }

    public final synchronized boolean e(String str) {
        Iterator<d> it = iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().f539a)) {
                return true;
            }
        }
        return false;
    }

    public final synchronized boolean f(int i2) {
        int i3 = 0;
        if (i2 < size() && this.f521a != 0) {
            int i4 = -1;
            while (true) {
                if (i3 >= size()) {
                    i3 = -1;
                    break;
                }
                if (((d) super.get(i3)).f545g) {
                    if (i3 < i2) {
                        i4 = i3;
                    } else if (i3 > i2) {
                        break;
                    }
                }
                i3++;
            }
            if (i4 == -1) {
                i4 = i2;
            }
            if (i3 != -1) {
                i2 = i3;
            }
            while (i4 <= i2) {
                d dVar = (d) super.get(i4);
                if (!dVar.f545g && dVar.h()) {
                    dVar.f545g = true;
                    this.f521a++;
                    long j2 = dVar.f542d;
                    if (j2 > 0) {
                        this.f522b += j2;
                    }
                }
                i4++;
            }
            this.f523c = null;
            return true;
        }
        return false;
    }

    public final synchronized void g(int i2) {
        d dVar = (d) super.get(i2);
        if (dVar.h() && !dVar.f545g) {
            dVar.f545g = true;
            this.f521a++;
            long j2 = dVar.f542d;
            if (j2 > 0) {
                this.f522b += j2;
            }
            this.f523c = null;
        }
    }

    @Override
    public Object get(int i2) {
        return b(i2);
    }

    public final synchronized boolean h(int i2, int i3) {
        boolean z2;
        if (i2 >= super.size()) {
            return false;
        }
        d dVar = (d) super.get(i2);
        if (!dVar.h()) {
            return false;
        }
        if (i3 == 2) {
            z2 = !dVar.f545g;
        } else {
            z2 = i3 == 1;
            if (dVar.f545g == z2) {
                return false;
            }
        }
        if (z2) {
            this.f521a++;
            long j2 = dVar.f542d;
            if (j2 > 0) {
                this.f522b += j2;
            }
        } else {
            this.f521a--;
            long j3 = dVar.f542d;
            if (j3 > 0) {
                this.f522b -= j3;
            }
        }
        dVar.f545g = z2;
        this.f523c = null;
        return true;
    }

    @Override
    public final synchronized int size() {
        return super.size();
    }

    public b(b bVar) {
        super(bVar);
        this.f521a = bVar.f521a;
        this.f522b = bVar.f522b;
        this.f523c = null;
    }
}

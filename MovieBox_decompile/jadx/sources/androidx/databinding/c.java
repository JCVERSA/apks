package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

public abstract class c implements Cloneable {

    private List f8234a = new ArrayList();

    private long f8235b = 0;

    private long[] f8236c;

    private int f8237d;

    private final a f8238e;

    public static abstract class a {
        public abstract void a(Object obj, Object obj2, int i10, Object obj3);
    }

    public c(a aVar) {
        this.f8238e = aVar;
    }

    private boolean c(int i10) {
        int i11;
        if (i10 < 64) {
            return ((1 << i10) & this.f8235b) != 0;
        }
        long[] jArr = this.f8236c;
        if (jArr != null && (i11 = (i10 / 64) - 1) < jArr.length) {
            return ((1 << (i10 % 64)) & jArr[i11]) != 0;
        }
        return false;
    }

    private void e(Object obj, int i10, Object obj2, int i11, int i12, long j10) {
        long j11 = 1;
        while (i11 < i12) {
            if ((j10 & j11) == 0) {
                this.f8238e.a(this.f8234a.get(i11), obj, i10, obj2);
            }
            j11 <<= 1;
            i11++;
        }
    }

    private void g(Object obj, int i10, Object obj2) {
        e(obj, i10, obj2, 0, Math.min(64, this.f8234a.size()), this.f8235b);
    }

    private void h(Object obj, int i10, Object obj2) {
        int size = this.f8234a.size();
        long[] jArr = this.f8236c;
        int length = jArr == null ? -1 : jArr.length - 1;
        i(obj, i10, obj2, length);
        e(obj, i10, obj2, (length + 2) * 64, size, 0L);
    }

    private void i(Object obj, int i10, Object obj2, int i11) {
        if (i11 < 0) {
            g(obj, i10, obj2);
            return;
        }
        long j10 = this.f8236c[i11];
        int i12 = (i11 + 1) * 64;
        int iMin = Math.min(this.f8234a.size(), i12 + 64);
        i(obj, i10, obj2, i11 - 1);
        e(obj, i10, obj2, i12, iMin, j10);
    }

    private void k(int i10, long j10) {
        long j11 = Long.MIN_VALUE;
        for (int i11 = i10 + 63; i11 >= i10; i11--) {
            if ((j10 & j11) != 0) {
                this.f8234a.remove(i11);
            }
            j11 >>>= 1;
        }
    }

    private void l(int i10) {
        if (i10 < 64) {
            this.f8235b = (1 << i10) | this.f8235b;
            return;
        }
        int i11 = (i10 / 64) - 1;
        long[] jArr = this.f8236c;
        if (jArr == null) {
            this.f8236c = new long[this.f8234a.size() / 64];
        } else if (jArr.length <= i11) {
            long[] jArr2 = new long[this.f8234a.size() / 64];
            long[] jArr3 = this.f8236c;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f8236c = jArr2;
        }
        long j10 = 1 << (i10 % 64);
        long[] jArr4 = this.f8236c;
        jArr4[i11] = j10 | jArr4[i11];
    }

    public synchronized void a(Object obj) {
        try {
            if (obj == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            int iLastIndexOf = this.f8234a.lastIndexOf(obj);
            if (iLastIndexOf < 0 || c(iLastIndexOf)) {
                this.f8234a.add(obj);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized c clone() {
        c cVar;
        CloneNotSupportedException e10;
        try {
            cVar = (c) super.clone();
            try {
                cVar.f8235b = 0L;
                cVar.f8236c = null;
                cVar.f8237d = 0;
                cVar.f8234a = new ArrayList();
                int size = this.f8234a.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!c(i10)) {
                        cVar.f8234a.add(this.f8234a.get(i10));
                    }
                }
            } catch (CloneNotSupportedException e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (CloneNotSupportedException e12) {
            cVar = null;
            e10 = e12;
        }
        return cVar;
    }

    public synchronized void d(Object obj, int i10, Object obj2) {
        try {
            this.f8237d++;
            h(obj, i10, obj2);
            int i11 = this.f8237d - 1;
            this.f8237d = i11;
            if (i11 == 0) {
                long[] jArr = this.f8236c;
                if (jArr != null) {
                    for (int length = jArr.length - 1; length >= 0; length--) {
                        long j10 = this.f8236c[length];
                        if (j10 != 0) {
                            k((length + 1) * 64, j10);
                            this.f8236c[length] = 0;
                        }
                    }
                }
                long j11 = this.f8235b;
                if (j11 != 0) {
                    k(0, j11);
                    this.f8235b = 0L;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void j(Object obj) {
        try {
            if (this.f8237d == 0) {
                this.f8234a.remove(obj);
            } else {
                int iLastIndexOf = this.f8234a.lastIndexOf(obj);
                if (iLastIndexOf >= 0) {
                    l(iLastIndexOf);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}

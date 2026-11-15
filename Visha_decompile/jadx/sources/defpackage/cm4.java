package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public class cm4 extends ii5 {
    public final int c;
    public final boolean d;
    public List e;
    public List f;
    public final long g;
    public long h;
    public dm4 i;

    public cm4(int i, List list, List list2, long j, long j2, boolean z) {
        super(true);
        this.h = 0L;
        this.c = i;
        this.e = Collections.unmodifiableList(list);
        this.f = Collections.unmodifiableList(list2);
        this.h = j;
        this.g = j2;
        this.d = z;
    }

    public static cm4 d(Object obj) throws Throwable {
        if (obj instanceof cm4) {
            return (cm4) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("unknown version for hss private key");
            }
            int i = dataInputStream.readInt();
            long j = dataInputStream.readLong();
            long j2 = dataInputStream.readLong();
            boolean z = dataInputStream.readBoolean();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(ji5.i(obj));
            }
            for (int i3 = 0; i3 < i - 1; i3++) {
                arrayList2.add(li5.a(obj));
            }
            return new cm4(i, arrayList, arrayList2, j, j2, z);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return d(fz9.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                cm4 cm4VarD = d(dataInputStream3);
                dataInputStream3.close();
                return cm4VarD;
            } catch (Throwable th) {
                th = th;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static cm4 e(byte[] bArr, byte[] bArr2) throws Throwable {
        cm4 cm4VarD = d(bArr);
        cm4VarD.i = dm4.b(bArr2);
        return cm4VarD;
    }

    public static cm4 l(cm4 cm4Var) {
        try {
            return d(cm4Var.getEncoded());
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public cm4 b(int i) {
        cm4 cm4VarL;
        synchronized (this) {
            try {
                long j = i;
                if (k() < j) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining in current leaf");
                }
                long j2 = this.h;
                this.h = j + j2;
                cm4VarL = l(new cm4(this.c, new ArrayList(f()), new ArrayList(j()), j2, j2 + j, true));
                m();
            } catch (Throwable th) {
                throw th;
            }
        }
        return cm4VarL;
    }

    public synchronized long c() {
        return this.h;
    }

    public Object clone() {
        return l(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cm4 cm4Var = (cm4) obj;
        if (this.c == cm4Var.c && this.d == cm4Var.d && this.g == cm4Var.g && this.h == cm4Var.h && this.e.equals(cm4Var.e)) {
            return this.f.equals(cm4Var.f);
        }
        return false;
    }

    public synchronized List f() {
        return this.e;
    }

    public int g() {
        return this.c;
    }

    @Override
    public synchronized byte[] getEncoded() {
        zc1 zc1VarA;
        try {
            zc1VarA = zc1.f().i(0).i(this.c).j(this.h).j(this.g).a(this.d);
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                zc1VarA.c((ji5) it.next());
            }
            Iterator it2 = this.f.iterator();
            while (it2.hasNext()) {
                zc1VarA.c((li5) it2.next());
            }
        } catch (Throwable th) {
            throw th;
        }
        return zc1VarA.b();
    }

    public synchronized dm4 h() {
        return new dm4(this.c, i().n());
    }

    public int hashCode() {
        int iHashCode = ((((((this.c * 31) + (this.d ? 1 : 0)) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31;
        long j = this.g;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.h;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }

    public ji5 i() {
        return (ji5) this.e.get(0);
    }

    public synchronized List j() {
        return this.f;
    }

    public long k() {
        return this.g - this.h;
    }

    public void m() {
        boolean z;
        List listF = f();
        int size = listF.size();
        long[] jArr = new long[size];
        long jC = c();
        for (int size2 = listF.size() - 1; size2 >= 0; size2--) {
            LMSigParameters lMSigParametersO = ((ji5) listF.get(size2)).o();
            jArr[size2] = ((long) ((1 << lMSigParametersO.c()) - 1)) & jC;
            jC >>>= lMSigParametersO.c();
        }
        ji5[] ji5VarArr = (ji5[]) listF.toArray(new ji5[listF.size()]);
        List list = this.f;
        li5[] li5VarArr = (li5[]) list.toArray(new li5[list.size()]);
        ji5 ji5VarI = i();
        if (ji5VarArr[0].h() - 1 != jArr[0]) {
            ji5VarArr[0] = fi5.a(ji5VarI.o(), ji5VarI.m(), (int) jArr[0], ji5VarI.g(), ji5VarI.k());
            z = true;
        } else {
            z = false;
        }
        int i = 1;
        while (i < size) {
            int i2 = i - 1;
            ji5 ji5Var = ji5VarArr[i2];
            int iD = ji5Var.m().d();
            byte[] bArr = new byte[16];
            byte[] bArr2 = new byte[iD];
            ia9 ia9Var = new ia9(ji5Var.g(), ji5Var.k(), tb2.c(ji5Var.m()));
            ia9Var.e((int) jArr[i2]);
            ia9Var.d(-2);
            ia9Var.a(bArr2, true);
            byte[] bArr3 = new byte[iD];
            ia9Var.a(bArr3, false);
            System.arraycopy(bArr3, 0, bArr, 0, 16);
            boolean z2 = i >= size + (-1) ? jArr[i] == ((long) ji5VarArr[i].h()) : jArr[i] == ((long) (ji5VarArr[i].h() - 1));
            if (ci.b(bArr, ji5VarArr[i].g()) && ci.b(bArr2, ji5VarArr[i].k())) {
                if (!z2) {
                    ji5VarArr[i] = fi5.a(((ji5) listF.get(i)).o(), ((ji5) listF.get(i)).m(), (int) jArr[i], bArr, bArr2);
                }
                i++;
            } else {
                ji5 ji5VarA = fi5.a(((ji5) listF.get(i)).o(), ((ji5) listF.get(i)).m(), (int) jArr[i], bArr, bArr2);
                ji5VarArr[i] = ji5VarA;
                li5VarArr[i2] = fi5.c(ji5VarArr[i2], ji5VarA.n().c());
            }
            z = true;
            i++;
        }
        if (z) {
            n(ji5VarArr, li5VarArr);
        }
    }

    public void n(ji5[] ji5VarArr, li5[] li5VarArr) {
        synchronized (this) {
            this.e = Collections.unmodifiableList(Arrays.asList(ji5VarArr));
            this.f = Collections.unmodifiableList(Arrays.asList(li5VarArr));
        }
    }
}

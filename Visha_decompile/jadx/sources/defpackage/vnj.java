package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.p7;
import com.google.android.gms.internal.ads.zzfww;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

public final class vnj implements zmj, ymj {
    public final zmj[] b;
    public ymj f;
    public npj g;
    public final ArrayList d = new ArrayList();
    public final HashMap e = new HashMap();
    public apj i = new lmj(zzfww.zzn(), zzfww.zzn());
    public final IdentityHashMap c = new IdentityHashMap();
    public zmj[] h = new zmj[0];

    public vnj(mmj mmjVar, long[] jArr, zmj... zmjVarArr) {
        this.b = zmjVarArr;
        for (int i = 0; i < zmjVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.b[i] = new kpj(zmjVarArr[i], j);
            }
        }
    }

    @Override
    public final void a(long j) {
        this.i.a(j);
    }

    @Override
    public final boolean b(z7j z7jVar) {
        ArrayList arrayList = this.d;
        if (arrayList.isEmpty()) {
            return this.i.b(z7jVar);
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zmj) arrayList.get(i)).b(z7jVar);
        }
        return false;
    }

    @Override
    public final long c(long j) {
        long jC = this.h[0].c(j);
        int i = 1;
        while (true) {
            zmj[] zmjVarArr = this.h;
            if (i >= zmjVarArr.length) {
                return jC;
            }
            if (zmjVarArr[i].c(jC) != jC) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override
    public final void d(ymj ymjVar, long j) {
        this.f = ymjVar;
        ArrayList arrayList = this.d;
        zmj[] zmjVarArr = this.b;
        Collections.addAll(arrayList, zmjVarArr);
        for (zmj zmjVar : zmjVarArr) {
            zmjVar.d(this, j);
        }
    }

    @Override
    public final void e(long j, boolean z) {
        for (zmj zmjVar : this.h) {
            zmjVar.e(j, false);
        }
    }

    @Override
    public final void f(zmj zmjVar) {
        ArrayList arrayList = this.d;
        arrayList.remove(zmjVar);
        if (arrayList.isEmpty()) {
            zmj[] zmjVarArr = this.b;
            int i = 0;
            for (zmj zmjVar2 : zmjVarArr) {
                i += zmjVar2.zzg().a;
            }
            n5f[] n5fVarArr = new n5f[i];
            int i2 = 0;
            for (int i3 = 0; i3 < zmjVarArr.length; i3++) {
                npj npjVarZzg = zmjVarArr[i3].zzg();
                int i4 = npjVarZzg.a;
                int i5 = 0;
                while (i5 < i4) {
                    n5f n5fVarB = npjVarZzg.b(i5);
                    int i6 = n5fVarB.a;
                    erj[] erjVarArr = new erj[i6];
                    for (int i7 = 0; i7 < i6; i7++) {
                        erj erjVarB = n5fVarB.b(i7);
                        gpj gpjVarB = erjVarB.b();
                        String str = erjVarB.a;
                        if (str == null) {
                            str = "";
                        }
                        gpjVarB.o(i3 + StringUtils.PROCESS_POSTFIX_DELIMITER + str);
                        erjVarArr[i7] = gpjVarB.K();
                    }
                    n5f n5fVar = new n5f(i3 + StringUtils.PROCESS_POSTFIX_DELIMITER + n5fVarB.b, erjVarArr);
                    this.e.put(n5fVar, n5fVarB);
                    n5fVarArr[i2] = n5fVar;
                    i5++;
                    i2++;
                }
            }
            this.g = new npj(n5fVarArr);
            ymj ymjVar = this.f;
            ymjVar.getClass();
            ymjVar.f(this);
        }
    }

    @Override
    public final long g(long j, kaj kajVar) {
        zmj[] zmjVarArr = this.h;
        return (zmjVarArr.length > 0 ? zmjVarArr[0] : this.b[0]).g(j, kajVar);
    }

    @Override
    public final void h(apj apjVar) {
        ymj ymjVar = this.f;
        ymjVar.getClass();
        ymjVar.h(this);
    }

    public final zmj i(int i) {
        zmj zmjVar = this.b[i];
        return zmjVar instanceof kpj ? ((kpj) zmjVar).i() : zmjVar;
    }

    @Override
    public final long m(tqj[] tqjVarArr, boolean[] zArr, yoj[] yojVarArr, boolean[] zArr2, long j) {
        int length;
        int length2 = tqjVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        int i2 = 0;
        while (true) {
            length = tqjVarArr.length;
            if (i2 >= length) {
                break;
            }
            yoj yojVar = yojVarArr[i2];
            Integer num = yojVar == null ? null : (Integer) this.c.get(yojVar);
            iArr[i2] = num == null ? -1 : num.intValue();
            tqj tqjVar = tqjVarArr[i2];
            if (tqjVar != null) {
                String str = tqjVar.zzg().b;
                iArr2[i2] = Integer.parseInt(str.substring(0, str.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER)));
            } else {
                iArr2[i2] = -1;
            }
            i2++;
        }
        IdentityHashMap identityHashMap = this.c;
        identityHashMap.clear();
        zmj[] zmjVarArr = this.b;
        yoj[] yojVarArr2 = new yoj[length];
        yoj[] yojVarArr3 = new yoj[length];
        tqj[] tqjVarArr2 = new tqj[length];
        ArrayList arrayList = new ArrayList(zmjVarArr.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < zmjVarArr.length) {
            int i4 = i;
            while (i4 < tqjVarArr.length) {
                yojVarArr3[i4] = iArr[i4] == i3 ? yojVarArr[i4] : null;
                if (iArr2[i4] == i3) {
                    tqj tqjVar2 = tqjVarArr[i4];
                    tqjVar2.getClass();
                    n5f n5fVar = (n5f) this.e.get(tqjVar2.zzg());
                    n5fVar.getClass();
                    tqjVarArr2[i4] = new unj(tqjVar2, n5fVar);
                } else {
                    tqjVarArr2[i4] = null;
                }
                i4++;
                arrayList = arrayList;
            }
            ArrayList arrayList2 = arrayList;
            int i5 = i3;
            tqj[] tqjVarArr3 = tqjVarArr2;
            yoj[] yojVarArr4 = yojVarArr3;
            long jM = zmjVarArr[i3].m(tqjVarArr2, zArr, yojVarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = jM;
            } else if (jM != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < tqjVarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    yoj yojVar2 = yojVarArr4[i6];
                    yojVar2.getClass();
                    yojVarArr2[i6] = yojVar2;
                    identityHashMap.put(yojVar2, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    n7g.f(yojVarArr4[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(zmjVarArr[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            tqjVarArr2 = tqjVarArr3;
            yojVarArr3 = yojVarArr4;
            i = 0;
        }
        int i7 = i;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(yojVarArr2, i7, yojVarArr, i7, length);
        this.h = (zmj[]) arrayList3.toArray(new zmj[i7]);
        this.i = new lmj(arrayList3, p7.b(arrayList3, new m2i() {
            @Override
            public final Object apply(Object obj) {
                return ((zmj) obj).zzg().c();
            }
        }));
        return j2;
    }

    @Override
    public final long zzb() {
        return this.i.zzb();
    }

    @Override
    public final long zzc() {
        return this.i.zzc();
    }

    @Override
    public final long zzd() {
        long j = -9223372036854775807L;
        for (zmj zmjVar : this.h) {
            long jZzd = zmjVar.zzd();
            if (jZzd == C.TIME_UNSET) {
                if (j != C.TIME_UNSET && zmjVar.c(j) != j) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j == C.TIME_UNSET) {
                for (zmj zmjVar2 : this.h) {
                    if (zmjVar2 == zmjVar) {
                        break;
                    }
                    if (zmjVar2.c(jZzd) != jZzd) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j = jZzd;
            } else if (jZzd != j) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j;
    }

    @Override
    public final npj zzg() {
        npj npjVar = this.g;
        npjVar.getClass();
        return npjVar;
    }

    @Override
    public final void zzi() {
        int i = 0;
        while (true) {
            zmj[] zmjVarArr = this.b;
            if (i >= zmjVarArr.length) {
                return;
            }
            zmjVarArr[i].zzi();
            i++;
        }
    }

    @Override
    public final boolean zzp() {
        return this.i.zzp();
    }
}

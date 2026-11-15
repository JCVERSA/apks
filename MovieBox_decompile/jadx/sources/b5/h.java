package b5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

public class h implements b2 {

    protected final Class f15541a;

    protected final Enum[] f15542b;

    protected final Enum[] f15543c;

    protected long[] f15544d;

    public h(Class cls) {
        z4.b bVar;
        this.f15541a = cls;
        this.f15543c = (Enum[]) cls.getEnumConstants();
        HashMap map = new HashMap();
        int i10 = 0;
        while (true) {
            Enum[] enumArr = this.f15543c;
            if (i10 >= enumArr.length) {
                break;
            }
            Enum r10 = enumArr[i10];
            String strName = r10.name();
            z4.b bVar2 = null;
            try {
                bVar = (z4.b) TypeUtils.O(cls.getField(strName), z4.b.class);
                if (bVar != null) {
                    try {
                        String strName2 = bVar.name();
                        if (strName2 != null && strName2.length() > 0) {
                            strName = strName2;
                        }
                    } catch (Exception unused) {
                        bVar2 = bVar;
                        bVar = bVar2;
                    }
                }
            } catch (Exception unused2) {
            }
            int i11 = 0;
            long j10 = -3750763034362895579L;
            long j11 = -3750763034362895579L;
            while (i11 < strName.length()) {
                int iCharAt = strName.charAt(i11);
                long j12 = ((long) iCharAt) ^ j10;
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j11 = (((long) iCharAt) ^ j11) * 1099511628211L;
                i11++;
                j10 = j12 * 1099511628211L;
            }
            map.put(Long.valueOf(j10), r10);
            if (j10 != j11) {
                map.put(Long.valueOf(j11), r10);
            }
            if (bVar != null) {
                String[] strArrAlternateNames = bVar.alternateNames();
                int length = strArrAlternateNames.length;
                int i12 = 0;
                while (i12 < length) {
                    String str = strArrAlternateNames[i12];
                    int i13 = 0;
                    long jCharAt = -3750763034362895579L;
                    while (i13 < str.length()) {
                        jCharAt = (jCharAt ^ ((long) str.charAt(i13))) * 1099511628211L;
                        i13++;
                        i10 = i10;
                    }
                    int i14 = i10;
                    if (jCharAt != j10 && jCharAt != j11) {
                        map.put(Long.valueOf(jCharAt), r10);
                    }
                    i12++;
                    i10 = i14;
                }
            }
            i10++;
        }
        this.f15544d = new long[map.size()];
        Iterator it = map.keySet().iterator();
        int i15 = 0;
        while (it.hasNext()) {
            this.f15544d[i15] = ((Long) it.next()).longValue();
            i15++;
        }
        Arrays.sort(this.f15544d);
        this.f15542b = new Enum[this.f15544d.length];
        int i16 = 0;
        while (true) {
            long[] jArr = this.f15544d;
            if (i16 >= jArr.length) {
                return;
            }
            this.f15542b[i16] = (Enum) map.get(Long.valueOf(jArr[i16]));
            i16++;
        }
    }

    public Enum a(long j10) {
        int iBinarySearch;
        if (this.f15542b != null && (iBinarySearch = Arrays.binarySearch(this.f15544d, j10)) >= 0) {
            return this.f15542b[iBinarySearch];
        }
        return null;
    }

    @Override
    public int b() {
        return 2;
    }

    public Enum c(int i10) {
        return this.f15543c[i10];
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        try {
            a5.b bVar = aVar.f141f;
            int iT0 = bVar.t0();
            if (iT0 == 2) {
                int iP = bVar.p();
                bVar.f0(16);
                if (iP >= 0) {
                    Enum[] enumArr = this.f15543c;
                    if (iP < enumArr.length) {
                        return enumArr[iP];
                    }
                }
                throw new JSONException("parse enum " + this.f15541a.getName() + " error, value : " + iP);
            }
            if (iT0 != 4) {
                if (iT0 == 8) {
                    bVar.f0(16);
                    return null;
                }
                throw new JSONException("parse enum " + this.f15541a.getName() + " error, value : " + aVar.x());
            }
            String strO0 = bVar.o0();
            bVar.f0(16);
            if (strO0.length() == 0) {
                return null;
            }
            long j10 = -3750763034362895579L;
            long j11 = -3750763034362895579L;
            for (int i10 = 0; i10 < strO0.length(); i10++) {
                int iCharAt = strO0.charAt(i10);
                long j12 = j10 ^ ((long) iCharAt);
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j10 = j12 * 1099511628211L;
                j11 = (j11 ^ ((long) iCharAt)) * 1099511628211L;
            }
            Enum enumA = a(j10);
            if (enumA == null && j11 != j10) {
                enumA = a(j11);
            }
            if (enumA == null && bVar.o(Feature.ErrorOnEnumNotMatch)) {
                throw new JSONException("not match enum value, " + this.f15541a.getName() + " : " + strO0);
            }
            return enumA;
        } catch (JSONException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new JSONException(e11.getMessage(), e11);
        }
    }
}

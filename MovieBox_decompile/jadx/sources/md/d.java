package md;

import java.util.ArrayList;
import java.util.List;

public final class d {

    private final a f66391a;

    private final List f66392b;

    public d(a aVar) {
        this.f66391a = aVar;
        ArrayList arrayList = new ArrayList();
        this.f66392b = arrayList;
        arrayList.add(new b(aVar, new int[]{1}));
    }

    private b a(int i10) {
        if (i10 >= this.f66392b.size()) {
            List list = this.f66392b;
            b bVarI = (b) list.get(list.size() - 1);
            for (int size = this.f66392b.size(); size <= i10; size++) {
                a aVar = this.f66391a;
                bVarI = bVarI.i(new b(aVar, new int[]{1, aVar.c((size - 1) + aVar.d())}));
                this.f66392b.add(bVarI);
            }
        }
        return (b) this.f66392b.get(i10);
    }

    public void b(int[] iArr, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i10;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        b bVarA = a(i10);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrE = new b(this.f66391a, iArr2).j(i10, 1).b(bVarA)[1].e();
        int length2 = i10 - iArrE.length;
        for (int i11 = 0; i11 < length2; i11++) {
            iArr[length + i11] = 0;
        }
        System.arraycopy(iArrE, 0, iArr, length + length2, iArrE.length);
    }
}

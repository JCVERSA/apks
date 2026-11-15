package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class C2566ge implements InterfaceC2585h8 {
    public final C2640je a;
    public final D3 b;
    public final C3035za c;
    public final C2965wf d;

    public C2566ge() {
        this(new C2640je(), new D3(), new C3035za(100), new C2965wf());
    }

    @Override
    @NonNull
    public final List<C2893ti> fromModel(@NonNull C2541fe c2541fe) {
        C2893ti c2893tiFromModel;
        A8 a8 = new A8();
        a8.a = c2541fe.a;
        a8.f = new C2784p8();
        C2591he c2591he = c2541fe.b;
        C2734n8 c2734n8 = new C2734n8();
        c2734n8.a = StringUtils.getUTF8Bytes(c2591he.a);
        C2649jn c2649jnA = this.c.a(c2591he.b);
        c2734n8.b = StringUtils.getUTF8Bytes((String) c2649jnA.a);
        c2734n8.e = c2591he.c.size();
        Map<String, String> map = c2591he.d;
        if (map != null) {
            c2893tiFromModel = this.a.fromModel(map);
            c2734n8.c = (C2833r8) c2893tiFromModel.a;
        } else {
            c2893tiFromModel = null;
        }
        a8.f.a = c2734n8;
        C2903u3 c2903u3 = new C2903u3(C2903u3.b(c2649jnA, c2893tiFromModel));
        List list = c2591he.c;
        ArrayList arrayList = new ArrayList();
        this.d.getClass();
        int iComputeInt32Size = a8.a != new A8().a ? CodedOutputByteBufferNano.computeInt32Size(1, a8.a) : 0;
        C3033z8 c3033z8 = a8.b;
        if (c3033z8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(2, c3033z8);
        }
        C2983x8 c2983x8 = a8.c;
        if (c2983x8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(3, c2983x8);
        }
        C3008y8 c3008y8 = a8.d;
        int i = 4;
        if (c3008y8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(4, c3008y8);
        }
        C2634j8 c2634j8 = a8.e;
        if (c2634j8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(5, c2634j8);
        }
        C2784p8 c2784p8 = a8.f;
        if (c2784p8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(6, c2784p8);
        }
        ArrayList arrayList2 = new ArrayList();
        A8 a9 = new A8();
        a9.a = a8.a;
        C2784p8 c2784p9 = new C2784p8();
        a9.f = c2784p9;
        c2784p9.a = new C2734n8();
        C2734n8 c2734n9 = a9.f.a;
        C2734n8 c2734n10 = a8.f.a;
        c2734n9.b = c2734n10.b;
        c2734n9.a = c2734n10.a;
        c2734n9.e = c2734n10.e;
        c2734n9.c = c2734n10.c;
        int i2 = 0;
        C2903u3 c2903u4 = c2903u3;
        int i3 = iComputeInt32Size;
        while (i2 < list.size()) {
            E3 e3 = (E3) list.get(i2);
            C2759o8 c2759o8 = new C2759o8();
            c2759o8.a = i2;
            C2893ti c2893tiFromModel2 = this.b.fromModel(e3);
            c2759o8.b = (C2659k8) c2893tiFromModel2.a;
            c2893tiFromModel2.b.getBytesTruncated();
            C2893ti c2893ti = new C2893ti(c2759o8, c2893tiFromModel2);
            C2965wf c2965wf = this.d;
            C2759o8 c2759o9 = (C2759o8) c2893ti.a;
            c2965wf.getClass();
            int iComputeTagSize = CodedOutputByteBufferNano.computeTagSize(i);
            int iComputeMessageSizeNoTag = CodedOutputByteBufferNano.computeMessageSizeNoTag(c2759o9);
            int iComputeRawVarint32Size = iComputeTagSize + iComputeMessageSizeNoTag + ((iComputeMessageSizeNoTag & (-128)) == 0 ? 0 : CodedOutputByteBufferNano.computeRawVarint32Size(iComputeMessageSizeNoTag));
            if (arrayList2.size() != 0 && i3 + iComputeRawVarint32Size > 204800) {
                a9.f.a.d = (C2759o8[]) arrayList2.toArray(new C2759o8[arrayList2.size()]);
                ArrayList arrayList3 = new ArrayList();
                arrayList.add(new C2893ti(a9, c2903u4));
                A8 a10 = new A8();
                a10.a = a8.a;
                C2784p8 c2784p10 = new C2784p8();
                a10.f = c2784p10;
                c2784p10.a = new C2734n8();
                C2734n8 c2734n11 = a10.f.a;
                C2734n8 c2734n12 = a8.f.a;
                c2734n11.b = c2734n12.b;
                c2734n11.a = c2734n12.a;
                c2734n11.e = c2734n12.e;
                c2734n11.c = c2734n12.c;
                c2903u4 = c2903u3;
                i3 = iComputeInt32Size;
                a9 = a10;
                arrayList2 = arrayList3;
            }
            arrayList2.add((C2759o8) c2893ti.a);
            c2903u4 = new C2903u3(C2903u3.b(c2903u4, c2893ti.b));
            i3 += iComputeRawVarint32Size;
            i2++;
            i = 4;
        }
        a9.f.a.d = (C2759o8[]) arrayList2.toArray(new C2759o8[arrayList2.size()]);
        arrayList.add(new C2893ti(a9, c2903u4));
        return arrayList;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C2566ge(C2640je c2640je, D3 d3, C3035za c3035za, C2965wf c2965wf) {
        this.a = c2640je;
        this.b = d3;
        this.c = c3035za;
        this.d = c2965wf;
    }

    @NonNull
    public final C2541fe a(@NonNull List<C2893ti> list) {
        throw new UnsupportedOperationException();
    }
}

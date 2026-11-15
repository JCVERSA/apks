package io.appmetrica.analytics.remotepermissions.impl;

import defpackage.i81;
import defpackage.qv0;
import defpackage.ye9;
import defpackage.z71;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public final class c implements ProtobufConverter {
    @Override
    public final f fromModel(a aVar) {
        f fVar = new f();
        Set set = aVar.a;
        ArrayList arrayList = new ArrayList(z71.v(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((String) it.next()).getBytes(qv0.b));
        }
        Object[] array = arrayList.toArray(new byte[0][]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        fVar.a = (byte[][]) array;
        return fVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0023  */
    @Override
    public final a toModel(f fVar) {
        Set setF;
        byte[][] bArr = fVar.a;
        if (bArr != null) {
            ArrayList arrayList = new ArrayList(bArr.length);
            for (byte[] bArr2 : bArr) {
                arrayList.add(new String(bArr2, qv0.b));
            }
            setF = i81.g1(arrayList);
            if (setF == null) {
                setF = ye9.f();
            }
        } else {
            setF = ye9.f();
        }
        return new a(setF);
    }
}

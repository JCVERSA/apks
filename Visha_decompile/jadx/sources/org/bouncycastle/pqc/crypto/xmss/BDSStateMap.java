package org.bouncycastle.pqc.crypto.xmss;

import defpackage.c35;
import defpackage.drc;
import defpackage.jrc;
import defpackage.l1;
import defpackage.nrc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;

public class BDSStateMap implements Serializable {
    private static final long serialVersionUID = -3464451825208522308L;
    private final Map<Integer, BDS> bdsState = new TreeMap();
    private transient long maxIndex;

    public BDSStateMap(long j) {
        this.maxIndex = j;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readLong() : 0L;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(this.maxIndex);
    }

    public BDS get(int i) {
        return this.bdsState.get(c35.d(i));
    }

    public long getMaxIndex() {
        return this.maxIndex;
    }

    public boolean isEmpty() {
        return this.bdsState.isEmpty();
    }

    public void put(int i, BDS bds) {
        this.bdsState.put(c35.d(i), bds);
    }

    public BDS update(int i, byte[] bArr, byte[] bArr2, c cVar) {
        return this.bdsState.put(c35.d(i), this.bdsState.get(c35.d(i)).getNextState(bArr, bArr2, cVar));
    }

    public void updateState(drc drcVar, long j, byte[] bArr, byte[] bArr2) {
        jrc jrcVarH = drcVar.h();
        int iB = jrcVarH.b();
        long j2 = nrc.j(j, iB);
        int i = nrc.i(j, iB);
        c cVar = (c) ((c.b) new c.b().h(j2)).p(i).l();
        int i2 = (1 << iB) - 1;
        if (i < i2) {
            if (get(0) == null || i == 0) {
                put(0, new BDS(jrcVarH, bArr, bArr2, cVar));
            }
            update(0, bArr, bArr2, cVar);
        }
        for (int i3 = 1; i3 < drcVar.b(); i3++) {
            int i4 = nrc.i(j2, iB);
            j2 = nrc.j(j2, iB);
            c cVar2 = (c) ((c.b) ((c.b) new c.b().g(i3)).h(j2)).p(i4).l();
            if (this.bdsState.get(Integer.valueOf(i3)) == null || nrc.n(j, iB, i3)) {
                this.bdsState.put(Integer.valueOf(i3), new BDS(jrcVarH, bArr, bArr2, cVar2));
            }
            if (i4 < i2 && nrc.m(j, iB, i3)) {
                update(i3, bArr, bArr2, cVar2);
            }
        }
    }

    public BDSStateMap withWOTSDigest(l1 l1Var) {
        BDSStateMap bDSStateMap = new BDSStateMap(this.maxIndex);
        for (Integer num : this.bdsState.keySet()) {
            bDSStateMap.bdsState.put(num, this.bdsState.get(num).withWOTSDigest(l1Var));
        }
        return bDSStateMap;
    }

    public BDSStateMap(drc drcVar, long j, byte[] bArr, byte[] bArr2) {
        this.maxIndex = (1 << drcVar.a()) - 1;
        for (long j2 = 0; j2 < j; j2++) {
            updateState(drcVar, j2, bArr, bArr2);
        }
    }

    public BDSStateMap(BDSStateMap bDSStateMap, long j) {
        for (Integer num : bDSStateMap.bdsState.keySet()) {
            this.bdsState.put(num, new BDS(bDSStateMap.bdsState.get(num)));
        }
        this.maxIndex = j;
    }
}

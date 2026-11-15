package org.bouncycastle.pqc.crypto.xmss;

import defpackage.hgc;
import defpackage.igc;
import defpackage.jrc;
import defpackage.l1;
import defpackage.nrc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;

public final class BDS implements Serializable {
    private static final long serialVersionUID = 1;
    private List<XMSSNode> authenticationPath;
    private int index;
    private int k;
    private Map<Integer, XMSSNode> keep;
    private transient int maxIndex;
    private Map<Integer, LinkedList<XMSSNode>> retain;
    private XMSSNode root;
    private Stack<XMSSNode> stack;
    private final List<BDSTreeHash> treeHashInstances;
    private final int treeHeight;
    private boolean used;
    private transient d wotsPlus;

    public BDS(jrc jrcVar, int i, int i2) {
        this(jrcVar.i(), jrcVar.b(), jrcVar.c(), i2);
        this.maxIndex = i;
        this.index = i2;
        this.used = true;
    }

    private BDSTreeHash getBDSTreeHashInstanceForUpdate() {
        BDSTreeHash bDSTreeHash = null;
        for (BDSTreeHash bDSTreeHash2 : this.treeHashInstances) {
            if (!bDSTreeHash2.isFinished() && bDSTreeHash2.isInitialized() && (bDSTreeHash == null || bDSTreeHash2.getHeight() < bDSTreeHash.getHeight() || (bDSTreeHash2.getHeight() == bDSTreeHash.getHeight() && bDSTreeHash2.getIndexLeaf() < bDSTreeHash.getIndexLeaf()))) {
                bDSTreeHash = bDSTreeHash2;
            }
        }
        return bDSTreeHash;
    }

    private void initialize(byte[] bArr, byte[] bArr2, c cVar) {
        if (cVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        b bVar = (b) ((b.C0434b) ((b.C0434b) new b.C0434b().g(cVar.b())).h(cVar.c())).l();
        a aVar = (a) ((a.b) ((a.b) new a.b().g(cVar.b())).h(cVar.c())).k();
        for (int i = 0; i < (1 << this.treeHeight); i++) {
            cVar = (c) ((c.b) ((c.b) ((c.b) new c.b().g(cVar.b())).h(cVar.c())).p(i).n(cVar.e()).o(cVar.f()).f(cVar.a())).l();
            d dVar = this.wotsPlus;
            dVar.h(dVar.g(bArr2, cVar), bArr);
            igc igcVarE = this.wotsPlus.e(cVar);
            bVar = (b) ((b.C0434b) ((b.C0434b) ((b.C0434b) new b.C0434b().g(bVar.b())).h(bVar.c())).n(i).o(bVar.f()).p(bVar.g()).f(bVar.a())).l();
            XMSSNode xMSSNodeA = f.a(this.wotsPlus, igcVarE, bVar);
            aVar = (a) ((a.b) ((a.b) ((a.b) new a.b().g(aVar.b())).h(aVar.c())).n(i).f(aVar.a())).k();
            while (!this.stack.isEmpty() && this.stack.peek().getHeight() == xMSSNodeA.getHeight()) {
                int height = i / (1 << xMSSNodeA.getHeight());
                if (height == 1) {
                    this.authenticationPath.add(xMSSNodeA);
                }
                if (height == 3 && xMSSNodeA.getHeight() < this.treeHeight - this.k) {
                    this.treeHashInstances.get(xMSSNodeA.getHeight()).setNode(xMSSNodeA);
                }
                if (height >= 3 && (height & 1) == 1 && xMSSNodeA.getHeight() >= this.treeHeight - this.k && xMSSNodeA.getHeight() <= this.treeHeight - 2) {
                    if (this.retain.get(Integer.valueOf(xMSSNodeA.getHeight())) == null) {
                        LinkedList<XMSSNode> linkedList = new LinkedList<>();
                        linkedList.add(xMSSNodeA);
                        this.retain.put(Integer.valueOf(xMSSNodeA.getHeight()), linkedList);
                    } else {
                        this.retain.get(Integer.valueOf(xMSSNodeA.getHeight())).add(xMSSNodeA);
                    }
                }
                a aVar2 = (a) ((a.b) ((a.b) ((a.b) new a.b().g(aVar.b())).h(aVar.c())).m(aVar.e()).n((aVar.f() - 1) / 2).f(aVar.a())).k();
                XMSSNode xMSSNodeB = f.b(this.wotsPlus, this.stack.pop(), xMSSNodeA, aVar2);
                XMSSNode xMSSNode = new XMSSNode(xMSSNodeB.getHeight() + 1, xMSSNodeB.getValue());
                aVar = (a) ((a.b) ((a.b) ((a.b) new a.b().g(aVar2.b())).h(aVar2.c())).m(aVar2.e() + 1).n(aVar2.f()).f(aVar2.a())).k();
                xMSSNodeA = xMSSNode;
            }
            this.stack.push(xMSSNodeA);
        }
        this.root = this.stack.pop();
    }

    private void nextAuthenticationPath(byte[] bArr, byte[] bArr2, c cVar) {
        List<XMSSNode> list;
        XMSSNode xMSSNodeRemoveFirst;
        if (cVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (this.used) {
            throw new IllegalStateException("index already used");
        }
        int i = this.index;
        if (i > this.maxIndex - 1) {
            throw new IllegalStateException("index out of bounds");
        }
        int iB = nrc.b(i, this.treeHeight);
        if (((this.index >> (iB + 1)) & 1) == 0 && iB < this.treeHeight - 1) {
            this.keep.put(Integer.valueOf(iB), this.authenticationPath.get(iB));
        }
        b bVar = (b) ((b.C0434b) ((b.C0434b) new b.C0434b().g(cVar.b())).h(cVar.c())).l();
        a aVar = (a) ((a.b) ((a.b) new a.b().g(cVar.b())).h(cVar.c())).k();
        if (iB == 0) {
            cVar = (c) ((c.b) ((c.b) ((c.b) new c.b().g(cVar.b())).h(cVar.c())).p(this.index).n(cVar.e()).o(cVar.f()).f(cVar.a())).l();
            d dVar = this.wotsPlus;
            dVar.h(dVar.g(bArr2, cVar), bArr);
            this.authenticationPath.set(0, f.a(this.wotsPlus, this.wotsPlus.e(cVar), (b) ((b.C0434b) ((b.C0434b) ((b.C0434b) new b.C0434b().g(bVar.b())).h(bVar.c())).n(this.index).o(bVar.f()).p(bVar.g()).f(bVar.a())).l()));
        } else {
            int i2 = iB - 1;
            a aVar2 = (a) ((a.b) ((a.b) ((a.b) new a.b().g(aVar.b())).h(aVar.c())).m(i2).n(this.index >> iB).f(aVar.a())).k();
            d dVar2 = this.wotsPlus;
            dVar2.h(dVar2.g(bArr2, cVar), bArr);
            XMSSNode xMSSNodeB = f.b(this.wotsPlus, this.authenticationPath.get(i2), this.keep.get(Integer.valueOf(i2)), aVar2);
            this.authenticationPath.set(iB, new XMSSNode(xMSSNodeB.getHeight() + 1, xMSSNodeB.getValue()));
            this.keep.remove(Integer.valueOf(i2));
            for (int i3 = 0; i3 < iB; i3++) {
                if (i3 < this.treeHeight - this.k) {
                    list = this.authenticationPath;
                    xMSSNodeRemoveFirst = this.treeHashInstances.get(i3).getTailNode();
                } else {
                    list = this.authenticationPath;
                    xMSSNodeRemoveFirst = this.retain.get(Integer.valueOf(i3)).removeFirst();
                }
                list.set(i3, xMSSNodeRemoveFirst);
            }
            int iMin = Math.min(iB, this.treeHeight - this.k);
            for (int i4 = 0; i4 < iMin; i4++) {
                int i5 = this.index + 1 + ((1 << i4) * 3);
                if (i5 < (1 << this.treeHeight)) {
                    this.treeHashInstances.get(i4).initialize(i5);
                }
            }
        }
        for (int i6 = 0; i6 < ((this.treeHeight - this.k) >> 1); i6++) {
            BDSTreeHash bDSTreeHashInstanceForUpdate = getBDSTreeHashInstanceForUpdate();
            if (bDSTreeHashInstanceForUpdate != null) {
                bDSTreeHashInstanceForUpdate.update(this.stack, this.wotsPlus, bArr, bArr2, cVar);
            }
        }
        this.index++;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readInt() : (1 << this.treeHeight) - 1;
        int i = this.maxIndex;
        if (i > (1 << this.treeHeight) - 1 || this.index > i + 1 || objectInputStream.available() != 0) {
            throw new IOException("inconsistent BDS data detected");
        }
    }

    private void validate() {
        if (this.authenticationPath == null) {
            throw new IllegalStateException("authenticationPath == null");
        }
        if (this.retain == null) {
            throw new IllegalStateException("retain == null");
        }
        if (this.stack == null) {
            throw new IllegalStateException("stack == null");
        }
        if (this.treeHashInstances == null) {
            throw new IllegalStateException("treeHashInstances == null");
        }
        if (this.keep == null) {
            throw new IllegalStateException("keep == null");
        }
        if (!nrc.l(this.treeHeight, this.index)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.maxIndex);
    }

    public List<XMSSNode> getAuthenticationPath() {
        ArrayList arrayList = new ArrayList();
        Iterator<XMSSNode> it = this.authenticationPath.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public int getIndex() {
        return this.index;
    }

    public int getMaxIndex() {
        return this.maxIndex;
    }

    public BDS getNextState(byte[] bArr, byte[] bArr2, c cVar) {
        return new BDS(this, bArr, bArr2, cVar);
    }

    public XMSSNode getRoot() {
        return this.root;
    }

    public int getTreeHeight() {
        return this.treeHeight;
    }

    public boolean isUsed() {
        return this.used;
    }

    public void markUsed() {
        this.used = true;
    }

    public BDS withMaxIndex(int i, l1 l1Var) {
        return new BDS(this, i, l1Var);
    }

    public BDS withWOTSDigest(l1 l1Var) {
        return new BDS(this, l1Var);
    }

    public BDS(jrc jrcVar, byte[] bArr, byte[] bArr2, c cVar) {
        this(jrcVar.i(), jrcVar.b(), jrcVar.c(), (1 << jrcVar.b()) - 1);
        initialize(bArr, bArr2, cVar);
    }

    public BDS(jrc jrcVar, byte[] bArr, byte[] bArr2, c cVar, int i) {
        this(jrcVar.i(), jrcVar.b(), jrcVar.c(), (1 << jrcVar.b()) - 1);
        initialize(bArr, bArr2, cVar);
        while (this.index < i) {
            nextAuthenticationPath(bArr, bArr2, cVar);
            this.used = false;
        }
    }

    public BDS(BDS bds) {
        this.wotsPlus = new d(bds.wotsPlus.d());
        this.treeHeight = bds.treeHeight;
        this.k = bds.k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<BDSTreeHash> it = bds.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = bds.used;
    }

    private BDS(BDS bds, int i, l1 l1Var) {
        this.wotsPlus = new d(new hgc(l1Var));
        this.treeHeight = bds.treeHeight;
        this.k = bds.k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<BDSTreeHash> it = bds.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = i;
        this.used = bds.used;
        validate();
    }

    private BDS(BDS bds, l1 l1Var) {
        this.wotsPlus = new d(new hgc(l1Var));
        this.treeHeight = bds.treeHeight;
        this.k = bds.k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<BDSTreeHash> it = bds.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = bds.used;
        validate();
    }

    private BDS(BDS bds, byte[] bArr, byte[] bArr2, c cVar) {
        this.wotsPlus = new d(bds.wotsPlus.d());
        this.treeHeight = bds.treeHeight;
        this.k = bds.k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        Iterator<BDSTreeHash> it = bds.treeHashInstances.iterator();
        while (it.hasNext()) {
            this.treeHashInstances.add(it.next().clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = false;
        nextAuthenticationPath(bArr, bArr2, cVar);
    }

    private BDS(d dVar, int i, int i2, int i3) {
        this.wotsPlus = dVar;
        this.treeHeight = i;
        this.maxIndex = i3;
        this.k = i2;
        if (i2 <= i && i2 >= 2) {
            int i4 = i - i2;
            if (i4 % 2 == 0) {
                this.authenticationPath = new ArrayList();
                this.retain = new TreeMap();
                this.stack = new Stack<>();
                this.treeHashInstances = new ArrayList();
                for (int i5 = 0; i5 < i4; i5++) {
                    this.treeHashInstances.add(new BDSTreeHash(i5));
                }
                this.keep = new TreeMap();
                this.index = 0;
                this.used = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }
}

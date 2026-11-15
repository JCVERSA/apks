package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public class h0 extends c implements i0, RandomAccess {

    @Deprecated
    public static final i0 EMPTY;
    private static final h0 EMPTY_LIST;
    private final List<Object> list;

    private static class a extends AbstractList implements RandomAccess {
        private final h0 list;

        a(h0 h0Var) {
            this.list = h0Var;
        }

        @Override
        public int size() {
            return this.list.size();
        }

        @Override
        public void add(int i10, byte[] bArr) {
            this.list.add(i10, bArr);
            ((AbstractList) this).modCount++;
        }

        @Override
        public byte[] get(int i10) {
            return this.list.getByteArray(i10);
        }

        @Override
        public byte[] remove(int i10) {
            String strRemove = this.list.remove(i10);
            ((AbstractList) this).modCount++;
            return h0.asByteArray(strRemove);
        }

        @Override
        public byte[] set(int i10, byte[] bArr) {
            Object andReturn = this.list.setAndReturn(i10, bArr);
            ((AbstractList) this).modCount++;
            return h0.asByteArray(andReturn);
        }
    }

    private static class b extends AbstractList implements RandomAccess {
        private final h0 list;

        b(h0 h0Var) {
            this.list = h0Var;
        }

        @Override
        public int size() {
            return this.list.size();
        }

        @Override
        public void add(int i10, ByteString byteString) {
            this.list.add(i10, byteString);
            ((AbstractList) this).modCount++;
        }

        @Override
        public ByteString get(int i10) {
            return this.list.getByteString(i10);
        }

        @Override
        public ByteString remove(int i10) {
            String strRemove = this.list.remove(i10);
            ((AbstractList) this).modCount++;
            return h0.asByteString(strRemove);
        }

        @Override
        public ByteString set(int i10, ByteString byteString) {
            Object andReturn = this.list.setAndReturn(i10, byteString);
            ((AbstractList) this).modCount++;
            return h0.asByteString(andReturn);
        }
    }

    static {
        h0 h0Var = new h0(false);
        EMPTY_LIST = h0Var;
        EMPTY = h0Var;
    }

    public h0() {
        this(10);
    }

    public static byte[] asByteArray(Object obj) {
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        return obj instanceof String ? y.toByteArray((String) obj) : ((ByteString) obj).toByteArray();
    }

    public static ByteString asByteString(Object obj) {
        if (obj instanceof ByteString) {
            return (ByteString) obj;
        }
        return obj instanceof String ? ByteString.copyFromUtf8((String) obj) : ByteString.copyFrom((byte[]) obj);
    }

    private static String asString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof ByteString ? ((ByteString) obj).toStringUtf8() : y.toStringUtf8((byte[]) obj);
    }

    public static h0 emptyList() {
        return EMPTY_LIST;
    }

    public Object setAndReturn(int i10, ByteString byteString) {
        ensureIsMutable();
        return this.list.set(i10, byteString);
    }

    @Override
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override
    public boolean addAllByteArray(Collection<byte[]> collection) {
        ensureIsMutable();
        boolean zAddAll = this.list.addAll(collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override
    public boolean addAllByteString(Collection<? extends ByteString> collection) {
        ensureIsMutable();
        boolean zAddAll = this.list.addAll(collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override
    public List<byte[]> asByteArrayList() {
        return new a(this);
    }

    @Override
    public List<ByteString> asByteStringList() {
        return new b(this);
    }

    @Override
    public void clear() {
        ensureIsMutable();
        this.list.clear();
        ((AbstractList) this).modCount++;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public byte[] getByteArray(int i10) {
        Object obj = this.list.get(i10);
        byte[] bArrAsByteArray = asByteArray(obj);
        if (bArrAsByteArray != obj) {
            this.list.set(i10, bArrAsByteArray);
        }
        return bArrAsByteArray;
    }

    @Override
    public ByteString getByteString(int i10) {
        Object obj = this.list.get(i10);
        ByteString byteStringAsByteString = asByteString(obj);
        if (byteStringAsByteString != obj) {
            this.list.set(i10, byteStringAsByteString);
        }
        return byteStringAsByteString;
    }

    @Override
    public Object getRaw(int i10) {
        return this.list.get(i10);
    }

    @Override
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.list);
    }

    @Override
    public i0 getUnmodifiableView() {
        return isModifiable() ? new r1(this) : this;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isModifiable() {
        return super.isModifiable();
    }

    @Override
    public void mergeFrom(i0 i0Var) {
        ensureIsMutable();
        for (Object obj : i0Var.getUnderlyingElements()) {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.list.add(Arrays.copyOf(bArr, bArr.length));
            } else {
                this.list.add(obj);
            }
        }
    }

    @Override
    public boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override
    public int size() {
        return this.list.size();
    }

    private h0(boolean z10) {
        super(z10);
        this.list = Collections.emptyList();
    }

    @Override
    public boolean add(Object obj) {
        return super.add(obj);
    }

    @Override
    public boolean addAll(int i10, Collection<? extends String> collection) {
        ensureIsMutable();
        if (collection instanceof i0) {
            collection = ((i0) collection).getUnderlyingElements();
        }
        boolean zAddAll = this.list.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override
    public String get(int i10) {
        Object obj = this.list.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.list.set(i10, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String stringUtf9 = y.toStringUtf8(bArr);
        if (y.isValidUtf8(bArr)) {
            this.list.set(i10, stringUtf9);
        }
        return stringUtf9;
    }

    @Override
    public h0 mutableCopyWithCapacity(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.list);
        return new h0((ArrayList<Object>) arrayList);
    }

    @Override
    public boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override
    public String set(int i10, String str) {
        ensureIsMutable();
        return asString(this.list.set(i10, str));
    }

    public Object setAndReturn(int i10, byte[] bArr) {
        ensureIsMutable();
        return this.list.set(i10, bArr);
    }

    @Override
    public void add(int i10, String str) {
        ensureIsMutable();
        this.list.add(i10, str);
        ((AbstractList) this).modCount++;
    }

    @Override
    public String remove(int i10) {
        ensureIsMutable();
        Object objRemove = this.list.remove(i10);
        ((AbstractList) this).modCount++;
        return asString(objRemove);
    }

    public h0(int i10) {
        this((ArrayList<Object>) new ArrayList(i10));
    }

    public h0(i0 i0Var) {
        this.list = new ArrayList(i0Var.size());
        addAll(i0Var);
    }

    @Override
    public void set(int i10, ByteString byteString) {
        setAndReturn(i10, byteString);
    }

    public void add(int i10, ByteString byteString) {
        ensureIsMutable();
        this.list.add(i10, byteString);
        ((AbstractList) this).modCount++;
    }

    @Override
    public void set(int i10, byte[] bArr) {
        setAndReturn(i10, bArr);
    }

    public h0(List<String> list) {
        this((ArrayList<Object>) new ArrayList(list));
    }

    private h0(ArrayList<Object> arrayList) {
        this.list = arrayList;
    }

    public void add(int i10, byte[] bArr) {
        ensureIsMutable();
        this.list.add(i10, bArr);
        ((AbstractList) this).modCount++;
    }

    @Override
    public void add(ByteString byteString) {
        ensureIsMutable();
        this.list.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override
    public void add(byte[] bArr) {
        ensureIsMutable();
        this.list.add(bArr);
        ((AbstractList) this).modCount++;
    }
}

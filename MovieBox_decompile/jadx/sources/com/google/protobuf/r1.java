package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public class r1 extends AbstractList implements i0, RandomAccess {
    private final i0 list;

    class a implements ListIterator {
        ListIterator<String> iter;
        final int val$index;

        a(int i10) {
            this.val$index = i10;
            this.iter = r1.this.list.listIterator(i10);
        }

        @Override
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override
        public boolean hasPrevious() {
            return this.iter.hasPrevious();
        }

        @Override
        public int nextIndex() {
            return this.iter.nextIndex();
        }

        @Override
        public int previousIndex() {
            return this.iter.previousIndex();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override
        public String next() {
            return this.iter.next();
        }

        @Override
        public String previous() {
            return this.iter.previous();
        }

        @Override
        public void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    class b implements Iterator {
        Iterator<String> iter;

        b() {
            this.iter = r1.this.list.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public String next() {
            return this.iter.next();
        }
    }

    public r1(i0 i0Var) {
        this.list = i0Var;
    }

    @Override
    public void add(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAllByteArray(Collection<byte[]> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAllByteString(Collection<? extends ByteString> collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public List<byte[]> asByteArrayList() {
        return Collections.unmodifiableList(this.list.asByteArrayList());
    }

    @Override
    public List<ByteString> asByteStringList() {
        return Collections.unmodifiableList(this.list.asByteStringList());
    }

    @Override
    public byte[] getByteArray(int i10) {
        return this.list.getByteArray(i10);
    }

    @Override
    public ByteString getByteString(int i10) {
        return this.list.getByteString(i10);
    }

    @Override
    public Object getRaw(int i10) {
        return this.list.getRaw(i10);
    }

    @Override
    public List<?> getUnderlyingElements() {
        return this.list.getUnderlyingElements();
    }

    @Override
    public i0 getUnmodifiableView() {
        return this;
    }

    @Override
    public Iterator<String> iterator() {
        return new b();
    }

    @Override
    public ListIterator<String> listIterator(int i10) {
        return new a(i10);
    }

    @Override
    public void mergeFrom(i0 i0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void set(int i10, ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.list.size();
    }

    @Override
    public void add(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String get(int i10) {
        return (String) this.list.get(i10);
    }

    @Override
    public void set(int i10, byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}

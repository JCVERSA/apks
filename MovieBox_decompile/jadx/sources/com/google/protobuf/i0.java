package com.google.protobuf;

import java.util.Collection;
import java.util.List;

public interface i0 extends f1 {
    void add(ByteString byteString);

    void add(byte[] bArr);

    boolean addAllByteArray(Collection<byte[]> collection);

    boolean addAllByteString(Collection<? extends ByteString> collection);

    List<byte[]> asByteArrayList();

    @Override
    List asByteStringList();

    byte[] getByteArray(int i10);

    ByteString getByteString(int i10);

    Object getRaw(int i10);

    List<?> getUnderlyingElements();

    i0 getUnmodifiableView();

    void mergeFrom(i0 i0Var);

    void set(int i10, ByteString byteString);

    void set(int i10, byte[] bArr);
}

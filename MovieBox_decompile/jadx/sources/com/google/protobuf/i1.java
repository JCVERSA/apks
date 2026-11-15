package com.google.protobuf;

import java.io.IOException;

interface i1 {
    boolean equals(Object obj, Object obj2);

    int getSerializedSize(Object obj);

    int hashCode(Object obj);

    boolean isInitialized(Object obj);

    void makeImmutable(Object obj);

    void mergeFrom(Object obj, h1 h1Var, o oVar) throws IOException;

    void mergeFrom(Object obj, Object obj2);

    void mergeFrom(Object obj, byte[] bArr, int i10, int i11, e.b bVar) throws IOException;

    Object newInstance();

    void writeTo(Object obj, Writer writer) throws IOException;
}

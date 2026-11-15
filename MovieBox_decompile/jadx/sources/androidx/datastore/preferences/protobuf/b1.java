package androidx.datastore.preferences.protobuf;

interface b1 {
    void a(Object obj, a1 a1Var, o oVar);

    void b(Object obj, Writer writer);

    void c(Object obj, byte[] bArr, int i10, int i11, e.a aVar);

    boolean equals(Object obj, Object obj2);

    int getSerializedSize(Object obj);

    int hashCode(Object obj);

    boolean isInitialized(Object obj);

    void makeImmutable(Object obj);

    void mergeFrom(Object obj, Object obj2);

    Object newInstance();
}

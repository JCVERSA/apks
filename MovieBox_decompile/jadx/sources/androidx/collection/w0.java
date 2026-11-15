package androidx.collection;

public abstract class w0 {

    private static final MutableScatterSet f2048a = new MutableScatterSet(0);

    public static final MutableScatterSet a() {
        return new MutableScatterSet(0, 1, null);
    }

    public static final MutableScatterSet b(Object obj, Object obj2) {
        MutableScatterSet mutableScatterSet = new MutableScatterSet(2);
        mutableScatterSet.w(obj);
        mutableScatterSet.w(obj2);
        return mutableScatterSet;
    }
}

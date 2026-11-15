package org.libtorrent4j.swig;

public final class storage_mode_t {
    public static final storage_mode_t storage_mode_allocate;
    public static final storage_mode_t storage_mode_sparse;
    private static int swigNext;
    private static storage_mode_t[] swigValues;
    private final String swigName;
    private final int swigValue;

    static {
        storage_mode_t storage_mode_tVar = new storage_mode_t("storage_mode_allocate");
        storage_mode_allocate = storage_mode_tVar;
        storage_mode_t storage_mode_tVar2 = new storage_mode_t("storage_mode_sparse");
        storage_mode_sparse = storage_mode_tVar2;
        swigValues = new storage_mode_t[]{storage_mode_tVar, storage_mode_tVar2};
        swigNext = 0;
    }

    private storage_mode_t(String str) {
        this.swigName = str;
        int i = swigNext;
        swigNext = i + 1;
        this.swigValue = i;
    }

    public static storage_mode_t swigToEnum(int i) {
        storage_mode_t[] storage_mode_tVarArr = swigValues;
        if (i < storage_mode_tVarArr.length && i >= 0) {
            storage_mode_t storage_mode_tVar = storage_mode_tVarArr[i];
            if (storage_mode_tVar.swigValue == i) {
                return storage_mode_tVar;
            }
        }
        int i2 = 0;
        while (true) {
            storage_mode_t[] storage_mode_tVarArr2 = swigValues;
            if (i2 >= storage_mode_tVarArr2.length) {
                throw new IllegalArgumentException("No enum " + storage_mode_t.class + " with value " + i);
            }
            storage_mode_t storage_mode_tVar2 = storage_mode_tVarArr2[i2];
            if (storage_mode_tVar2.swigValue == i) {
                return storage_mode_tVar2;
            }
            i2++;
        }
    }

    public final int swigValue() {
        return this.swigValue;
    }

    public String toString() {
        return this.swigName;
    }

    private storage_mode_t(String str, int i) {
        this.swigName = str;
        this.swigValue = i;
        swigNext = i + 1;
    }

    private storage_mode_t(String str, storage_mode_t storage_mode_tVar) {
        this.swigName = str;
        int i = storage_mode_tVar.swigValue;
        this.swigValue = i;
        swigNext = i + 1;
    }
}

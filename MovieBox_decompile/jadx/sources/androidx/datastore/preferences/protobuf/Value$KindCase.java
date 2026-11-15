package androidx.datastore.preferences.protobuf;

public enum Value$KindCase {
    NULL_VALUE(1),
    NUMBER_VALUE(2),
    STRING_VALUE(3),
    BOOL_VALUE(4),
    STRUCT_VALUE(5),
    LIST_VALUE(6),
    KIND_NOT_SET(0);

    private final int value;

    Value$KindCase(int i10) {
        this.value = i10;
    }

    public static Value$KindCase forNumber(int i10) {
        switch (i10) {
            case 0:
                return KIND_NOT_SET;
            case 1:
                return NULL_VALUE;
            case 2:
                return NUMBER_VALUE;
            case 3:
                return STRING_VALUE;
            case 4:
                return BOOL_VALUE;
            case 5:
                return STRUCT_VALUE;
            case 6:
                return LIST_VALUE;
            default:
                return null;
        }
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static Value$KindCase valueOf(int i10) {
        return forNumber(i10);
    }
}

package com.google.protobuf;

public abstract class m {
    public abstract Object getDefaultValue();

    public abstract WireFormat.FieldType getLiteType();

    public abstract s0 getMessageDefaultInstance();

    public abstract int getNumber();

    boolean isLite() {
        return true;
    }

    public abstract boolean isRepeated();
}

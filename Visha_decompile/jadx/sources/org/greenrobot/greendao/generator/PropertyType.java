package org.greenrobot.greendao.generator;

public enum PropertyType {
    Byte(true),
    Short(true),
    Int(true),
    Long(true),
    Boolean(true),
    Float(true),
    Double(true),
    String(false),
    ByteArray(false),
    Date(false);

    private final boolean scalar;

    PropertyType(boolean z) {
        this.scalar = z;
    }

    public boolean isScalar() {
        return this.scalar;
    }
}

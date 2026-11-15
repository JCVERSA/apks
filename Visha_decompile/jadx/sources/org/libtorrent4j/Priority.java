package org.libtorrent4j;

import org.libtorrent4j.swig.byte_vector;

public enum Priority {
    IGNORE(0),
    LOW(1),
    TWO(2),
    THREE(3),
    DEFAULT(4),
    FIVE(5),
    SIX(6),
    TOP_PRIORITY(7);

    private final byte swigValue;

    Priority(int i) {
        this.swigValue = (byte) i;
    }

    public static Priority[] array(Priority priority, int i) {
        Priority[] priorityArr = new Priority[i];
        for (int i2 = 0; i2 < i; i2++) {
            priorityArr[i2] = priority;
        }
        return priorityArr;
    }

    public static byte_vector array2vector(Priority[] priorityArr) {
        byte_vector byte_vectorVar = new byte_vector();
        for (Priority priority : priorityArr) {
            byte_vectorVar.add(Byte.valueOf(priority.swig()));
        }
        return byte_vectorVar;
    }

    public static Priority fromSwig(int i) {
        for (Priority priority : (Priority[]) Priority.class.getEnumConstants()) {
            if (priority.swig() == i) {
                return priority;
            }
        }
        throw new IllegalArgumentException("Invalid native value");
    }

    public static Priority[] vector2array(byte_vector byte_vectorVar) {
        int size = byte_vectorVar.size();
        Priority[] priorityArr = new Priority[size];
        for (int i = 0; i < size; i++) {
            priorityArr[i] = fromSwig(byte_vectorVar.get(i).byteValue());
        }
        return priorityArr;
    }

    public byte swig() {
        return this.swigValue;
    }
}

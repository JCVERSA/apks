package org.proninyaroslav.libretorrent.core.model.data;

public enum Priority {
    IGNORE(0),
    LOW(1),
    TWO(2),
    THREE(3),
    DEFAULT(4),
    FIVE(5),
    SIX(6),
    TOP_PRIORITY(7);

    private final int val;

    Priority(int i) {
        this.val = i;
    }

    public static Priority fromValue(int i) {
        for (Priority priority : (Priority[]) Priority.class.getEnumConstants()) {
            if (priority.value() == i) {
                return priority;
            }
        }
        throw new IllegalArgumentException("Invalid value");
    }

    public int value() {
        return this.val;
    }
}

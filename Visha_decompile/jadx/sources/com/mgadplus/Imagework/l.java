package com.mgadplus.Imagework;

import com.bumptech.glide.Priority;

public enum l {
    LOW(Priority.LOW),
    NORMAL(Priority.NORMAL),
    HIGH(Priority.HIGH),
    IMMEDIATE(Priority.IMMEDIATE);

    Priority priority;

    l(Priority priority) {
        this.priority = priority;
    }

    public Priority getPriority() {
        return this.priority;
    }
}

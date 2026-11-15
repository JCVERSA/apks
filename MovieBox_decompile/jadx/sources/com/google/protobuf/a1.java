package com.google.protobuf;

import java.lang.reflect.Field;

final class a1 {
    private final Field caseField;

    private final int f31985id;
    private final Field valueField;

    public a1(int i10, Field field, Field field2) {
        this.f31985id = i10;
        this.caseField = field;
        this.valueField = field2;
    }

    public Field getCaseField() {
        return this.caseField;
    }

    public int getId() {
        return this.f31985id;
    }

    public Field getValueField() {
        return this.valueField;
    }
}

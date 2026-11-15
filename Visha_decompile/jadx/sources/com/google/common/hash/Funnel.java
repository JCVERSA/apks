package com.google.common.hash;

import defpackage.hf8;
import java.io.Serializable;

public interface Funnel<T> extends Serializable {
    void funnel(T t, hf8 hf8Var);
}

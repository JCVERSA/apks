package com.cloud.tmc.kernel.bridge.extension.bind;

import java.lang.annotation.Annotation;

public interface Binder<A extends Annotation, T> {
    T bind(Class<T> cls, A a10) throws BindException;
}

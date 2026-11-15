package com.cloud.tmc.kernel.bridge.extension.bind;

import com.cloud.tmc.kernel.bridge.extension.annotation.BindingId;

public class IdBinder implements Binder<BindingId, String> {

    private String f22822id;

    public IdBinder(String str) {
        this.f22822id = str;
    }

    @Override
    public String bind(Class<String> cls, BindingId bindingId) throws BindException {
        return this.f22822id;
    }
}

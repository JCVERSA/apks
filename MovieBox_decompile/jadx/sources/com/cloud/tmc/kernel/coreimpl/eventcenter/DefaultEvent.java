package com.cloud.tmc.kernel.coreimpl.eventcenter;

import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import java.util.Map;

public class DefaultEvent implements IEvent {
    private Map<String, Object> data;
    private final String name;
    private String renderId;

    public DefaultEvent(String str) {
        this.name = str;
    }

    @Override
    public Map<String, Object> getData() {
        return this.data;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public String getRenderId() {
        return this.renderId;
    }

    @Override
    public void setData(Map<String, Object> map) {
        this.data = map;
    }

    @Override
    public void setRenderId(String str) {
        this.renderId = str;
    }
}

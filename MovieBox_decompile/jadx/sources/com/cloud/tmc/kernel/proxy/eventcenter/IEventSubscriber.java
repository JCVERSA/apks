package com.cloud.tmc.kernel.proxy.eventcenter;

public interface IEventSubscriber {
    boolean onEvent(IEvent iEvent);
}

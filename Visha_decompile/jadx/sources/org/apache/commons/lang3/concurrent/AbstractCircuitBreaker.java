package org.apache.commons.lang3.concurrent;

import defpackage.wk5;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AbstractCircuitBreaker<T> implements CircuitBreaker<T> {
    public static final String PROPERTY_NAME = "open";
    protected final AtomicReference<State> state = new AtomicReference<>(State.CLOSED);
    private final PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    public enum State {
        CLOSED {
            @Override
            public State oppositeState() {
                return State.OPEN;
            }
        },
        OPEN {
            @Override
            public State oppositeState() {
                return State.CLOSED;
            }
        };

        public abstract State oppositeState();
    }

    public void addChangeListener(PropertyChangeListener propertyChangeListener) {
        this.changeSupport.addPropertyChangeListener(propertyChangeListener);
    }

    public void changeState(State state) {
        if (wk5.a(this.state, state.oppositeState(), state)) {
            this.changeSupport.firePropertyChange("open", !isOpen(state), isOpen(state));
        }
    }

    @Override
    public abstract boolean checkState();

    @Override
    public void close() {
        changeState(State.CLOSED);
    }

    @Override
    public abstract boolean incrementAndCheckState(T t);

    @Override
    public boolean isClosed() {
        return !isOpen();
    }

    @Override
    public boolean isOpen() {
        return isOpen(this.state.get());
    }

    @Override
    public void open() {
        changeState(State.OPEN);
    }

    public void removeChangeListener(PropertyChangeListener propertyChangeListener) {
        this.changeSupport.removePropertyChangeListener(propertyChangeListener);
    }

    public static boolean isOpen(State state) {
        return state == State.OPEN;
    }
}

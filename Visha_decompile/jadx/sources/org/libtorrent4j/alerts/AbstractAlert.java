package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.alert;
import org.libtorrent4j.swig.alert_category_t;

public abstract class AbstractAlert<T extends alert> implements Alert<T> {
    protected final T alert;
    private final AlertType type;

    public AbstractAlert(T t) {
        this.alert = t;
        this.type = AlertType.fromSwig(t.type());
    }

    @Override
    public alert_category_t category() {
        return this.alert.category();
    }

    @Override
    public String message() {
        return this.alert.message();
    }

    @Override
    public final T swig() {
        return this.alert;
    }

    @Override
    public long timestamp() {
        return this.alert.get_timestamp();
    }

    public String toString() {
        return type() + " - " + what() + " - " + message();
    }

    @Override
    public AlertType type() {
        return this.type;
    }

    @Override
    public String what() {
        return this.alert.what();
    }
}

package org.libtorrent4j;

import org.libtorrent4j.alerts.Alert;

final class AlertMulticaster implements AlertListener {
    private final AlertListener a;
    private final AlertListener b;

    public AlertMulticaster(AlertListener alertListener, AlertListener alertListener2) {
        this.a = alertListener;
        this.b = alertListener2;
    }

    public static AlertListener add(AlertListener alertListener, AlertListener alertListener2) {
        return addInternal(alertListener, alertListener2);
    }

    private static AlertListener addInternal(AlertListener alertListener, AlertListener alertListener2) {
        if (alertListener == null) {
            return alertListener2;
        }
        return alertListener2 == null ? alertListener : new AlertMulticaster(alertListener, alertListener2);
    }

    public static AlertListener remove(AlertListener alertListener, AlertListener alertListener2) {
        return removeInternal(alertListener, alertListener2);
    }

    private static AlertListener removeInternal(AlertListener alertListener, AlertListener alertListener2) {
        if (alertListener == alertListener2 || alertListener == null) {
            return null;
        }
        return alertListener instanceof AlertMulticaster ? ((AlertMulticaster) alertListener).remove(alertListener2) : alertListener;
    }

    @Override
    public void alert(Alert<?> alert) {
        this.a.alert(alert);
        this.b.alert(alert);
    }

    @Override
    public int[] types() {
        return null;
    }

    private AlertListener remove(AlertListener alertListener) {
        AlertListener alertListener2 = this.a;
        if (alertListener == alertListener2) {
            return this.b;
        }
        if (alertListener == this.b) {
            return alertListener2;
        }
        AlertListener alertListenerRemoveInternal = removeInternal(alertListener2, alertListener);
        AlertListener alertListenerRemoveInternal2 = removeInternal(this.b, alertListener);
        return (alertListenerRemoveInternal == this.a && alertListenerRemoveInternal2 == this.b) ? this : addInternal(alertListenerRemoveInternal, alertListenerRemoveInternal2);
    }
}

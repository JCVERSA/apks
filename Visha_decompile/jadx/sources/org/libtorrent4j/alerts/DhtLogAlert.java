package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.dht_log_alert;

public final class DhtLogAlert extends AbstractAlert<dht_log_alert> {

    public enum DhtModule {
        TRACKER(dht_log_alert.dht_module_t.tracker.swigValue()),
        NODE(dht_log_alert.dht_module_t.node.swigValue()),
        ROUTING_TABLE(dht_log_alert.dht_module_t.routing_table.swigValue()),
        RPC_MANAGER(dht_log_alert.dht_module_t.rpc_manager.swigValue()),
        TRAVERSAL(dht_log_alert.dht_module_t.traversal.swigValue()),
        UNKNOWN(-1);

        private final int swigValue;

        DhtModule(int i) {
            this.swigValue = i;
        }

        public static DhtModule fromSwig(int i) {
            for (DhtModule dhtModule : (DhtModule[]) DhtModule.class.getEnumConstants()) {
                if (dhtModule.swig() == i) {
                    return dhtModule;
                }
            }
            return UNKNOWN;
        }

        public int swig() {
            return this.swigValue;
        }
    }

    public DhtLogAlert(dht_log_alert dht_log_alertVar) {
        super(dht_log_alertVar);
    }

    public String logMessage() {
        return ((dht_log_alert) this.alert).log_message();
    }

    public DhtModule module() {
        return DhtModule.fromSwig(((dht_log_alert) this.alert).getModule().swigValue());
    }
}

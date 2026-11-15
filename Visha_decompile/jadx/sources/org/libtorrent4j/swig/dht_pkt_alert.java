package org.libtorrent4j.swig;

public class dht_pkt_alert extends alert {
    private transient long swigCPtr;
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.dht_pkt_alert_static_category_get(), false);
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.dht_pkt_alert_priority_get());
    public static final int alert_type = libtorrent_jni.dht_pkt_alert_alert_type_get();

    public dht_pkt_alert(long j, boolean z) {
        super(libtorrent_jni.dht_pkt_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(dht_pkt_alert dht_pkt_alertVar) {
        if (dht_pkt_alertVar == null) {
            return 0L;
        }
        return dht_pkt_alertVar.swigCPtr;
    }

    public static long swigRelease(dht_pkt_alert dht_pkt_alertVar) {
        if (dht_pkt_alertVar == null) {
            return 0L;
        }
        if (!dht_pkt_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_pkt_alertVar.swigCPtr;
        dht_pkt_alertVar.swigCMemOwn = false;
        dht_pkt_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.dht_pkt_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_pkt_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void finalize() {
        delete();
    }

    public direction_t getDirection() {
        return direction_t.swigToEnum(libtorrent_jni.dht_pkt_alert_direction_get(this.swigCPtr, this));
    }

    public udp_endpoint get_node() {
        return new udp_endpoint(libtorrent_jni.dht_pkt_alert_get_node(this.swigCPtr, this), true);
    }

    public byte_vector get_pkt_buf() {
        return new byte_vector(libtorrent_jni.dht_pkt_alert_get_pkt_buf(this.swigCPtr, this), true);
    }

    @Override
    public String message() {
        return libtorrent_jni.dht_pkt_alert_message(this.swigCPtr, this);
    }

    public void setDirection(direction_t direction_tVar) {
        libtorrent_jni.dht_pkt_alert_direction_set(this.swigCPtr, this, direction_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.dht_pkt_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.dht_pkt_alert_what(this.swigCPtr, this);
    }

    public static final class direction_t {
        public static final direction_t incoming;
        public static final direction_t outgoing;
        private static int swigNext;
        private static direction_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            direction_t direction_tVar = new direction_t("incoming");
            incoming = direction_tVar;
            direction_t direction_tVar2 = new direction_t("outgoing");
            outgoing = direction_tVar2;
            swigValues = new direction_t[]{direction_tVar, direction_tVar2};
            swigNext = 0;
        }

        private direction_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static direction_t swigToEnum(int i) {
            direction_t[] direction_tVarArr = swigValues;
            if (i < direction_tVarArr.length && i >= 0) {
                direction_t direction_tVar = direction_tVarArr[i];
                if (direction_tVar.swigValue == i) {
                    return direction_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                direction_t[] direction_tVarArr2 = swigValues;
                if (i2 >= direction_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + direction_t.class + " with value " + i);
                }
                direction_t direction_tVar2 = direction_tVarArr2[i2];
                if (direction_tVar2.swigValue == i) {
                    return direction_tVar2;
                }
                i2++;
            }
        }

        public final int swigValue() {
            return this.swigValue;
        }

        public String toString() {
            return this.swigName;
        }

        private direction_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private direction_t(String str, direction_t direction_tVar) {
            this.swigName = str;
            int i = direction_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }
}

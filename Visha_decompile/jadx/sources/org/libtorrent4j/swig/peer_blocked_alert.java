package org.libtorrent4j.swig;

public class peer_blocked_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.peer_blocked_alert_priority_get());
    public static final int alert_type = libtorrent_jni.peer_blocked_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.peer_blocked_alert_static_category_get(), false);

    public peer_blocked_alert(long j, boolean z) {
        super(libtorrent_jni.peer_blocked_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_blocked_alert peer_blocked_alertVar) {
        if (peer_blocked_alertVar == null) {
            return 0L;
        }
        return peer_blocked_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_blocked_alert peer_blocked_alertVar) {
        if (peer_blocked_alertVar == null) {
            return 0L;
        }
        if (!peer_blocked_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_blocked_alertVar.swigCPtr;
        peer_blocked_alertVar.swigCMemOwn = false;
        peer_blocked_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.peer_blocked_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_blocked_alert(j);
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

    public int getReason() {
        return libtorrent_jni.peer_blocked_alert_reason_get(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.peer_blocked_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.peer_blocked_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.peer_blocked_alert_what(this.swigCPtr, this);
    }

    public static final class reason_t {
        public static final reason_t i2p_mixed;
        public static final reason_t invalid_local_interface;
        public static final reason_t ip_filter;
        public static final reason_t port_filter;
        public static final reason_t privileged_ports;
        public static final reason_t ssrf_mitigation;
        private static int swigNext;
        private static reason_t[] swigValues;
        public static final reason_t tcp_disabled;
        public static final reason_t utp_disabled;
        private final String swigName;
        private final int swigValue;

        static {
            reason_t reason_tVar = new reason_t("ip_filter");
            ip_filter = reason_tVar;
            reason_t reason_tVar2 = new reason_t("port_filter");
            port_filter = reason_tVar2;
            reason_t reason_tVar3 = new reason_t("i2p_mixed");
            i2p_mixed = reason_tVar3;
            reason_t reason_tVar4 = new reason_t("privileged_ports");
            privileged_ports = reason_tVar4;
            reason_t reason_tVar5 = new reason_t("utp_disabled");
            utp_disabled = reason_tVar5;
            reason_t reason_tVar6 = new reason_t("tcp_disabled");
            tcp_disabled = reason_tVar6;
            reason_t reason_tVar7 = new reason_t("invalid_local_interface");
            invalid_local_interface = reason_tVar7;
            reason_t reason_tVar8 = new reason_t("ssrf_mitigation");
            ssrf_mitigation = reason_tVar8;
            swigValues = new reason_t[]{reason_tVar, reason_tVar2, reason_tVar3, reason_tVar4, reason_tVar5, reason_tVar6, reason_tVar7, reason_tVar8};
            swigNext = 0;
        }

        private reason_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static reason_t swigToEnum(int i) {
            reason_t[] reason_tVarArr = swigValues;
            if (i < reason_tVarArr.length && i >= 0) {
                reason_t reason_tVar = reason_tVarArr[i];
                if (reason_tVar.swigValue == i) {
                    return reason_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                reason_t[] reason_tVarArr2 = swigValues;
                if (i2 >= reason_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + reason_t.class + " with value " + i);
                }
                reason_t reason_tVar2 = reason_tVarArr2[i2];
                if (reason_tVar2.swigValue == i) {
                    return reason_tVar2;
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

        private reason_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private reason_t(String str, reason_t reason_tVar) {
            this.swigName = str;
            int i = reason_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }
}

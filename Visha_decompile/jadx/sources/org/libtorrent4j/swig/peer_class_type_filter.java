package org.libtorrent4j.swig;

public class peer_class_type_filter {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public peer_class_type_filter(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_class_type_filter peer_class_type_filterVar) {
        if (peer_class_type_filterVar == null) {
            return 0L;
        }
        return peer_class_type_filterVar.swigCPtr;
    }

    public static long swigRelease(peer_class_type_filter peer_class_type_filterVar) {
        if (peer_class_type_filterVar == null) {
            return 0L;
        }
        if (!peer_class_type_filterVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_class_type_filterVar.swigCPtr;
        peer_class_type_filterVar.swigCMemOwn = false;
        peer_class_type_filterVar.delete();
        return j;
    }

    public long apply(socket_type_t socket_type_tVar, long j) {
        return libtorrent_jni.peer_class_type_filter_apply(this.swigCPtr, this, socket_type_tVar.swigValue(), j);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_class_type_filter(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public static final class socket_type_t {
        public static final socket_type_t i2p_socket;
        public static final socket_type_t num_socket_types;
        public static final socket_type_t ssl_tcp_socket;
        public static final socket_type_t ssl_utp_socket;
        private static int swigNext;
        private static socket_type_t[] swigValues;
        public static final socket_type_t tcp_socket;
        public static final socket_type_t utp_socket;
        private final String swigName;
        private final int swigValue;

        static {
            socket_type_t socket_type_tVar = new socket_type_t("tcp_socket", libtorrent_jni.peer_class_type_filter_tcp_socket_get());
            tcp_socket = socket_type_tVar;
            socket_type_t socket_type_tVar2 = new socket_type_t("utp_socket");
            utp_socket = socket_type_tVar2;
            socket_type_t socket_type_tVar3 = new socket_type_t("ssl_tcp_socket");
            ssl_tcp_socket = socket_type_tVar3;
            socket_type_t socket_type_tVar4 = new socket_type_t("ssl_utp_socket");
            ssl_utp_socket = socket_type_tVar4;
            socket_type_t socket_type_tVar5 = new socket_type_t("i2p_socket");
            i2p_socket = socket_type_tVar5;
            socket_type_t socket_type_tVar6 = new socket_type_t("num_socket_types");
            num_socket_types = socket_type_tVar6;
            swigValues = new socket_type_t[]{socket_type_tVar, socket_type_tVar2, socket_type_tVar3, socket_type_tVar4, socket_type_tVar5, socket_type_tVar6};
            swigNext = 0;
        }

        private socket_type_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static socket_type_t swigToEnum(int i) {
            socket_type_t[] socket_type_tVarArr = swigValues;
            if (i < socket_type_tVarArr.length && i >= 0) {
                socket_type_t socket_type_tVar = socket_type_tVarArr[i];
                if (socket_type_tVar.swigValue == i) {
                    return socket_type_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                socket_type_t[] socket_type_tVarArr2 = swigValues;
                if (i2 >= socket_type_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + socket_type_t.class + " with value " + i);
                }
                socket_type_t socket_type_tVar2 = socket_type_tVarArr2[i2];
                if (socket_type_tVar2.swigValue == i) {
                    return socket_type_tVar2;
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

        private socket_type_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private socket_type_t(String str, socket_type_t socket_type_tVar) {
            this.swigName = str;
            int i = socket_type_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public peer_class_type_filter() {
        this(libtorrent_jni.new_peer_class_type_filter(), true);
    }
}

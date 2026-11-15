package org.libtorrent4j.swig;

public class peer_connect_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.peer_connect_alert_priority_get());
    public static final int alert_type = libtorrent_jni.peer_connect_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.peer_connect_alert_static_category_get(), false);

    public peer_connect_alert(long j, boolean z) {
        super(libtorrent_jni.peer_connect_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_connect_alert peer_connect_alertVar) {
        if (peer_connect_alertVar == null) {
            return 0L;
        }
        return peer_connect_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_connect_alert peer_connect_alertVar) {
        if (peer_connect_alertVar == null) {
            return 0L;
        }
        if (!peer_connect_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_connect_alertVar.swigCPtr;
        peer_connect_alertVar.swigCMemOwn = false;
        peer_connect_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.peer_connect_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_connect_alert(j);
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
        return direction_t.swigToEnum(libtorrent_jni.peer_connect_alert_direction_get(this.swigCPtr, this));
    }

    public socket_type_t getSocket_type() {
        return socket_type_t.swigToEnum(libtorrent_jni.peer_connect_alert_socket_type_get(this.swigCPtr, this));
    }

    @Override
    public String message() {
        return libtorrent_jni.peer_connect_alert_message(this.swigCPtr, this);
    }

    public void setDirection(direction_t direction_tVar) {
        libtorrent_jni.peer_connect_alert_direction_set(this.swigCPtr, this, direction_tVar.swigValue());
    }

    public void setSocket_type(socket_type_t socket_type_tVar) {
        libtorrent_jni.peer_connect_alert_socket_type_set(this.swigCPtr, this, socket_type_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.peer_connect_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.peer_connect_alert_what(this.swigCPtr, this);
    }

    public static final class direction_t {
        public static final direction_t in;
        public static final direction_t out;
        private static int swigNext;
        private static direction_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            direction_t direction_tVar = new direction_t("in");
            in = direction_tVar;
            direction_t direction_tVar2 = new direction_t("out");
            out = direction_tVar2;
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

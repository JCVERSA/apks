package org.libtorrent4j.swig;

public class block_info {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public block_info(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(block_info block_infoVar) {
        if (block_infoVar == null) {
            return 0L;
        }
        return block_infoVar.swigCPtr;
    }

    public static long swigRelease(block_info block_infoVar) {
        if (block_infoVar == null) {
            return 0L;
        }
        if (!block_infoVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = block_infoVar.swigCPtr;
        block_infoVar.swigCMemOwn = false;
        block_infoVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_block_info(j);
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

    public long getBlock_size() {
        return libtorrent_jni.block_info_block_size_get(this.swigCPtr, this);
    }

    public long getBytes_progress() {
        return libtorrent_jni.block_info_bytes_progress_get(this.swigCPtr, this);
    }

    public long getNum_peers() {
        return libtorrent_jni.block_info_num_peers_get(this.swigCPtr, this);
    }

    public long getState() {
        return libtorrent_jni.block_info_state_get(this.swigCPtr, this);
    }

    public tcp_endpoint peer() {
        return new tcp_endpoint(libtorrent_jni.block_info_peer(this.swigCPtr, this), true);
    }

    public void setBlock_size(long j) {
        libtorrent_jni.block_info_block_size_set(this.swigCPtr, this, j);
    }

    public void setBytes_progress(long j) {
        libtorrent_jni.block_info_bytes_progress_set(this.swigCPtr, this, j);
    }

    public void setNum_peers(long j) {
        libtorrent_jni.block_info_num_peers_set(this.swigCPtr, this, j);
    }

    public void setState(long j) {
        libtorrent_jni.block_info_state_set(this.swigCPtr, this, j);
    }

    public void set_peer(tcp_endpoint tcp_endpointVar) {
        libtorrent_jni.block_info_set_peer(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar);
    }

    public static final class block_state_t {
        public static final block_state_t finished;
        public static final block_state_t none;
        public static final block_state_t requested;
        private static int swigNext;
        private static block_state_t[] swigValues;
        public static final block_state_t writing;
        private final String swigName;
        private final int swigValue;

        static {
            block_state_t block_state_tVar = new block_state_t("none");
            none = block_state_tVar;
            block_state_t block_state_tVar2 = new block_state_t("requested");
            requested = block_state_tVar2;
            block_state_t block_state_tVar3 = new block_state_t("writing");
            writing = block_state_tVar3;
            block_state_t block_state_tVar4 = new block_state_t("finished");
            finished = block_state_tVar4;
            swigValues = new block_state_t[]{block_state_tVar, block_state_tVar2, block_state_tVar3, block_state_tVar4};
            swigNext = 0;
        }

        private block_state_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static block_state_t swigToEnum(int i) {
            block_state_t[] block_state_tVarArr = swigValues;
            if (i < block_state_tVarArr.length && i >= 0) {
                block_state_t block_state_tVar = block_state_tVarArr[i];
                if (block_state_tVar.swigValue == i) {
                    return block_state_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                block_state_t[] block_state_tVarArr2 = swigValues;
                if (i2 >= block_state_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + block_state_t.class + " with value " + i);
                }
                block_state_t block_state_tVar2 = block_state_tVarArr2[i2];
                if (block_state_tVar2.swigValue == i) {
                    return block_state_tVar2;
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

        private block_state_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private block_state_t(String str, block_state_t block_state_tVar) {
            this.swigName = str;
            int i = block_state_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public block_info() {
        this(libtorrent_jni.new_block_info(), true);
    }
}

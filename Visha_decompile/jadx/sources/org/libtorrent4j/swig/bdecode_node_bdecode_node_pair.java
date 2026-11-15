package org.libtorrent4j.swig;

public class bdecode_node_bdecode_node_pair {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bdecode_node_bdecode_node_pair(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(bdecode_node_bdecode_node_pair bdecode_node_bdecode_node_pairVar) {
        if (bdecode_node_bdecode_node_pairVar == null) {
            return 0L;
        }
        return bdecode_node_bdecode_node_pairVar.swigCPtr;
    }

    public static long swigRelease(bdecode_node_bdecode_node_pair bdecode_node_bdecode_node_pairVar) {
        if (bdecode_node_bdecode_node_pairVar == null) {
            return 0L;
        }
        if (!bdecode_node_bdecode_node_pairVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bdecode_node_bdecode_node_pairVar.swigCPtr;
        bdecode_node_bdecode_node_pairVar.swigCMemOwn = false;
        bdecode_node_bdecode_node_pairVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bdecode_node_bdecode_node_pair(j);
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

    public bdecode_node getFirst() {
        long jBdecode_node_bdecode_node_pair_first_get = libtorrent_jni.bdecode_node_bdecode_node_pair_first_get(this.swigCPtr, this);
        if (jBdecode_node_bdecode_node_pair_first_get == 0) {
            return null;
        }
        return new bdecode_node(jBdecode_node_bdecode_node_pair_first_get, false);
    }

    public bdecode_node getSecond() {
        long jBdecode_node_bdecode_node_pair_second_get = libtorrent_jni.bdecode_node_bdecode_node_pair_second_get(this.swigCPtr, this);
        if (jBdecode_node_bdecode_node_pair_second_get == 0) {
            return null;
        }
        return new bdecode_node(jBdecode_node_bdecode_node_pair_second_get, false);
    }

    public void setFirst(bdecode_node bdecode_nodeVar) {
        libtorrent_jni.bdecode_node_bdecode_node_pair_first_set(this.swigCPtr, this, bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar);
    }

    public void setSecond(bdecode_node bdecode_nodeVar) {
        libtorrent_jni.bdecode_node_bdecode_node_pair_second_set(this.swigCPtr, this, bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar);
    }

    public bdecode_node_bdecode_node_pair() {
        this(libtorrent_jni.new_bdecode_node_bdecode_node_pair__SWIG_0(), true);
    }

    public bdecode_node_bdecode_node_pair(bdecode_node bdecode_nodeVar, bdecode_node bdecode_nodeVar2) {
        this(libtorrent_jni.new_bdecode_node_bdecode_node_pair__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, bdecode_node.getCPtr(bdecode_nodeVar2), bdecode_nodeVar2), true);
    }

    public bdecode_node_bdecode_node_pair(bdecode_node_bdecode_node_pair bdecode_node_bdecode_node_pairVar) {
        this(libtorrent_jni.new_bdecode_node_bdecode_node_pair__SWIG_2(getCPtr(bdecode_node_bdecode_node_pairVar), bdecode_node_bdecode_node_pairVar), true);
    }
}

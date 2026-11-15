package org.libtorrent4j.swig;

public class session extends session_handle {
    private transient long swigCPtr;

    public session(long j, boolean z) {
        super(libtorrent_jni.session_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(session sessionVar) {
        if (sessionVar == null) {
            return 0L;
        }
        return sessionVar.swigCPtr;
    }

    public static long swigRelease(session sessionVar) {
        if (sessionVar == null) {
            return 0L;
        }
        if (!sessionVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = sessionVar.swigCPtr;
        sessionVar.swigCMemOwn = false;
        sessionVar.delete();
        return j;
    }

    public session_proxy abort() {
        return new session_proxy(libtorrent_jni.session_abort(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_session(j);
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

    public session(session_params session_paramsVar) {
        this(libtorrent_jni.new_session__SWIG_0(session_params.getCPtr(session_paramsVar), session_paramsVar), true);
    }

    public session() {
        this(libtorrent_jni.new_session__SWIG_1(), true);
    }

    public session(session sessionVar) {
        this(libtorrent_jni.new_session__SWIG_2(swigRelease(sessionVar), sessionVar), true);
    }
}

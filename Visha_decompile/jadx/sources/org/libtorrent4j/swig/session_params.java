package org.libtorrent4j.swig;

public class session_params {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public session_params(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(session_params session_paramsVar) {
        if (session_paramsVar == null) {
            return 0L;
        }
        return session_paramsVar.swigCPtr;
    }

    public static session_params read_session_params(bdecode_node bdecode_nodeVar, save_state_flags_t save_state_flags_tVar) {
        return new session_params(libtorrent_jni.session_params_read_session_params__SWIG_0(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, save_state_flags_t.getCPtr(save_state_flags_tVar), save_state_flags_tVar), true);
    }

    public static long swigRelease(session_params session_paramsVar) {
        if (session_paramsVar == null) {
            return 0L;
        }
        if (!session_paramsVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = session_paramsVar.swigCPtr;
        session_paramsVar.swigCMemOwn = false;
        session_paramsVar.delete();
        return j;
    }

    public static entry write_session_params(session_params session_paramsVar, save_state_flags_t save_state_flags_tVar) {
        return new entry(libtorrent_jni.session_params_write_session_params__SWIG_0(getCPtr(session_paramsVar), session_paramsVar, save_state_flags_t.getCPtr(save_state_flags_tVar), save_state_flags_tVar), true);
    }

    public static byte_vector write_session_params_buf(session_params session_paramsVar, save_state_flags_t save_state_flags_tVar) {
        return new byte_vector(libtorrent_jni.session_params_write_session_params_buf__SWIG_0(getCPtr(session_paramsVar), session_paramsVar, save_state_flags_t.getCPtr(save_state_flags_tVar), save_state_flags_tVar), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_session_params(j);
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

    public dht_state getDht_state() {
        long jSession_params_dht_state_get = libtorrent_jni.session_params_dht_state_get(this.swigCPtr, this);
        if (jSession_params_dht_state_get == 0) {
            return null;
        }
        return new dht_state(jSession_params_dht_state_get, false);
    }

    public string_string_map getExt_state() {
        long jSession_params_ext_state_get = libtorrent_jni.session_params_ext_state_get(this.swigCPtr, this);
        if (jSession_params_ext_state_get == 0) {
            return null;
        }
        return new string_string_map(jSession_params_ext_state_get, false);
    }

    public session_flags_t getFlags() {
        long jSession_params_flags_get = libtorrent_jni.session_params_flags_get(this.swigCPtr, this);
        if (jSession_params_flags_get == 0) {
            return null;
        }
        return new session_flags_t(jSession_params_flags_get, false);
    }

    public ip_filter getIp_filter() {
        long jSession_params_ip_filter_get = libtorrent_jni.session_params_ip_filter_get(this.swigCPtr, this);
        if (jSession_params_ip_filter_get == 0) {
            return null;
        }
        return new ip_filter(jSession_params_ip_filter_get, false);
    }

    public settings_pack getSettings() {
        long jSession_params_settings_get = libtorrent_jni.session_params_settings_get(this.swigCPtr, this);
        if (jSession_params_settings_get == 0) {
            return null;
        }
        return new settings_pack(jSession_params_settings_get, false);
    }

    public void setDht_state(dht_state dht_stateVar) {
        libtorrent_jni.session_params_dht_state_set(this.swigCPtr, this, dht_state.getCPtr(dht_stateVar), dht_stateVar);
    }

    public void setExt_state(string_string_map string_string_mapVar) {
        libtorrent_jni.session_params_ext_state_set(this.swigCPtr, this, string_string_map.getCPtr(string_string_mapVar), string_string_mapVar);
    }

    public void setFlags(session_flags_t session_flags_tVar) {
        libtorrent_jni.session_params_flags_set(this.swigCPtr, this, session_flags_t.getCPtr(session_flags_tVar), session_flags_tVar);
    }

    public void setIp_filter(ip_filter ip_filterVar) {
        libtorrent_jni.session_params_ip_filter_set(this.swigCPtr, this, ip_filter.getCPtr(ip_filterVar), ip_filterVar);
    }

    public void setSettings(settings_pack settings_packVar) {
        libtorrent_jni.session_params_settings_set(this.swigCPtr, this, settings_pack.getCPtr(settings_packVar), settings_packVar);
    }

    public void set_default_disk_io_constructor() {
        libtorrent_jni.session_params_set_default_disk_io_constructor(this.swigCPtr, this);
    }

    public void set_posix_disk_io_constructor() {
        libtorrent_jni.session_params_set_posix_disk_io_constructor(this.swigCPtr, this);
    }

    public static session_params read_session_params(bdecode_node bdecode_nodeVar) {
        return new session_params(libtorrent_jni.session_params_read_session_params__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar), true);
    }

    public static entry write_session_params(session_params session_paramsVar) {
        return new entry(libtorrent_jni.session_params_write_session_params__SWIG_1(getCPtr(session_paramsVar), session_paramsVar), true);
    }

    public static byte_vector write_session_params_buf(session_params session_paramsVar) {
        return new byte_vector(libtorrent_jni.session_params_write_session_params_buf__SWIG_1(getCPtr(session_paramsVar), session_paramsVar), true);
    }

    public session_params(settings_pack settings_packVar) {
        this(libtorrent_jni.new_session_params__SWIG_0(settings_pack.getCPtr(settings_packVar), settings_packVar), true);
    }

    public session_params() {
        this(libtorrent_jni.new_session_params__SWIG_1(), true);
    }

    public session_params(session_params session_paramsVar) {
        this(libtorrent_jni.new_session_params__SWIG_2(getCPtr(session_paramsVar), session_paramsVar), true);
    }
}

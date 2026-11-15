package org.libtorrent4j.swig;

public class announce_entry {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public announce_entry(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(announce_entry announce_entryVar) {
        if (announce_entryVar == null) {
            return 0L;
        }
        return announce_entryVar.swigCPtr;
    }

    public static long swigRelease(announce_entry announce_entryVar) {
        if (announce_entryVar == null) {
            return 0L;
        }
        if (!announce_entryVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = announce_entryVar.swigCPtr;
        announce_entryVar.swigCMemOwn = false;
        announce_entryVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_announce_entry(j);
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

    public announce_endpoint_vector getEndpoints() {
        long jAnnounce_entry_endpoints_get = libtorrent_jni.announce_entry_endpoints_get(this.swigCPtr, this);
        if (jAnnounce_entry_endpoints_get == 0) {
            return null;
        }
        return new announce_endpoint_vector(jAnnounce_entry_endpoints_get, false);
    }

    public short getFail_limit() {
        return libtorrent_jni.announce_entry_fail_limit_get(this.swigCPtr, this);
    }

    public short getSource() {
        return libtorrent_jni.announce_entry_source_get(this.swigCPtr, this);
    }

    public short getTier() {
        return libtorrent_jni.announce_entry_tier_get(this.swigCPtr, this);
    }

    public String getTrackerid() {
        return libtorrent_jni.announce_entry_trackerid_get(this.swigCPtr, this);
    }

    public String getUrl() {
        return libtorrent_jni.announce_entry_url_get(this.swigCPtr, this);
    }

    public boolean getVerified() {
        return libtorrent_jni.announce_entry_verified_get(this.swigCPtr, this);
    }

    public void setEndpoints(announce_endpoint_vector announce_endpoint_vectorVar) {
        libtorrent_jni.announce_entry_endpoints_set(this.swigCPtr, this, announce_endpoint_vector.getCPtr(announce_endpoint_vectorVar), announce_endpoint_vectorVar);
    }

    public void setFail_limit(short s) {
        libtorrent_jni.announce_entry_fail_limit_set(this.swigCPtr, this, s);
    }

    public void setSource(short s) {
        libtorrent_jni.announce_entry_source_set(this.swigCPtr, this, s);
    }

    public void setTier(short s) {
        libtorrent_jni.announce_entry_tier_set(this.swigCPtr, this, s);
    }

    public void setTrackerid(String str) {
        libtorrent_jni.announce_entry_trackerid_set(this.swigCPtr, this, str);
    }

    public void setUrl(String str) {
        libtorrent_jni.announce_entry_url_set(this.swigCPtr, this, str);
    }

    public void setVerified(boolean z) {
        libtorrent_jni.announce_entry_verified_set(this.swigCPtr, this, z);
    }

    public static final class tracker_source {
        public static final tracker_source source_client;
        public static final tracker_source source_magnet_link;
        public static final tracker_source source_tex;
        public static final tracker_source source_torrent;
        private static int swigNext;
        private static tracker_source[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            tracker_source tracker_sourceVar = new tracker_source("source_torrent", libtorrent_jni.announce_entry_source_torrent_get());
            source_torrent = tracker_sourceVar;
            tracker_source tracker_sourceVar2 = new tracker_source("source_client", libtorrent_jni.announce_entry_source_client_get());
            source_client = tracker_sourceVar2;
            tracker_source tracker_sourceVar3 = new tracker_source("source_magnet_link", libtorrent_jni.announce_entry_source_magnet_link_get());
            source_magnet_link = tracker_sourceVar3;
            tracker_source tracker_sourceVar4 = new tracker_source("source_tex", libtorrent_jni.announce_entry_source_tex_get());
            source_tex = tracker_sourceVar4;
            swigValues = new tracker_source[]{tracker_sourceVar, tracker_sourceVar2, tracker_sourceVar3, tracker_sourceVar4};
            swigNext = 0;
        }

        private tracker_source(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static tracker_source swigToEnum(int i) {
            tracker_source[] tracker_sourceVarArr = swigValues;
            if (i < tracker_sourceVarArr.length && i >= 0) {
                tracker_source tracker_sourceVar = tracker_sourceVarArr[i];
                if (tracker_sourceVar.swigValue == i) {
                    return tracker_sourceVar;
                }
            }
            int i2 = 0;
            while (true) {
                tracker_source[] tracker_sourceVarArr2 = swigValues;
                if (i2 >= tracker_sourceVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + tracker_source.class + " with value " + i);
                }
                tracker_source tracker_sourceVar2 = tracker_sourceVarArr2[i2];
                if (tracker_sourceVar2.swigValue == i) {
                    return tracker_sourceVar2;
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

        private tracker_source(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private tracker_source(String str, tracker_source tracker_sourceVar) {
            this.swigName = str;
            int i = tracker_sourceVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public announce_entry() {
        this(libtorrent_jni.new_announce_entry__SWIG_0(), true);
    }

    public announce_entry(announce_entry announce_entryVar) {
        this(libtorrent_jni.new_announce_entry__SWIG_1(getCPtr(announce_entryVar), announce_entryVar), true);
    }

    public announce_entry(String str) {
        this(libtorrent_jni.new_announce_entry__SWIG_2(str), true);
    }
}

package org.libtorrent4j.swig;

public class announce_infohash {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public announce_infohash(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(announce_infohash announce_infohashVar) {
        if (announce_infohashVar == null) {
            return 0L;
        }
        return announce_infohashVar.swigCPtr;
    }

    public static long swigRelease(announce_infohash announce_infohashVar) {
        if (announce_infohashVar == null) {
            return 0L;
        }
        if (!announce_infohashVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = announce_infohashVar.swigCPtr;
        announce_infohashVar.swigCMemOwn = false;
        announce_infohashVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_announce_infohash(j);
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

    public boolean getComplete_sent() {
        return libtorrent_jni.announce_infohash_complete_sent_get(this.swigCPtr, this);
    }

    public short getFails() {
        return libtorrent_jni.announce_infohash_fails_get(this.swigCPtr, this);
    }

    public error_code getLast_error() {
        long jAnnounce_infohash_last_error_get = libtorrent_jni.announce_infohash_last_error_get(this.swigCPtr, this);
        if (jAnnounce_infohash_last_error_get == 0) {
            return null;
        }
        return new error_code(jAnnounce_infohash_last_error_get, false);
    }

    public String getMessage() {
        return libtorrent_jni.announce_infohash_message_get(this.swigCPtr, this);
    }

    public int getScrape_complete() {
        return libtorrent_jni.announce_infohash_scrape_complete_get(this.swigCPtr, this);
    }

    public int getScrape_downloaded() {
        return libtorrent_jni.announce_infohash_scrape_downloaded_get(this.swigCPtr, this);
    }

    public int getScrape_incomplete() {
        return libtorrent_jni.announce_infohash_scrape_incomplete_get(this.swigCPtr, this);
    }

    public boolean getStart_sent() {
        return libtorrent_jni.announce_infohash_start_sent_get(this.swigCPtr, this);
    }

    public boolean getTriggered_manually() {
        return libtorrent_jni.announce_infohash_triggered_manually_get(this.swigCPtr, this);
    }

    public boolean getUpdating() {
        return libtorrent_jni.announce_infohash_updating_get(this.swigCPtr, this);
    }

    public long get_min_announce() {
        return libtorrent_jni.announce_infohash_get_min_announce(this.swigCPtr, this);
    }

    public long get_next_announce() {
        return libtorrent_jni.announce_infohash_get_next_announce(this.swigCPtr, this);
    }

    public void setComplete_sent(boolean z) {
        libtorrent_jni.announce_infohash_complete_sent_set(this.swigCPtr, this, z);
    }

    public void setFails(short s) {
        libtorrent_jni.announce_infohash_fails_set(this.swigCPtr, this, s);
    }

    public void setLast_error(error_code error_codeVar) {
        libtorrent_jni.announce_infohash_last_error_set(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public void setMessage(String str) {
        libtorrent_jni.announce_infohash_message_set(this.swigCPtr, this, str);
    }

    public void setScrape_complete(int i) {
        libtorrent_jni.announce_infohash_scrape_complete_set(this.swigCPtr, this, i);
    }

    public void setScrape_downloaded(int i) {
        libtorrent_jni.announce_infohash_scrape_downloaded_set(this.swigCPtr, this, i);
    }

    public void setScrape_incomplete(int i) {
        libtorrent_jni.announce_infohash_scrape_incomplete_set(this.swigCPtr, this, i);
    }

    public void setStart_sent(boolean z) {
        libtorrent_jni.announce_infohash_start_sent_set(this.swigCPtr, this, z);
    }

    public void setTriggered_manually(boolean z) {
        libtorrent_jni.announce_infohash_triggered_manually_set(this.swigCPtr, this, z);
    }

    public void setUpdating(boolean z) {
        libtorrent_jni.announce_infohash_updating_set(this.swigCPtr, this, z);
    }
}

package org.libtorrent4j.swig;

public class settings_interface {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public settings_interface(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(settings_interface settings_interfaceVar) {
        if (settings_interfaceVar == null) {
            return 0L;
        }
        return settings_interfaceVar.swigCPtr;
    }

    public static long swigRelease(settings_interface settings_interfaceVar) {
        if (settings_interfaceVar == null) {
            return 0L;
        }
        if (!settings_interfaceVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = settings_interfaceVar.swigCPtr;
        settings_interfaceVar.swigCMemOwn = false;
        settings_interfaceVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            if (this.swigCPtr != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    throw new UnsupportedOperationException("C++ destructor does not have public access");
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean get_bool(int i) {
        return libtorrent_jni.settings_interface_get_bool(this.swigCPtr, this, i);
    }

    public int get_int(int i) {
        return libtorrent_jni.settings_interface_get_int(this.swigCPtr, this, i);
    }

    public String get_str(int i) {
        return libtorrent_jni.settings_interface_get_str(this.swigCPtr, this, i);
    }

    public boolean has_val(int i) {
        return libtorrent_jni.settings_interface_has_val(this.swigCPtr, this, i);
    }

    public void set_bool(int i, boolean z) {
        libtorrent_jni.settings_interface_set_bool(this.swigCPtr, this, i, z);
    }

    public void set_int(int i, int i2) {
        libtorrent_jni.settings_interface_set_int(this.swigCPtr, this, i, i2);
    }

    public void set_str(int i, String str) {
        libtorrent_jni.settings_interface_set_str(this.swigCPtr, this, i, str);
    }
}

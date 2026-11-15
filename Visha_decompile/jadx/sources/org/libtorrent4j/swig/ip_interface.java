package org.libtorrent4j.swig;

public class ip_interface {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ip_interface(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ip_interface ip_interfaceVar) {
        if (ip_interfaceVar == null) {
            return 0L;
        }
        return ip_interfaceVar.swigCPtr;
    }

    public static long swigRelease(ip_interface ip_interfaceVar) {
        if (ip_interfaceVar == null) {
            return 0L;
        }
        if (!ip_interfaceVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = ip_interfaceVar.swigCPtr;
        ip_interfaceVar.swigCMemOwn = false;
        ip_interfaceVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_ip_interface(j);
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

    public byte_vector getDescription() {
        long jIp_interface_description_get = libtorrent_jni.ip_interface_description_get(this.swigCPtr, this);
        if (jIp_interface_description_get == 0) {
            return null;
        }
        return new byte_vector(jIp_interface_description_get, false);
    }

    public byte_vector getFriendly_name() {
        long jIp_interface_friendly_name_get = libtorrent_jni.ip_interface_friendly_name_get(this.swigCPtr, this);
        if (jIp_interface_friendly_name_get == 0) {
            return null;
        }
        return new byte_vector(jIp_interface_friendly_name_get, false);
    }

    public address getInterface_address() {
        long jIp_interface_interface_address_get = libtorrent_jni.ip_interface_interface_address_get(this.swigCPtr, this);
        if (jIp_interface_interface_address_get == 0) {
            return null;
        }
        return new address(jIp_interface_interface_address_get, false);
    }

    public byte_vector getName() {
        long jIp_interface_name_get = libtorrent_jni.ip_interface_name_get(this.swigCPtr, this);
        if (jIp_interface_name_get == 0) {
            return null;
        }
        return new byte_vector(jIp_interface_name_get, false);
    }

    public address getNetmask() {
        long jIp_interface_netmask_get = libtorrent_jni.ip_interface_netmask_get(this.swigCPtr, this);
        if (jIp_interface_netmask_get == 0) {
            return null;
        }
        return new address(jIp_interface_netmask_get, false);
    }

    public boolean getPreferred() {
        return libtorrent_jni.ip_interface_preferred_get(this.swigCPtr, this);
    }

    public void setDescription(byte_vector byte_vectorVar) {
        libtorrent_jni.ip_interface_description_set(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void setFriendly_name(byte_vector byte_vectorVar) {
        libtorrent_jni.ip_interface_friendly_name_set(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void setInterface_address(address addressVar) {
        libtorrent_jni.ip_interface_interface_address_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public void setName(byte_vector byte_vectorVar) {
        libtorrent_jni.ip_interface_name_set(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void setNetmask(address addressVar) {
        libtorrent_jni.ip_interface_netmask_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public void setPreferred(boolean z) {
        libtorrent_jni.ip_interface_preferred_set(this.swigCPtr, this, z);
    }

    public ip_interface() {
        this(libtorrent_jni.new_ip_interface(), true);
    }
}

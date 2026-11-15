package org.libtorrent4j.swig;

public class ip_route {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ip_route(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ip_route ip_routeVar) {
        if (ip_routeVar == null) {
            return 0L;
        }
        return ip_routeVar.swigCPtr;
    }

    public static long swigRelease(ip_route ip_routeVar) {
        if (ip_routeVar == null) {
            return 0L;
        }
        if (!ip_routeVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = ip_routeVar.swigCPtr;
        ip_routeVar.swigCMemOwn = false;
        ip_routeVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_ip_route(j);
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

    public address getDestination() {
        long jIp_route_destination_get = libtorrent_jni.ip_route_destination_get(this.swigCPtr, this);
        if (jIp_route_destination_get == 0) {
            return null;
        }
        return new address(jIp_route_destination_get, false);
    }

    public address getGateway() {
        long jIp_route_gateway_get = libtorrent_jni.ip_route_gateway_get(this.swigCPtr, this);
        if (jIp_route_gateway_get == 0) {
            return null;
        }
        return new address(jIp_route_gateway_get, false);
    }

    public int getMtu() {
        return libtorrent_jni.ip_route_mtu_get(this.swigCPtr, this);
    }

    public byte_vector getName() {
        long jIp_route_name_get = libtorrent_jni.ip_route_name_get(this.swigCPtr, this);
        if (jIp_route_name_get == 0) {
            return null;
        }
        return new byte_vector(jIp_route_name_get, false);
    }

    public address getNetmask() {
        long jIp_route_netmask_get = libtorrent_jni.ip_route_netmask_get(this.swigCPtr, this);
        if (jIp_route_netmask_get == 0) {
            return null;
        }
        return new address(jIp_route_netmask_get, false);
    }

    public address getSource_hint() {
        long jIp_route_source_hint_get = libtorrent_jni.ip_route_source_hint_get(this.swigCPtr, this);
        if (jIp_route_source_hint_get == 0) {
            return null;
        }
        return new address(jIp_route_source_hint_get, false);
    }

    public void setDestination(address addressVar) {
        libtorrent_jni.ip_route_destination_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public void setGateway(address addressVar) {
        libtorrent_jni.ip_route_gateway_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public void setMtu(int i) {
        libtorrent_jni.ip_route_mtu_set(this.swigCPtr, this, i);
    }

    public void setName(byte_vector byte_vectorVar) {
        libtorrent_jni.ip_route_name_set(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void setNetmask(address addressVar) {
        libtorrent_jni.ip_route_netmask_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public void setSource_hint(address addressVar) {
        libtorrent_jni.ip_route_source_hint_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public ip_route() {
        this(libtorrent_jni.new_ip_route(), true);
    }
}

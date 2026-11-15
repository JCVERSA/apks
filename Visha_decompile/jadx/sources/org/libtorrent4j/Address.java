package org.libtorrent4j;

import org.libtorrent4j.swig.address;
import org.libtorrent4j.swig.error_code;

public final class Address extends SwigObject<address> implements Comparable<Address> {
    public Address(address addressVar) {
        super(addressVar);
    }

    public static Address parseIp(String str) {
        error_code error_codeVar = new error_code();
        address addressVarFrom_string = address.from_string(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            return new Address(addressVarFrom_string);
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Address copy() {
        return new Address(new address((address) this.h));
    }

    public boolean equals(Object obj) {
        return (obj instanceof Address) && compareTo((Address) obj) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        return ((address) this.h).hash_code();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isLoopback() {
        return ((address) this.h).is_loopback();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isMulticast() {
        return ((address) this.h).is_multicast();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isUnspecified() {
        return ((address) this.h).is_unspecified();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isV4() {
        return ((address) this.h).is_v4();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isV6() {
        return ((address) this.h).is_v6();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        return ((address) this.h).to_string();
    }

    public Address() {
        this(new address());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int compareTo(Address address) {
        return address.compare((address) this.h, (address) address.h);
    }
}

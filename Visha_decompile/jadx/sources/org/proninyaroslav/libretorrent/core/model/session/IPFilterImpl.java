package org.proninyaroslav.libretorrent.core.model.session;

import androidx.annotation.NonNull;
import org.libtorrent4j.swig.address;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.ip_filter;
import org.proninyaroslav.libretorrent.core.exception.IPFilterException;

class IPFilterImpl implements IPFilter {
    private ip_filter filter = new ip_filter();

    @Override
    public void addRange(@NonNull String str, @NonNull String str2) throws IPFilterException {
        address addressVarFrom_string;
        error_code error_codeVar = new error_code();
        address addressVarFrom_string2 = address.from_string(str, error_codeVar);
        if (error_codeVar.value() > 0) {
            throw new IPFilterException("Invalid first IP in range: " + str);
        }
        error_codeVar.clear();
        if (str.equals(str2)) {
            addressVarFrom_string = addressVarFrom_string2;
        } else {
            addressVarFrom_string = address.from_string(str2, error_codeVar);
            if (error_codeVar.value() > 0) {
                throw new IPFilterException("Invalid last IP in range: " + str2);
            }
            if (addressVarFrom_string2.is_v4() != addressVarFrom_string.is_v4() || addressVarFrom_string2.is_v6() != addressVarFrom_string.is_v6()) {
                throw new IPFilterException("IP range is malformed. One IP is IPv6 and the other is IPv4!");
            }
        }
        this.filter.add_rule(addressVarFrom_string2, addressVarFrom_string, ip_filter.access_flags.blocked.swigValue());
    }

    public ip_filter getFilter() {
        return this.filter;
    }
}

package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.ip_interface;
import org.libtorrent4j.swig.ip_interface_vector;
import org.libtorrent4j.swig.ip_route;
import org.libtorrent4j.swig.ip_route_vector;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.session;

public final class EnumNet {

    public static final class IpInterface {
        private final String description;
        private final String friendlyName;
        private final Address interfaceAddress;
        private final String name;
        private final Address netmask;
        private final boolean preferred;

        public IpInterface(ip_interface ip_interfaceVar) {
            this.interfaceAddress = new Address(ip_interfaceVar.getInterface_address());
            this.netmask = new Address(ip_interfaceVar.getNetmask());
            this.name = Vectors.byte_vector2ascii(ip_interfaceVar.getName());
            this.friendlyName = Vectors.byte_vector2ascii(ip_interfaceVar.getFriendly_name());
            this.description = Vectors.byte_vector2ascii(ip_interfaceVar.getDescription());
            this.preferred = ip_interfaceVar.getPreferred();
        }

        public String description() {
            return this.description;
        }

        public String friendlyName() {
            return this.friendlyName;
        }

        public Address interfaceAddress() {
            return this.interfaceAddress;
        }

        public String name() {
            return this.name;
        }

        public Address netmask() {
            return this.netmask;
        }

        public boolean preferred() {
            return this.preferred;
        }

        public String toString() {
            return "address: " + this.interfaceAddress + ", netmask: " + this.netmask + ", name: " + this.name + ", friendlyName: " + this.friendlyName + ", description: " + this.description + ", preferred: " + this.preferred;
        }

        public ip_interface toSwig() {
            ip_interface ip_interfaceVar = new ip_interface();
            ip_interfaceVar.setInterface_address(this.interfaceAddress.swig());
            ip_interfaceVar.setNetmask(this.netmask.swig());
            ip_interfaceVar.setName(Vectors.ascii2byte_vector(this.name));
            ip_interfaceVar.setFriendly_name(Vectors.ascii2byte_vector(this.friendlyName));
            ip_interfaceVar.setDescription(Vectors.ascii2byte_vector(this.description));
            ip_interfaceVar.setPreferred(this.preferred);
            return ip_interfaceVar;
        }
    }

    public static final class IpRoute {
        private final Address destination;
        private final Address gateway;
        private final int mtu;
        private final String name;
        private final Address netmask;
        private final Address sourceHint;

        public IpRoute(ip_route ip_routeVar) {
            this.destination = new Address(ip_routeVar.getDestination());
            this.netmask = new Address(ip_routeVar.getNetmask());
            this.gateway = new Address(ip_routeVar.getGateway());
            this.sourceHint = new Address(ip_routeVar.getSource_hint());
            this.name = Vectors.byte_vector2ascii(ip_routeVar.getName());
            this.mtu = ip_routeVar.getMtu();
        }

        public Address destination() {
            return this.destination;
        }

        public Address gateway() {
            return this.gateway;
        }

        public int mtu() {
            return this.mtu;
        }

        public String name() {
            return this.name;
        }

        public Address netmask() {
            return this.netmask;
        }

        public Address sourceHint() {
            return this.sourceHint;
        }

        public String toString() {
            return "destination: " + this.destination + ", netmask: " + this.netmask + ", gateway: " + this.gateway + ", name: " + this.name + ", mtu: " + this.mtu;
        }

        public ip_route toSwig() {
            ip_route ip_routeVar = new ip_route();
            ip_routeVar.setDestination(this.destination.swig());
            ip_routeVar.setNetmask(this.netmask.swig());
            ip_routeVar.setGateway(this.gateway.swig());
            ip_routeVar.setSource_hint(this.sourceHint.swig());
            ip_routeVar.setName(Vectors.ascii2byte_vector(this.name));
            ip_routeVar.setMtu(this.mtu);
            return ip_routeVar;
        }
    }

    private EnumNet() {
    }

    public static String deviceForAddress(session sessionVar, Address address) {
        error_code error_codeVar = new error_code();
        String strDevice_for_address = libtorrent.device_for_address(sessionVar, address.swig(), error_codeVar);
        if (error_codeVar.value() == 0) {
            return strDevice_for_address;
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }

    public static List<IpInterface> enumInterfaces(session sessionVar) {
        ip_interface_vector ip_interface_vectorVarEnum_net_interfaces = libtorrent.enum_net_interfaces(sessionVar);
        ArrayList arrayList = new ArrayList(ip_interface_vectorVarEnum_net_interfaces.size());
        Iterator<ip_interface> it = ip_interface_vectorVarEnum_net_interfaces.iterator();
        while (it.hasNext()) {
            arrayList.add(new IpInterface(it.next()));
        }
        return arrayList;
    }

    public static List<IpRoute> enumRoutes(session sessionVar) {
        ip_route_vector ip_route_vectorVarEnum_routes = libtorrent.enum_routes(sessionVar);
        ArrayList arrayList = new ArrayList(ip_route_vectorVarEnum_routes.size());
        Iterator<ip_route> it = ip_route_vectorVarEnum_routes.iterator();
        while (it.hasNext()) {
            arrayList.add(new IpRoute(it.next()));
        }
        return arrayList;
    }

    public static Address getGateway(IpInterface ipInterface, List<IpRoute> list) {
        ip_route_vector ip_route_vectorVar = new ip_route_vector();
        Iterator<IpRoute> it = list.iterator();
        while (it.hasNext()) {
            ip_route_vectorVar.add(it.next().toSwig());
        }
        return new Address(libtorrent.get_gateway(ipInterface.toSwig(), ip_route_vectorVar));
    }
}
